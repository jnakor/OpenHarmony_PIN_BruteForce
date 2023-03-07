#include "defines.h"
#include "iam_logger.h"
// #include "parameter.h"
// #include "sysparam_errno.h"
// #include <hdf_base.h>
#include <openssl/evp.h>
#include <openssl/rand.h>
#include <securec.h>

#include "newSalt.h"

void NewSalt(std::vector<uint8_t> &salt)
{
    // IAM_LOGI("start");
    constexpr uint32_t DEVICE_UUID_LENGTH = 65;
    char localDeviceId[DEVICE_UUID_LENGTH] = {0};
    // if (GetDevUdid(localDeviceId, DEVICE_UUID_LENGTH) != EC_SUCCESS) {
    //     IAM_LOGE("GetDevUdid failed");
    //     return HDF_FAILURE;
    // }
    constexpr int RANDOM_LENGTH = 32;
    unsigned char random[RANDOM_LENGTH] = {0};
    RAND_bytes(random, (int)RANDOM_LENGTH);
    std::vector<uint8_t> sum;
    for (uint32_t i = 0; i < DEVICE_UUID_LENGTH; i++) {
        sum.push_back(localDeviceId[i]);
    }
    for (uint32_t i = 0; i < RANDOM_LENGTH; i++) {
        sum.push_back(random[i]);
    }
    const EVP_MD *alg = EVP_sha256();
    printf("pass\n");
    constexpr uint32_t SHA256_LENGTH = 32;
    uint8_t result[SHA256_LENGTH] = {0};
    uint32_t size = 0;
    EVP_Digest(sum.data(), sum.size(), result, &size, alg, NULL);
    for (uint32_t i = 0; i < size; i++) {
        salt.push_back(result[i]);
    }
    // IAM_LOGI("result size is : [%{public}u]", size);
}