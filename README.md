Compiling
=========

Compiling requires [Premake](https://premake.github.io/) to generate the project files.

`cd projects && premake5 gmake`
then
`make CFLAGS="-Wno-error=implicit-function-declaration" config=debug_x86|debug_x64|release_x86|release_x64`