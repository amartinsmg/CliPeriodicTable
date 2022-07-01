# PeriodicTable

A digital periodic table that uses a sqlite database to store elements data: name, symbol, atomic number, atomic mass, density, melting point and boiding point.

If you have installed sqlite, you can create the database and insert data into it using this command:

````
sqlite3 periodic.db < src/createdb.sql
````
