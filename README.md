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

Additionally to setup your cli with more tools use *dscli_setup.make*
```shell
make -f dscli_setup.make all
```
As **rush** is a critical component of ds workflow, to use it add the following to path (preferably in .zshrc or .bashrc)
```shell
export PATH="$PATH:/usr/local/bin/"
```