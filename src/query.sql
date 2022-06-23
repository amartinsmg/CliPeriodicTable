CREATE TABLE periodic_table(
  atomic_number INT PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  symbol TEXT NOT NULL,
  classification TEXT NOT NULL,
  atomic_mass REAL NOT NULL,
  melting_point REAL NOT NULL,
  boiding_point REAL NOT NULL);

INSERT INTO periodic_table VALUES (1, "Hydrogen", "H", "Nonmetals", 1.0078, 14.01, 20.28);
INSERT INTO periodic_table VALUES (2, "Helium", "He", "Noble gases", 4.0026, 0.95, 4.25);
INSERT INTO periodic_table VALUES (3, "Lithium", "Li", "Alkali metals", 6.941, 453.65, 1615.15);
INSERT INTO periodic_table VALUES (4, "Beryllium", "Be", "Alkaline earth metals", 9.0121, 1551.15, 3243.15);
INSERT INTO periodic_table VALUES (5, "Boron", "B", "Metalloids", 10.811, 2348.95, 4199.95);
INSERT INTO periodic_table VALUES (6, "Carbon", "C", "Nonmetals", 12.0107, 3823.15, 5100.15);
INSERT INTO periodic_table VALUES (7, "Nitrogen", "N", "Nonmetals", 14.0067, 63.25, 77.35);
INSERT INTO periodic_table VALUES (8, "Oxygen", "O", "Nonmetals", 15.9994, 54.36, 90.19);
INSERT INTO periodic_table VALUES (9, "Fluorine", "F", "Halogens", 18.9984, 53.48, 85.04);
INSERT INTO periodic_table VALUES (10, "Neon", "Ne", "Noble gases", 20.1797, 24.48, 27.1);
INSERT INTO periodic_table VALUES (11, "Sodium", "Na", "Alkali metals", 22.9897, 370.95, 1156.09);
INSERT INTO periodic_table VALUES (12, "Magnesium", "Mg", "Alkaline earth metals", 24.3050, 923.15, 1363.15);
INSERT INTO periodic_table VALUES (13, "Aluminum", "Al", "Post-transition metal", 26.9815, 933.15, 2791.97);
INSERT INTO periodic_table VALUES (14, "Silicon", "Si", "Metalloids", 28.0855, 1688, 3538.15);
INSERT INTO periodic_table VALUES (15, "Phosphorus", "P", "Nonmetals", 30.9737, 317.3, 553.65);
INSERT INTO periodic_table VALUES (16, "Sulfur", "S", "Nonmetals", 32.065, 385.95, 717.82);
INSERT INTO periodic_table VALUES (17, "Chlorine", "Cl", "Halogens", 35.453, 172.17, 238.55);
INSERT INTO periodic_table VALUES (18, "Argon", "Ar", "Noble gases", 39.948, 83.81, 87.3);
INSERT INTO periodic_table VALUES (19, "Potassium", "K", "Alkali metals", 39.0983, 336.53, 1031.95);
INSERT INTO periodic_table VALUES (20, "Calcium", "Ca", "Alkaline earth metals", 40.078, 1115.15, 1757.15);
INSERT INTO periodic_table VALUES (21, "Scandium", "Sc", "Transition metals", 44.9559, 1814.15, 3103.15);
INSERT INTO periodic_table VALUES (22, "Titanium", "Ti", "Transition metals", 47.867, 1933.15, 3560.15);
INSERT INTO periodic_table VALUES (23, "Vanadium", "V", "Transition metals", 50.9415, 2183.15, 3680.15);
INSERT INTO periodic_table VALUES (24, "Chromium", "Cr", "Transition metals", 51.9961, 2180.15, 2945.15);
INSERT INTO periodic_table VALUES (25, "Manganese", "Mn", "Transition metals", 54.9380, 1518.15, 2334.15);
INSERT INTO periodic_table VALUES (26, "Iron", "Fe", "Transition metals", 55.845, 1812.15, 3135.15);
INSERT INTO periodic_table VALUES (27, "Cobalt", "Co", "Transition metals", 58.9331, 1766.15, 3143.15);
INSERT INTO periodic_table VALUES (28, "Nickel", "Ni", "Transition metals", 58.6934, 1728.15, 3188.15);
INSERT INTO periodic_table VALUES (29, "Copper", "Cu", "Transition metals", 63.546, 1357.77, 2835.15);
INSERT INTO periodic_table VALUES (30, "Zinc", "Zn", "Transition metals", 65.38, 692.65, 1179.15);
INSERT INTO periodic_table VALUES (31, "Gallium", "Ga", "Transition metals", 69.723, 302.95, 2476.15);
INSERT INTO periodic_table VALUES (32, "Germanium", "Ge", "Metalloids", 72.64, 1210.65, 3106.15);
INSERT INTO periodic_table VALUES (33, "Arsenic", "As", "Metalloids", 74.9216, 1090, 886.15);
INSERT INTO periodic_table VALUES (34, "Selenium", "Se", "Nonmetals", 78.96, 490.15, 957.95);
INSERT INTO periodic_table VALUES (35, "Bromine", "Br", "Halogens", 79.904, 265.9, 331.95);
INSERT INTO periodic_table VALUES (36, "Krypton", "Kr", "Noble metals", 83.798, 115.78, 119.75);
INSERT INTO periodic_table VALUES (37, "Rubidium", "Rb", "Alkali metals", 85.467, 312.47, 960.35);
INSERT INTO periodic_table VALUES (38, "Strontium", "Sr", "Alkaline earth metals", 87.62, 1050.15, 1655.15);
INSERT INTO periodic_table VALUES (39, "Yttrium", "Y", "Transition metals", 88.905, 1799.15, 3611.15);
INSERT INTO periodic_table VALUES (40, "Zirconium", "Zr", "Transition metals", 91.224, 2128.15, 4682.15);
INSERT INTO periodic_table VALUES (41, "Niobium", "Nb", "Transition metals", 92.906, 2750.15, 5200.15);
INSERT INTO periodic_table VALUES (42, "Molybdenum", "Mo", "Transition metals", 95.94, 2896.15, 4912.15);
INSERT INTO periodic_table VALUES (43, "Technetium", "Tc", "Transition metals", 98.906, 2430.15, 4538.15);
INSERT INTO periodic_table VALUES (44, "Ruthenium", "Ru", "Transition metals", 101.07, 2607.15, 4350.15);
INSERT INTO periodic_table VALUES (45, "Rhodiium", "Rh", "Transition metals", 102.905, 2237.15, 4000.15);
INSERT INTO periodic_table VALUES (46, "Palladium", "Pd", "Transition metals", 106.42, 1828.15, 3236.15);
INSERT INTO periodic_table VALUES (47, "Silver", "Ag", "Transition metals", 107.868, 1234.95, 2435.15);
INSERT INTO periodic_table VALUES (48, "Cadmium", "Cd", "Transition metals", 112.411, 592.25, 1039.95);
INSERT INTO periodic_table VALUES (49, "Indium", "In", "Post-transition metals", 114.818, 429.75, 2345.15);
INSERT INTO periodic_table VALUES (50, "Tin", "Sn", "Post-transition metals", 118.710, 505.08, 2875.15);
INSERT INTO periodic_table VALUES (51, "Antimony", "Sb", "Metalloids", 121.760, 903.9, 1860.15);
INSERT INTO periodic_table VALUES (52, "Tellurium", "Te", "Metalloids", 127.60, 722.7, 1260.95);
INSERT INTO periodic_table VALUES (53, "Iodine", "I", "Halogens", 126.904, 386.7, 457.5);
INSERT INTO periodic_table VALUES (54, "Xenon", "Xe", "Noble gases", 131.293, 161.35, 165.05)