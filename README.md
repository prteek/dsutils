# dsutils

A suite of utilities some borrowed and some developed for enabling data science workflow on commandline.
Usage:
1. Clone the repo (preferably to $HOME directory)
```shell
git clone https://github.com/prteek/dsutils
```

2. Change permission for files to be able to execute them
```shell
chmod -R +x ~/dsutils
```

3. Add folder to path (preferably in .zshrc or .bashrc)
```shell
export PATH="$PATH:/Users/YOURNAME/dsutils"
```

Additionally to setup your cli with more tools use *Makefile*
```shell
make all
```

For use with Dockerfile
```Dockerfile
RUN git clone https://github.com/prteek/dsutils.git /opt/program/dsutils
ENV PATH="${PATH}:/opt/program/dsutils"
RUN chmod -R +x /opt/program/dsutils
RUN make -f /opt/program/dsutils/Makefile
```

### Optionals
1. **Rush**: A one line utility for R (prerequisite R is installed). To use it add *rush* executable to path (preferably in .zshrc or .bashrc)
```shell
make -f Makefile rush
export PATH="$PATH:/usr/local/bin/"
```

2. **rayrun**: A GNU parallel like utility that parallelizes runs using Ray clusters. Useful when running parallel loops on Sagemaker and local. Needs *ray* installed.
```shell
pip install ray
```