Include=-I"include"
LibSQLite_path=-L"libs"

all: database program

dir:
	[ -d build ] || mkdir build

database: dir
	sqlite3 build/database.db < src/createdb.sql

program: dir
	gcc -o build/program $(Include) $(LibSQLite_path) src/program.c -lsqlite3 

clean:
	rm -f build/*
