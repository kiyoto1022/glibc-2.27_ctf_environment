https://github.com/kiyoto1022/glibc-2.27_ctf_environmen/workflows/Store%20Docker%20Image/badge.svg

# glibc-2.27_ctf_environment

ubuntu18.04 based analysis environment

## Use

Image build
```
git clone https://github.com/kiyoto1022/glibc-2.27_ctf_environment.git
cd glibc-2.27_ctf_environment
docker build ./ -t ctf
```

Run container
```
docker run -it ctf
```

Analysis file copy
```
docker cp <filename>  <container-id>:/sandbox
```

## Available commands
- python3
- checksec
- ldd
- nm
- one_gadget
- radare2

## Available python lib
- ptrlib
- pwntools

