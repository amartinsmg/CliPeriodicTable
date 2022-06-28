CREATE TABLE periodic_table(
  atomic_number INT PRIMARY KEY NOT NULL,
  element_name TEXT NOT NULL,
  element_symbol TEXT NOT NULL,
  classification TEXT NOT NULL,
  atomic_mass REAL NOT NULL,
  density REAL,
  melting_point REAL,
  boiding_point REAL);

INSERT INTO periodic_table VALUES (1, 'Hydrogen', 'H', 'Nonmetals', 1.0078, 0.0000899, 14.01, 20.28);
INSERT INTO periodic_table VALUES (2, 'Helium', 'He', 'Noble gases', 4.0026, 0.00017846, 0.95, 4.25);
INSERT INTO periodic_table VALUES (3, 'Lithium', 'Li', 'Alkali metals', 6.941, 0.534, 453.65, 1615.15);
INSERT INTO periodic_table VALUES (4, 'Beryllium', 'Be', 'Alkaline earth metals', 9.0121, 1.848, 1551.15, 3243.15);
INSERT INTO periodic_table VALUES (5, 'Boron', 'B', 'Metalloids', 10.811, 2.34, 2348.95, 4199.95);
INSERT INTO periodic_table VALUES (6, 'Carbon', 'C', 'Nonmetals', 12.0107, 2.26, 3823.15, 5100.15);
INSERT INTO periodic_table VALUES (7, 'Nitrogen', 'N', 'Nonmetals', 14.0067, 0.001251, 63.25, 77.35);
INSERT INTO periodic_table VALUES (8, 'Oxygen', 'O', 'Nonmetals', 15.9994, 0.00142897, 54.36, 90.19);
INSERT INTO periodic_table VALUES (9, 'Fluorine', 'F', 'Halogens', 18.9984, 0.001696, 53.48, 85.04);
INSERT INTO periodic_table VALUES (10, 'Neon', 'Ne', 'Noble gases', 20.1797, 0.0009002, 24.48, 27.1);
INSERT INTO periodic_table VALUES (11, 'Sodium', 'Na', 'Alkali metals', 22.9897, 0.971, 370.95, 1156.09);
INSERT INTO periodic_table VALUES (12, 'Magnesium', 'Mg', 'Alkaline earth metals', 24.3050, 1.738, 923.15, 1363.15);
INSERT INTO periodic_table VALUES (13, 'Aluminum', 'Al', 'Post-transition metal', 26.9815, 2.6989, 933.15, 2791.97);
INSERT INTO periodic_table VALUES (14, 'Silicon', 'Si', 'Metalloids', 28.0855, 2.33, 1688, 3538.15);
INSERT INTO periodic_table VALUES (15, 'Phosphorus', 'P', 'Nonmetals', 30.9737, 2.82, 317.3, 553.65);
INSERT INTO periodic_table VALUES (16, 'Sulfur', 'S', 'Nonmetals', 32.065, 2.070, 385.95, 717.82);
INSERT INTO periodic_table VALUES (17, 'Chlorine', 'Cl', 'Halogens', 35.453, 0.003214, 172.17, 238.55);
INSERT INTO periodic_table VALUES (18, 'Argon', 'Ar', 'Noble gases', 39.948, 0.001784, 83.81, 87.3);
INSERT INTO periodic_table VALUES (19, 'Potassium', 'K', 'Alkali metals', 39.0983, 0.856, 336.53, 1031.95);
INSERT INTO periodic_table VALUES (20, 'Calcium', 'Ca', 'Alkaline earth metals', 40.078, 1.55, 1115.15, 1757.15);
INSERT INTO periodic_table VALUES (21, 'Scandium', 'Sc', 'Transition metals', 44.9559, 2.99, 1814.15, 3103.15);
INSERT INTO periodic_table VALUES (22, 'Titanium', 'Ti', 'Transition metals', 47.867, 4.54, 1933.15, 3560.15);
INSERT INTO periodic_table VALUES (23, 'Vanadium', 'V', 'Transition metals', 50.9415, 6.11, 2183.15, 3680.15);
INSERT INTO periodic_table VALUES (24, 'Chromium', 'Cr', 'Transition metals', 51.9961, 7.19, 2180.15, 2945.15);
INSERT INTO periodic_table VALUES (25, 'Manganese', 'Mn', 'Transition metals', 54.9380, 7.21, 1518.15, 2334.15);
INSERT INTO periodic_table VALUES (26, 'Iron', 'Fe', 'Transition metals', 55.845, 7.874, 1812.15, 3135.15);
INSERT INTO periodic_table VALUES (27, 'Cobalt', 'Co', 'Transition metals', 58.9331, 8.9, 1766.15, 3143.15);
INSERT INTO periodic_table VALUES (28, 'Nickel', 'Ni', 'Transition metals', 58.6934, 8.902, 1728.15, 3188.15);
INSERT INTO periodic_table VALUES (29, 'Copper', 'Cu', 'Transition metals', 63.546, 8.92, 1357.77, 2835.15);
INSERT INTO periodic_table VALUES (30, 'Zinc', 'Zn', 'Transition metals', 65.38, 7.133, 692.65, 1179.15);
INSERT INTO periodic_table VALUES (31, 'Gallium', 'Ga', 'Transition metals', 69.723, 5.91, 302.95, 2476.15);
INSERT INTO periodic_table VALUES (32, 'Germanium', 'Ge', 'Metalloids', 72.64, 5.323, 1210.65, 3106.15);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
density, boiding_point) VALUES (33, 'Arsenic', 'As', 'Metalloids', 74.9216, 5.72, 886.15);
INSERT INTO periodic_table VALUES (34, 'Selenium', 'Se', 'Nonmetals', 78.96, 4.79, 490.15, 957.95);
INSERT INTO periodic_table VALUES (35, 'Bromine', 'Br', 'Halogens', 79.904, 3.14, 265.9, 331.95);
INSERT INTO periodic_table VALUES (36, 'Krypton', 'Kr', 'Noble metals', 83.798, 0.003749, 115.78, 119.75);
INSERT INTO periodic_table VALUES (37, 'Rubidium', 'Rb', 'Alkali metals', 85.467, 1.53, 312.47, 960.35);
INSERT INTO periodic_table VALUES (38, 'Strontium', 'Sr', 'Alkaline earth metals', 87.62, 2.54, 1050.15, 1655.15);
INSERT INTO periodic_table VALUES (39, 'Yttrium', 'Y', 'Transition metals', 88.905, 4.47, 1799.15, 3611.15);
INSERT INTO periodic_table VALUES (40, 'Zirconium', 'Zr', 'Transition metals', 91.224, 6.51, 2128.15, 4682.15);
INSERT INTO periodic_table VALUES (41, 'Niobium', 'Nb', 'Transition metals', 92.906, 8.58, 2750.15, 5200.15);
INSERT INTO periodic_table VALUES (42, 'Molybdenum', 'Mo', 'Transition metals', 95.94, 10.22, 2896.15, 4912.15);
INSERT INTO periodic_table VALUES (43, 'Technetium', 'Tc', 'Transition metals', 98.906, 11.49, 2430.15, 4538.15);
INSERT INTO periodic_table VALUES (44, 'Ruthenium', 'Ru', 'Transition metals', 101.07, 12.41, 2607.15, 4350.15);
INSERT INTO periodic_table VALUES (45, 'Rhodiium', 'Rh', 'Transition metals', 102.905, 12.41, 2237.15, 4000.15);
INSERT INTO periodic_table VALUES (46, 'Palladium', 'Pd', 'Transition metals', 106.42, 12.02, 1828.15, 3236.15);
INSERT INTO periodic_table VALUES (47, 'Silver', 'Ag', 'Transition metals', 107.868, 10.49, 1234.95, 2435.15);
INSERT INTO periodic_table VALUES (48, 'Cadmium', 'Cd', 'Transition metals', 112.411, 8.64, 592.25, 1039.95);
INSERT INTO periodic_table VALUES (49, 'Indium', 'In', 'Post-transition metals', 114.818, 7.31, 429.75, 2345.15);
INSERT INTO periodic_table VALUES (50, 'Tin', 'Sn', 'Post-transition metals', 118.710, 7.29, 505.08, 2875.15);
INSERT INTO periodic_table VALUES (51, 'Antimony', 'Sb', 'Metalloids', 121.760, 6.69, 903.9, 1860.15);
INSERT INTO periodic_table VALUES (52, 'Tellurium', 'Te', 'Metalloids', 127.60, 6.25, 722.7, 1260.95);
INSERT INTO periodic_table VALUES (53, 'Iodine', 'I', 'Halogens', 126.904, 4.94, 386.7, 457.5);
INSERT INTO periodic_table VALUES (54, 'Xenon', 'Xe', 'Noble gases', 131.293, 0.005894, 161.35, 165.05);
INSERT INTO periodic_table VALUES (55, 'Caesium', 'Cs', 'Alkali metals', 132.905, 1.9, 301.6, 943.95);
INSERT INTO periodic_table VALUES (56, 'Barium', 'Ba', 'Alkaline earth metals', 137.327, 3.5, 1000.15, 2170.15);
INSERT INTO periodic_table VALUES (57, 'Lanthanum', 'La', 'Lanthanoids', 138.905, 6.16, 1193.15, 3737.15);
INSERT INTO periodic_table VALUES (58, 'Cerium', 'Ce', 'Lanthanoids', 140.116, 6.77, 1068.15, 3716.15);
INSERT INTO periodic_table VALUES (59, 'Praseodymium', 'Pr', 'Lanthanoids', 140.904, 6.773, 1204.15, 3785.15);
INSERT INTO periodic_table VALUES (60, 'Neodymium', 'Nd', 'Lanthanoids', 144.242, 7, 1283.15, 3347.15);
INSERT INTO periodic_table VALUES (61, 'Promethium', 'Pm', 'Lanthanoids', 144.912, 7.2, 1440.15, 3273.15);
INSERT INTO periodic_table VALUES (62, 'Samarium', 'Sm', 'Lanthanoids', 150.36, 7.54, 1345.15, 2067.15);
INSERT INTO periodic_table VALUES (63, 'Europium', 'Eu', 'Lanthanoids', 151.964, 5.25, 1095.15, 1870.15);
INSERT INTO periodic_table VALUES (64, 'Gadolinium', 'Gd', 'Lanthanoids', 157.25, 7.89, 1584.15, 3545.15);
INSERT INTO periodic_table VALUES (65, 'Terbium', 'Tb', 'Lanthanoids', 158.925, 8.25, 1633.15, 3500.15);
INSERT INTO periodic_table VALUES (66, 'Dysprosium', 'Dy', 'Lanthanoids', 162.500, 8.56, 1682.15, 2840.15);
INSERT INTO periodic_table VALUES (67, 'Holmium', 'Ho', 'Lanthanoids', 164.93, 8.78, 1743.15, 2968.15);
INSERT INTO periodic_table VALUES (68, 'Erbium', 'Er', 'Lanthanoids', 167.259, 9.05, 1802.15, 3140.15);
INSERT INTO periodic_table VALUES (69, 'Thulium', 'Tm', 'Lanthanoids', 168.934, 9.32, 1818.15, 2220.15);
INSERT INTO periodic_table VALUES (70, 'Ytterbium', 'Yb', 'Lanthanoids', 173.04, 6.97, 1097.15, 1466.15);
INSERT INTO periodic_table VALUES (71, 'Lutetium', 'Lu', 'Lanthanoids', 174.967, 9.84, 1936.15, 3668.15);
INSERT INTO periodic_table VALUES (72, 'Hafnium', 'Hf', 'Transition metals', 178.49, 13.31, 2506.15, 4875.15);
INSERT INTO periodic_table VALUES (73, 'Tantalum', 'Ta', 'Transition metals', 180.947, 16.68, 3290.15, 5731.15);
INSERT INTO periodic_table VALUES (74, 'Tugsten', 'W', 'Transition metals', 183.84, 19.26, 3695.15, 5828.15);
INSERT INTO periodic_table VALUES (75, 'Rhenium', 'Re', 'Transition metals', 186.207, 21.03, 3453.15, 5900.15);
INSERT INTO periodic_table VALUES (76, 'Osmium', 'Os', 'Transition metals', 190.23, 22.587, 3306.15, 5870.15);
INSERT INTO periodic_table VALUES (77, 'Iridium', 'Ir', 'Transition metals', 192.217, 22.562, 2683.15, 4403.15);
INSERT INTO periodic_table VALUES (78, 'Platinum', 'Pl', 'Transition metals', 195.084, 21.45, 2041.15, 4098.15);
INSERT INTO periodic_table VALUES (79, 'Gold', 'Au', 'Transition metals', 196.966, 19.3, 1337.15, 2973.15);
INSERT INTO periodic_table VALUES (80, 'Mercury', 'Hg', 'Transition metals', 200.59, 13.55, 234.15, 629.85);
INSERT INTO periodic_table VALUES (81, 'Thalium', 'Tl', 'Post-transition metals', 204.383, 11.85, 576.75, 1746.15);
INSERT INTO periodic_table VALUES (82, 'Lead', 'Pb', 'Post-transition metals', 207.2, 11.34, 600.55, 2022.15);
INSERT INTO periodic_table VALUES (83, 'Bismuth', 'Bi', 'Post-transition metals', 208.9804, 9.8, 544.55, 1833.15);
INSERT INTO periodic_table VALUES (84, 'Polonium', 'Po', 'Metalloids', 208.9824, 9.2, 527.15, 1235.15);
INSERT INTO periodic_table VALUES (85, 'Astatine', 'At', 'Halogens', 209.9871, 6.4, 503.15, 609.95);
INSERT INTO periodic_table VALUES (86, 'Radon', 'Rn', 'Noble gases', 222.0176, 0.0098, 202.0, 211.45);
INSERT INTO periodic_table VALUES (87, 'Francium', 'Fr', 'Alkali metals', 223.0197, 2.48, 281.15, 949.95);
INSERT INTO periodic_table VALUES (88, 'Radium', 'Ra', 'Alkaline earth metals', 226.0254, 5.5, 969.15, 2010.15);
INSERT INTO periodic_table VALUES (89, 'Actinium', 'Ac', 'Actinoids', 227.0278, 10.07, 1323.15, 3470.15);
INSERT INTO periodic_table VALUES (90, 'Thorium', 'Th', 'Actinoids', 232.0380, 11.72, 2023.15, 5060.15);
INSERT INTO periodic_table VALUES (91, 'Protactinium', 'Pa', 'Actinoids', 231.0358, 15.37, 2113.15, 4300.15);
INSERT INTO periodic_table VALUES (92, 'Uranium', 'U', 'Actinoids', 238.0289, 19.05, 1405.55, 4404.15);
INSERT INTO periodic_table VALUES (93, 'Neptunium', 'Np', 'Actinoids', 237.0482, 20.48, 917.15, 4175.15);
INSERT INTO periodic_table VALUES (94, 'Plutonium', 'Pu', 'Actinoids', 244.0642, 19.74, 914.15, 3505.15);
INSERT INTO periodic_table VALUES (95, 'Americium', 'Am', 'Actinoids', 243.0614, 13.67, 1449.15, 2880.15);
INSERT INTO periodic_table VALUES (96, 'Curium', 'Cm', 'Actinoids', 247.0703, 13.51, 1618.15, 3383.15);
INSERT INTO periodic_table VALUES (97, 'Berkelium', 'Bk', 'Actinoids', 247.0703, 13.25, 1259.15, 2900.15);
INSERT INTO periodic_table VALUES (98, 'Californium', 'Cf', 'Actinoids', 251.0796, 15.1, 1173.15, 1745.15);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
density, melting_point) VALUES (99, 'Einsteinium', 'Es', 'Actinoids', 252.0829, 13.5, 1133.15);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
density, melting_point) VALUES (100, 'Ferminum', 'Fm', 'Actinoids', 257.0951, 19.050, 1798.15);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
melting_point) VALUES (101, 'Mendelevium', 'Md', 'Actinoids', 258.0951, 1098.15);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
melting_point) VALUES (102, 'Nobelium', 'No', 'Actinoids', 259.1009, 1098.15);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
melting_point) VALUES (103, 'Lawrencium', 'Lr', 'Actinoids', 266.1193, 1898.15);
INSERT INTO periodic_table VALUES (104, 'Rutherfordium', 'Rf', 'Transition metals', 261.1087, 23, 2373.15, 5773.15);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
density) VALUES (105, 'Dubnium', 'Db', 'Transition metals', 262.1138, 29);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
density) VALUES (106, 'Seaborgium', 'Sg', 'Transition metals', 263.1182, 35);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
density) VALUES (107, 'Bohrium', 'Bh', 'Transition metals', 262.1229, 37);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass)
VALUES (108, 'Hassium', 'Ha', 'Transition metals', 269);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
density) VALUES (109, 'Meitnerium', 'Mt', 'Transition metals', 278, 37.4);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
density) VALUES (110, 'Darmstadtium', 'Ds', 'Transition metals', 281.1620, 34.8);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass)
VALUES (111, 'Roentgenium', 'Rg', 'Transition metals', 281.1684);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
density) VALUES (112, 'Copernicium', 'Cn', 'Transition metals', 285.1744, 20);
INSERT INTO periodic_table VALUES (113, 'Nihonium', 'Nh', 'Post-transition metals', 286.1810, 16, 698.15, 1428.15);
INSERT INTO periodic_table VALUES (114, 'Flerovium', 'Fl', 'Post-transition metals', 287.1904, 14, 341.15, 419.15);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
density) VALUES (115, 'Moscovium', 'Mc', 'Post-transition metals', 288.1943, 13.5);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass)
VALUES (116, 'Livermorium', 'Lv', 'Post-transition metals', 291.2045);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass)
VALUES (117, 'Tennessine', 'Ts', 'Halogens', 294.2104);
INSERT INTO periodic_table(atomic_number, element_name, element_symbol, classification, atomic_mass,
density, boiding_point) VALUES (118, 'Oganesson', 'Og', 'Noble gases', 294.2139, 5, 368.15);
