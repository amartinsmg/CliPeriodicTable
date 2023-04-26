# This Makefile has four targets: all, dir, database, program, and clean.

# Variables 
# Include: specify the directories where the header files are located.
# LibSQLite_path: specify the directories where the libraries for SQLite are located.

# Targets
# all: execute the database target and then the program target.
# dir: create the build directory if it doesn't already exist.
# database: executes the createdb.sql script using the sqlite3 command-line utility. The resulting database file is saved in the "build" directory.
# program: compiles the program.c file and links it with the SQLite library. The resulting executable file is saved in the "build" directory.
# clean: removes all files in the "build" directory.



Include=-I"include"
LibSQLite_path=-L"libs"


all: database program

dir:
	[ -d build ] || mkdir build

database: dir clean
	sqlite3 build/database.db < src/createdb.sql

program: dir clean
	gcc -o build/program $(Include) $(LibSQLite_path) src/program.c -lsqlite3 

clean:
	rm -f build/*
