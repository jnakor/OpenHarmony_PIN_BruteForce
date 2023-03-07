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

#ifndef IAM_PTR_H
#define IAM_PTR_H

#include <memory>

#include "refbase.h"

namespace OHOS {
namespace UserIAM {
namespace Common {

template <typename T>
static inline std::shared_ptr<T> SptrToStdSharedPtr(sptr<T> &other)
{
    return std::shared_ptr<T>(other.GetRefPtr(), [other](T *) mutable { other = nullptr; });
}

#define IAM_TRY(action0, action1) \
    do {                          \
        try {                     \
            action0;              \
        } catch (...) {           \
            action1;              \
        }                         \
    } while (0)

template <typename T, typename... Args>
static inline std::shared_ptr<T> MakeShared(Args &&...args)
{
#if !__has_feature(cxx_exceptions) && !defined(__cpp_exceptions) && !defined(__EXCEPTIONS)
    return std::make_shared<T>(std::forward<Args>(args)...);
#else
    IAM_TRY(return std::make_shared<T>(std::forward<Args>(args)...), return nullptr);
#endif
}

template <typename T, typename... Args>
static inline std::unique_ptr<T> MakeUnique(Args &&...args)
{
#if !__has_feature(cxx_exceptions) && !defined(__cpp_exceptions) && !defined(__EXCEPTIONS)
    return std::make_shared<T>(std::forward<Args>(args)...);
#else
    IAM_TRY(return std::make_unique<T>(std::forward<Args>(args)...), return nullptr);
#endif
}

} // namespace Common
} // namespace UserIAM
} // namespace OHOS

#endif // IAM_PTR_H