all: database program
	@echo Program compiled and database created successfully

dir:
	[ -d build ] || mkdir build

database: dir
	sqlite3 build/periodic.db < src/createdb.sql

program: dir
	gcc src/program.c -o build/program -lsqlite3

clean:
	rm -f build/*
