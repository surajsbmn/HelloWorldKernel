# HelloWorldKernel
 A simple "OS" kernel that prints "Hello World!!" to the frame buffer. OS image can be generated from sources and run inside Bochs x86 emulator.
 
 ### Dependecies for running on linux
 ```
 $ sudo apt install build-essential nasm genisoimage bochs bochs-sdl
 ```
 ### How to run
 Run the following make commands to compile sources, generate iso and run it inside emulator respectively.
 ```
 $ make all
 $ make os.iso
 $ make run
 ```
 
