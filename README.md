# Cli Periodic Table

This is a personal project for a command line interface periodic table. It is made with C and uses a SQLite database to store elements' data.

The periodic table contains the chemical elements' data, like name, symbol, atomic number, atomic mass, density, melting point, and boiling point. It is useful in chemistry, physics, and other sciences.

## Installation

Before running the program, make sure you have the following dependencies installed on your system:

- [GNU Make](https://www.gnu.org/software/make/)
- [GNU C Compiler (gcc)](https://gcc.gnu.org/)
- [SQLite3](https://www.sqlite.org/index.html)

## Usage

To compile the program and create the SQLite3 database, follow these steps:

- Clone the repository or download the code
- Open the terminal and navigate to the project directory
- Open the Makefile and verify the values of these variables: 'Include' for the location of the SQLite header files and 'LibSQLite_path' for the location of the SQLite object files library.
- Run the command `make`.

After successfully running this command, the program will be compiled and the SQLite database will be created in the 'build' directory.

## Contributing

Feel free to contribute to the project by opening an issue or a pull request. All contributions are welcome!

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE.md) file for details.
