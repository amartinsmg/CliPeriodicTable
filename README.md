# PeriodicTable

This is a personal project for a command line interface periodic table. It is made in C and uses a SQLite database to store elements' data.

The periodic table contains the chemical elements' data, like name, symbol, atomic number, atomic mass, density, melting point, and boiling point. It is useful in chemistry, physics, and other sciences.

To compile the program and create the SQLite3 database, you can use this command:

```sh
make
```

<sub>**Note**: Before runing this command, make sure you have installed [GNU Make](https://www.gnu.org/software/make/), [GNU C Compiler](https://gcc.gnu.org/) and [SQLite3](https://www.sqlite.org/index.html). Then open the [Makefile](./Makefile) and verify if the variables Include and LibSQLite_path store, respectively, the actual location of the [SQLite header files](https://www.sqlite.org/2022/sqlite-amalgamation-3390200.zip) and the location of the [SQLite object files library](https://www.sqlite.org/download.html).</sub>
