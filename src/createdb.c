#include <stdio.h>
#include "sqlite3.h"

#define numberOfElements 118

typedef struct
{
  int atomicNumber;
  char *name, *symbol, *classification;
  float atomicMass, meltingPoint, boindingPoint;
} Element;

int insertElement(Element element, sqlite3 *db, char **errMsg)
{
  char *query;
  sprintf(query,
          "INSERT INTO periodic_table VALUES(%d,'%s','%s','%s',%f, %f, %f)",
          element.atomicNumber,
          element.name,
          element.symbol,
          element.classification,
          element.atomicMass,
          element.meltingPoint,
          element.boindingPoint);

  return sqlite3_exec(db, query, 0, 0, errMsg);
}

int main()
{
  Element PeriodicTable[] = {
      {1, "Hydrogen", "H", "Nonmetals", 1.0078, 14.01, 20.28},
      {2, "Helium", "He", "Noble gases", 4.0026, 0.95, 4.25},
      {3, "Lithium", "Li", "Alkali metals", 6.941, 453.65, 1615.15},
      {4, "Beryllium", "Be", "Alkaline earth metals", 9.0121, 1551.15, 3243.15},
      {5, "Boron", "B", "Metalloids", 10.811, 2348.95, 4199.95},
      {6, "Carbon", "C", "Nonmetals", 12.0107, 3823.15, 5100.15},
      {7, "Nitrogen", "N", "Nonmetals", 14.0067, 63.25, 77.35},
      {8, "Oxygen", "O", "Nonmetals", 15.9994, 54.36, 90.19},
      {9, "Fluorine", "F", "Halogens", 18.9984, 53.48, 85.04},
      {10, "Neon", "Ne", "Noble gases", 20.1797, 24.48, 27.1},
      {11, "Sodium", "Na", "Alkali metals", 22.9897, 370.95, 1156.09},
      {12, "Magnesium", "Mg", "Alkaline earth metals", 24.3050, 923.15, 1363.15},
      {13, "Aluminum", "Al", "Post-transition metal", 26.9815, 933.15, 2791.97},
      {14, "Silicon", "Si", "Metalloids", 28.0855, 1688, 3538.15},
      {15, "Phosphorus", "P", "Nonmetals", 30.9737, 317.3, 553.65},
      {16, "Sulfur", "S", "Nonmetals", 32.065, 385.95, 717.82},
      {17, "Chlorine", "Cl", "Halogens", 35.453, 172.17, 238.55},
      {18, "Argon", "Ar", "Noble gases", 39.948, 83.81, 87.3},
      {19, "Potassium", "K", "Alkali metals", 39.0983, 336.53, 1031.95},
      {20, "Calcium", "Ca", "Alkaline earth metals", 40.078, 1115.15, 1757.15},
      {21, "Scandium", "Sc", "Transition metals", 44.9559, 1814.15, 3103.15},
      {22, "Titanium", "Ti", "Transition metals", 47.867, 1933.15, 3560.15},
      {23, "Vanadium", "V", "Transition metals", 50.9415, 2183.15, 3680.15},
      {24, "Chromium", "Cr", "Transition metals", 51.9961, 2180.15, 2945.15},
      {25, "Manganese", "Mn", "Transition metals", 54.9380, 1518.15, 2334.15},
      {26, "Iron", "Fe", "Transition metals", 55.845, 1812.15, 3135.15},
      {27, "Cobalt", "Co", "Transition metals", 58.9331, 1766.15, 3143.15},
      {28, "Nickel", "Ni", "Transition metals", 58.6934, 1728.15, 3188.15},
      {29, "Copper", "Cu", "Transition metals", 63.546, 1357.77, 2835.15},
      {30, "Zinc", "Zn", "Transition metals", 65.38, 692.65, 1179.15},
      {31, "Gallium", "Ga", "Transition metals", 69.723, 302.95, 2476.15},
      {32, "Germanium", "Ge", "Metalloids", 72.64, 1210.65, 3106.15},
      {33, "Arsenic", "As", "Metalloids", 74.9216, 1090, 886.15},
      {34, "Selenium", "Se", "Nonmetals", 78.96, 490.15, 957.95},
      {35, "Bromine", "Br", "Halogens", 79.904, 265.9, 331.95},
      {36, "Krypton", "Kr", "Noble metals", 83.798, 115.78, 119.75},
      {37, "Rubidium", "Rb", "Alkali metals", 85.467, 312.47, 960.35},
      {38, "Strontium", "Sr", "Alkaline earth metals", 87.62, 1050.15, 1655.15},
      {39, "Yttrium", "Y", "Transition metals", 88.905, 1799.15, 3611.15},
      {40, "Zirconium", "Zr", "Transition metals", 91.224, 2128.15, 4682.15},
      {41, "Niobium", "Nb", "Transition metals", 92.906, 2750.15, 5200.15},
      {42, "Molybdenum", "Mo", "Transition metals", 95.94, 2896.15, 4912.15},
      {43, "Technetium", "Tc", "Transition metals", 98.906, 2430.15, 4538.15},
      {44, "Ruthenium", "Ru", "Transition metals", 101.07, 2607.15, 4350.15},
      {45, "Rhodiium", "Rh", "Transition metals", 102.905, 2237.15, 4000.15},
      {46, "Palladium", "Pd", "Transition metals", 106.42, 1828.15, 3236.15},
      {47, "Silver", "Ag", "Transition metals", 107.868, 1234.95, 2435.15},
      {48, "Cadmium", "Cd", "Transition metals", 112.411, 592.25, 1039.95},
      {49, "Indium", "In", "Post-transition metals", 114.818, 429.75, 2345.15},
      {50, "Tin", "Sn", "Post-transition metals", 118.710, 505.08, 2875.15},
      {51, "Antimony", "Sb", "Metalloids", 121.760, 903.9, 1860.15},
      {52, "Tellurium", "Te", "Metalloids", 127.60, 722.7, 1260.95},
      {53, "Iodine", "I", "Halogens", 126.904, 386.7, 457.5},
      {54, "Xenon", "Xe", "Noble gases", 131.293, 161.35, 165.05}};
  // sqlite3 *db;
  // char *errMsg, *query;
  // int exit, i;

  // exit = sqlite3_open("./periodic.db", &db);

  // query = "CREATE TABLE periodic_table("
  //         "atomic_number INT PRIMARY KEY NOT NULL,"
  //         "name TEXT NOT NULL,"
  //         "symbol TEXT NOT NULL,"
  //         "classification TEXT NOT NULL,"
  //         "atomic_mass REAL NOT NULL,"
  //         "melting_point REAL NOT NULL,"
  //         "boiding_point REAL NOT NULL)";

  // exit = sqlite3_exec(db, query, 0, 0, &errMsg);

  // for (i = 0; i < 54 && !exit; i++)
  //   exit = insertElement(PeriodicTable[i], db, &errMsg);

  // if (exit)
  // {
  //   fprintf(stderr, "%s\n", errMsg);
  //   return 0;
  // }

  // sqlite3_close(db);

  printf("%f", PeriodicTable[7].atomicMass);

  return 0;
}
