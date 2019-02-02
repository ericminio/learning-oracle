[![Build Status](https://travis-ci.org/ericminio/learning-oracle.svg?branch=master)](https://travis-ci.org/ericminio/learning-oracle)


The image used by the tests is [ericminio/oracle:python](https://hub.docker.com/r/ericminio/oracle) built from [wnameless/oracle-xe-11g](https://hub.docker.com/r/wnameless/oracle-xe-11g), with following additions:

```
apt-get -y install python3.6 python3-distutils wget
cd /tmp
wget https://bootstrap.pypa.io/get-pip.py
python3.6 get-pip.py
echo "/u01/app/oracle/product/11.2.0/xe/lib" > /etc/ld.so.conf.d/oracle-lib.conf
ldconfig
```
