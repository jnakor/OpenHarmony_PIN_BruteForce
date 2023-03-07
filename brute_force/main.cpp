/*************************************************
Author: jnddd
Date:2022-09-28
Description:获取密文文件情况下暴力破解OpenHarmony锁屏PIN码
**************************************************/

#include <stdio.h>
#include <unistd.h>

#include "bruteForce.h"

int main(int argc, char *argv[])
{
    int opt;
    const char *optstring = "i:t:n:"; // 设置短参数类型及是否需要参数
    uint64_t templateId = 0;
    int threadNum = 1; // 默认单线程
    int pinNum = 6;    //默认6位数
    while ((opt = getopt(argc, argv, optstring)) != -1) {
        switch (opt) {
            case 'i':
                printf("ii");
                sscanf(optarg, "%lu", &templateId);
                break;

            case 't':
                printf("tt");
                sscanf(optarg, "%d", &threadNum);
                break;
            case 'n':
                printf("nn");
                sscanf(optarg, "%d", &pinNum);
                break;
        }
    }
    BruteForce bf = BruteForce();
    bf.BF(templateId, pinNum, threadNum);
}