all: database program

dir:
	[ -d build ] || mkdir build

database: dir
	sqlite3 build/database.db < src/createdb.sql

lib:
	[ $(OS) != "Windows_NT" ] || [ -d libs ] || \
	git clone https://github.com/azadkuh/sqlite-amalgamation.git libs

program: dir lib
	([ $(OS) == "Windows_NT" ] && \
	gcc -o build/program -Ilibs libs/sqlite3.c src/program.c) || \
	gcc src/program.c -o build/program -lsqlite3

clean:
	rm -f build/*
