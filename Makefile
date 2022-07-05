all: database program
	@echo Program compiled and database created successfully

database:
	sqlite3 build/periodic.db < src/createdb.sql

program:
	gcc src/program.c -o build/program -lsqlite3

clean:
	rm -f build/*
