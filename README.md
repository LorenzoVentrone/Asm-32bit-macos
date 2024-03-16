# Asm-32bit-macos
This repository contains a Dockerfile and associated scripts to build a Docker container specifically designed for Intel macOS 32 bit assembly language development. This Docker container is not compatible with ARM-based macOS systems.

## Requirements
* Docker Desktop installed on an Intel-based macOS system
* Text editor or Integrated Development Environment (IDE) for coding (Suggest VSC to build and run Container)

## Build and Run
_Navigate into Dockerfile's directory and follow next steps_

```
build -t asm-32bit-macos .
```
```
run -d -it asm-32bit-macos
```
After that, first of all update apt: `apt update` , and you need other packages:
*  *Build-essentials packages* : `apt install -y build-essential`
*  *gcc-multilib* : `apt-get install gcc-multilib`

## Optional
### GDB setup
Usefull tool to debug ASM code, all you need is a text editor:
Suggest nano : `apt install nano`
*Following istruction was taken from https://season-lab.github.io/SC/training/tools/gdb* 
+ Open nano `$ nano ~/.gdbinit`
+ Copy paste following code
```
define go
    start
    layout src
    layout regs
    focus cmd
end
```
+ Save and exit
That allows you to use the "go" command and visualize source and registers.


