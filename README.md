# zramswap
 为linux系统开启zramswap交换分区.特别是树莓派等小内存设备建议开启.

优点

* 保护ssd
* 现在cpu运算性能过剩,用cpu运算换内存使用率



## 使用方法

```shell
sudo ./install.sh
```


## 配置文件说明

/etc/zramswap.conf

```shell
ZRAM_SIZE_PERCENT=20   # zram占用总内存比例 ,默认是20%
ZRAM_COMPRESSION_ALGO=lz4 # zram 算法, 默认是lz4
```



ZRAM_SIZE_PERCENT 默认单位是GB,如8G总内存,那么 8G*20% = 1.6G ,zram交换分区