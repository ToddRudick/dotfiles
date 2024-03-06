#!/bin/bash

gdb -batch -ex "file $1" -ex "disassemble /s $2" -ex 'quit';

