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

#include "log.h"
#include "vsnprintf_s_p.h"

#include <cstdarg>
#include <cstdio>
#include <cstring>
#include <ctime>
#include <inttypes.h>
#include <string>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>

namespace OHOS {
namespace HiviewDFX {

static char g_logLevelInfo[] = {
    'N', // "NONE"
    'N', // "NONE"
    'N', // "NONE"
    'D', // "DEBUG"
    'I', // "INFO"
    'W', // "WARN"
    'E', // "ERROR"
    'F'  // "FATAL"
};

#define SEC_TO_NANOSEC 1000000000
#define SEC_TO_MICROSEC 1000000
#define SEC_TO_MILLISEC 1000
#define MILLISEC_TO_NANOSEC 1000000
#define MILLISEC_TO_USEC 1000
#define MICROSEC_TO_NANOSEC 1000

uint64_t GetMillisecondSinceBoot(void)
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (ts.tv_sec * SEC_TO_MILLISEC + ts.tv_nsec / MILLISEC_TO_NANOSEC);
}


int HiLogPrintArgs(const LogType type, const LogLevel level, const unsigned int domain, const char *tag,
    const char *fmt, va_list ap)
{
#define MAX_LOG_LEN 1024
#define MAX_TAG_LEN 32
    int ret;
    char buf[MAX_LOG_LEN] = {0};
    char *logBuf = buf;
    ret = vsnprintfp_s(logBuf, MAX_LOG_LEN, MAX_LOG_LEN - 1, 1, fmt, ap);
    auto tid = static_cast<uint32_t>(syscall(SYS_gettid));
    printf("%" PRIu64 " %u %c %05X/%s: %s\n", GetMillisecondSinceBoot(), tid, g_logLevelInfo[level], domain, tag, buf);
    return 0;
}

extern "C" int HiLogPrint(LogType type, LogLevel level, unsigned int domain, const char *tag, const char *fmt, ...)
{
    int ret;
    va_list ap;
    va_start(ap, fmt);
    ret = HiLogPrintArgs(type, level, domain, tag, fmt, ap);
    va_end(ap);
    return ret;
}

#define HILOG_VA_ARGS_PROCESS(ret, level)                                                \
    do {                                                                                 \
        va_list args;                                                                    \
        va_start(args, fmt);                                                             \
        (ret) = HiLogPrintArgs(label.type, (level), label.domain, label.tag, fmt, args); \
        va_end(args);                                                                    \
    } while (0)

int HiLog::Debug(const HiLogLabel &label, const char *fmt, ...)
{
    int ret;
    HILOG_VA_ARGS_PROCESS(ret, LOG_DEBUG);
    return ret;
}

int HiLog::Info(const HiLogLabel &label, const char *fmt, ...)
{
    int ret;
    HILOG_VA_ARGS_PROCESS(ret, LOG_INFO);
    return ret;
}

int HiLog::Warn(const HiLogLabel &label, const char *fmt, ...)
{
    int ret;
    HILOG_VA_ARGS_PROCESS(ret, LOG_WARN);
    return ret;
}

int HiLog::Error(const HiLogLabel &label, const char *fmt, ...)
{
    int ret;
    HILOG_VA_ARGS_PROCESS(ret, LOG_ERROR);
    return ret;
}

int HiLog::Fatal(const HiLogLabel &label, const char *fmt, ...)
{
    int ret;
    HILOG_VA_ARGS_PROCESS(ret, LOG_FATAL);
    return ret;
}

} // namespace HiviewDFX
} // namespace OHOS
