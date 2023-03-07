// #include "adaptor_algorithm.h"
// #include "newSalt.h"
// #include "pin_auth.h"
// #include "pin_db.h"
// #include "pin_func.h"
// #include "scrypt.h"
// #include "securec.h"
// #include <iostream>
// int main()
// {
//     // 传入明文

//     std::vector<uint8_t> salt;
//     std::cout << salt.size() << std::endl;
//     NewSalt(salt);
//     std::cout << salt.size() << std::endl;

//     std::vector<uint8_t> data;
//     data.push_back(1);
//     data.push_back(2);
//     data.push_back(3);
//     std::cout << data.size() << std::endl;

//     OHOS::UserIam::PinAuth::Scrypt scrypter = OHOS::UserIam::PinAuth::Scrypt(salt);
//     std::vector<uint8_t> scryptData = scrypter.GetScrypt(data);
//     for (int i = 0; i < int(scryptData.size()); i++) {
//         std::cout << int(scryptData[i]) << std::endl;
//     }
//     std::cout << scryptData.size() << std::endl;

//     uint64_t templateId = 999;
//     PinEnrollParam *pinEnrollParam = new (std::nothrow) PinEnrollParam();
//     pinEnrollParam->scheduleId = 0;
//     pinEnrollParam->subType = 0;
//     if (memcpy_s(&(pinEnrollParam->salt[0]), CONST_SALT_LEN, &salt[0], CONST_SALT_LEN) != EOK) {
//         LOG_ERROR("copy salt to pinEnrollParam fail!");
//         return RESULT_GENERAL_ERROR;
//     }
//     if (memcpy_s(&(pinEnrollParam->pinData[0]), CONST_PIN_DATA_LEN, &scryptData[0], CONST_PIN_DATA_LEN) != EOK) {
//         LOG_ERROR("copy pinData to pinEnrollParam fail!");
//         return RESULT_GENERAL_ERROR;
//     }
//     Buffer *rootSecret = CreateBufferBySize(ROOT_SECRET_LEN);
//     if (!IsBufferValid(rootSecret)) {
//         LOG_ERROR("no memory.");
//         return RESULT_BAD_PARAM;
//     }
//     AddPin(pinEnrollParam, &templateId, rootSecret);
// }