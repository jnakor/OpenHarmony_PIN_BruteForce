在获取密文的情况下暴力破解OpenHarmony锁屏PIN码的小程序

密文文件请放置在本项目的根目录，破解得到的PIN码将被写入result.txt

选项

       -i
           templateId

       -t
           线程数（默认单线程）

       -n
           PIN码数字个数（默认六位）

使用示例
    ./build/iam_test -i 4669965600413547874 -t 8 -n 6
