# Paragraph build helper for Centos

This repository contains some helper scripts to produce a
paragraph binary for Centos using Docker.

To build a paragraph tarball, run:

```bash
./build-paragraph.sh
```

(when on Linux / if Docker requires root privileges, run with sudo).

This will

* build a Docker image which includes all dependencies for building paragraph
* produce a binary tarball with a compiled version that will run on Centos 6.7

To deploy on your Centos 6.7 system, run the following commands:

```bash
#cp paragraph.tar.gz ${HOME}
mkdir ${HOME}/paragraph && cd ${HOME}/paragraph && tar xf ${HOME}/paragraph.tar.gz
#rm -f ${HOME}/paragraph.tar.gz
```

You will need a Python 3 environment which has all of paragraph's dependencies
installed. One way to get this is by getting Miniconda as follows:

```bash
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
bash Miniconda3-latest-Linux-x86_64.sh -b -p ${HOME}/miniconda3
export PATH=${HOME}/miniconda3/bin:${PATH}

conda config --add channels bioconda
conda install -y cython numpy scipy matplotlib pandas pysam nose mock pep8 pylint
python3 -mpip install intervaltree
```
