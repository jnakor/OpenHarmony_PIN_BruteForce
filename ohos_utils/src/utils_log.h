/*
 * Copyright (c) 2021 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#ifndef UTILS_BASE_LOG_H
#define UTILS_BASE_LOG_H

#include "hilog/log.h"

using namespace OHOS::HiviewDFX;

static constexpr unsigned int IAM_DOMAIN_ID = 0xD002910;

#ifndef __FILE_NAME__
#define __FILE_NAME__ __FILE__
#endif

#ifdef LOG_LABEL
#undef LOG_LABEL
#endif

static constexpr HiLogLabel LOG_LABEL = {LOG_CORE, 0xD003D00, "utils_base"};

#define ARGS(fmt, ...) "[%{public}s@%{public}s:%{public}d] " fmt, __FUNCTION__, __FILE_NAME__, __LINE__, ##__VA_ARGS__
#define UTILS_LOGD(...) HiLog::Debug(LOG_LABEL, ARGS(__VA_ARGS__))
#define UTILS_LOGI(...) HiLog::Info(LOG_LABEL, ARGS(__VA_ARGS__))
#define UTILS_LOGW(...) HiLog::Warn(LOG_LABEL, ARGS(__VA_ARGS__))
#define UTILS_LOGE(...) HiLog::Error(LOG_LABEL, ARGS(__VA_ARGS__))
#define UTILS_LOGF(...) HiLog::Fatal(LOG_LABEL, ARGS(__VA_ARGS__))

#endif  // UTILS_BASE_LOG_H
