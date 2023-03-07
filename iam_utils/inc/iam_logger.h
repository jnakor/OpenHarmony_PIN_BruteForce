
/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#ifndef IAM_LOGGER_H
#define IAM_LOGGER_H

#include "hilog/log.h"
namespace OHOS {
namespace UserIAM {
namespace Common {
#ifdef __FILE_NAME__
#define IAM_LOG_FILE __FILE_NAME__
#else
#define IAM_LOG_FILE (__builtin_strrchr(__FILE__, '/') ? __builtin_strrchr(__FILE__, '/') + 1 : __FILE__)
#endif

#ifdef LOG_LABEL
#undef LOG_LABEL
#endif

#define ARGS(fmt, ...) "[%{public}s@%{public}s:%{public}d] " fmt, __FUNCTION__, IAM_LOG_FILE, __LINE__, ##__VA_ARGS__
#define IAM_LOGD(...) OHOS::HiviewDFX::HiLog::Debug(LOG_LABEL, ARGS(__VA_ARGS__))
#define IAM_LOGI(...) OHOS::HiviewDFX::HiLog::Info(LOG_LABEL, ARGS(__VA_ARGS__))
#define IAM_LOGW(...) OHOS::HiviewDFX::HiLog::Warn(LOG_LABEL, ARGS(__VA_ARGS__))
#define IAM_LOGE(...) OHOS::HiviewDFX::HiLog::Error(LOG_LABEL, ARGS(__VA_ARGS__))
#define IAM_LOGF(...) OHOS::HiviewDFX::HiLog::Fatal(LOG_LABEL, ARGS(__VA_ARGS__))

using HiLogLabel = OHOS::HiviewDFX::HiLogLabel;

// common
static constexpr unsigned int IAM_DOMAIN_ID_COMMON = 0xD002400;
static constexpr HiLogLabel LABEL_IAM_COMMON = {LOG_CORE, IAM_DOMAIN_ID_COMMON, "IAM_COMMON"};

// user auth
static constexpr unsigned int IAM_DOMAIN_ID_USER = 0xD002421;
static constexpr HiLogLabel LABEL_USER_AUTH_NAPI = {LOG_CORE, IAM_DOMAIN_ID_USER, "USER_AUTH_NAPI"};
static constexpr HiLogLabel LABEL_USER_AUTH_SDK = {LOG_CORE, IAM_DOMAIN_ID_USER, "USER_AUTH_SDK"};
static constexpr HiLogLabel LABEL_USER_AUTH_SA = {LOG_CORE, IAM_DOMAIN_ID_USER, "USER_AUTH_SA"};
static constexpr HiLogLabel LABEL_USER_AUTH_HDI = {LOG_CORE, IAM_DOMAIN_ID_USER, "USER_AUTH_HDI"};
static constexpr HiLogLabel LABEL_USER_AUTH_EXECUTOR = {LOG_CORE, IAM_DOMAIN_ID_USER, "USER_AUTH_EXECUTOR"};

// pin
static constexpr unsigned int IAM_DOMAIN_ID_PIN = 0xD002432;
static constexpr HiLogLabel LABEL_PIN_AUTH_NAPI = {LOG_CORE, IAM_DOMAIN_ID_PIN, "PIN_AUTH_NAPI"};
static constexpr HiLogLabel LABEL_PIN_AUTH_SDK = {LOG_CORE, IAM_DOMAIN_ID_PIN, "PIN_AUTH_SDK"};
static constexpr HiLogLabel LABEL_PIN_AUTH_SA = {LOG_CORE, IAM_DOMAIN_ID_PIN, "PIN_AUTH_SA"};
static constexpr HiLogLabel LABEL_PIN_AUTH_HDI = {LOG_CORE, IAM_DOMAIN_ID_PIN, "PIN_AUTH_HDI"};
static constexpr HiLogLabel LABEL_PIN_AUTH_IMPL = {LOG_CORE, IAM_DOMAIN_ID_PIN, "PIN_AUTH_IMPL"};

// face
static constexpr unsigned int IAM_DOMAIN_ID_FACE = 0xD002422;
static constexpr HiLogLabel LABEL_FACE_AUTH_NAPI = {LOG_CORE, IAM_DOMAIN_ID_FACE, "FACE_AUTH_NAPI"};
static constexpr HiLogLabel LABEL_FACE_AUTH_SDK = {LOG_CORE, IAM_DOMAIN_ID_FACE, "FACE_AUTH_SDK"};
static constexpr HiLogLabel LABEL_FACE_AUTH_SA = {LOG_CORE, IAM_DOMAIN_ID_FACE, "FACE_AUTH_SA"};
static constexpr HiLogLabel LABEL_FACE_AUTH_HDI = {LOG_CORE, IAM_DOMAIN_ID_FACE, "FACE_AUTH_HDI"};
static constexpr HiLogLabel LABEL_FACE_AUTH_IMPL = {LOG_CORE, IAM_DOMAIN_ID_FACE, "FACE_AUTH_IMPL"};
} // namespace Common
} // namespace UserIAM
} // namespace OHOS

#endif // IAM_LOGGER_H