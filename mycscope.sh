#!/bin/bash

find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.hpp' -o -name '*.ipp' -o -name '*.s' -o -name '*.ic' -o -name '*.s'  \) -print > cscope.files
cscope -i cscope.files
