#!/bin/bash

[ -d build ] || mkdir build 
[ -e build/periodic.db ] && rm build/periodic.db
sqlite3 build/periodic.db < src/createdb.sql
[ $? == 0 ] && echo "Database created successfully"
gcc -o build/program.exe src/program.c src/sqlite3.c
[ $? == 0 ] && echo "Compiled successfully"
