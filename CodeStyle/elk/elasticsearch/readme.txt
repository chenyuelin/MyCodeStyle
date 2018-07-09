centos7 
https://blog.csdn.net/kongxx/article/details/52993057
max file descriptors [4096] for elasticsearch process likely too low, increase to at least [65536]
/etc/security/limits.conf
cyl hard nofile 65536
cyl soft nofile 65536

max virtual memory areas vm.max_map_count [65530] likely too low, increase to at least [262144]
sysctl -w vm.max_map_count=262144
或/etc/sysctl.conf 文件，添加 “vm.max_map_count”设置
sysctl -a