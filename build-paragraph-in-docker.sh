#!/bin/bash
# run me inside the Centos67 Docker image

git clone https://github.com/Illumina/paragraph.git
mkdir paragraph-build && cd paragraph-build

scl enable devtoolset-7 'bash -c cd /paragraph-build && /usr/bin/cmake ../paragraph -DBOOST_ROOT=/opt/boost/boost_install -DCMAKE_INSTALL_PREFIX=/paragraph-install'
scl enable devtoolset-7 'bash -c cd /paragraph-build && make -j2 && make -j2 install'

cd /paragraph-install
tar cf /output/paragraph.tar.gz ./*
