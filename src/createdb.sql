/**
 This script creates two tables, tb_classifications and tb_elements, in a database and populates
 them with data of the periodic table of elements. The tb_classifications table contains the
 classifications of the elements and the tb_elements table contains information about each element.
 */

-- Drops the tb_classifications and tb_elements tables if they exist.

DROP TABLE IF EXISTS tb_classifications;
DROP TABLE IF EXISTS tb_elements;

-- Creates the tb_classifications table with columns for classification code (primary key) and classification text.

CREATE TABLE tb_classifications(
  code INT PRIMARY KEY,
  classification_text VARCHAR(45) NOT NULL,
  UNIQUE(classification_text)
);

/**
  Creates the tb_elements table with columns for atomic number (primary key), element name, 
  element symbol, classification code, atomic mass, density, melting point, and boiling point. 
  The classification code is a foreign key that references the tb_classifications table.
 */

CREATE TABLE tb_elements(
  atomic_number INT PRIMARY KEY NOT NULL,
  element_name VARCHAR(45) NOT NULL,
  element_symbol VARCHAR(2) NOT NULL,
  classification INT NOT NULL,
  atomic_mass REAL NOT NULL,
  density REAL,
  melting_point REAL,
  boiling_point REAL,
  UNIQUE(element_name, element_symbol),
  FOREIGN KEY (classification) REFERENCES classifications(code)
);

-- Populates the tb_classifications table with classification data.

INSERT INTO
  tb_classifications
VALUES
  (1, 'Alkali metals'),
  (2, 'Alkaline earth metals'),
  (3, 'Lanthanoids'),
  (4, 'Actinoids'),
  (5, 'Transition metals'),
  (6, 'Post-transition metals'),
  (7, 'Metalloids'),
  (8, 'Other nonmetals'),
  (9, 'Halogens'),
  (10, 'Noble gases');

-- Populates the tb_elements table with element data.

INSERT INTO
  tb_elements
VALUES
  (
    1,
    'Hydrogen',
    'H',
    8,
    1.0078,
    0.0000899,
    14.01,
    20.28
  ),
  (
    2,
    'Helium',
    'He',
    10,
    4.0026,
    0.00017846,
    0.95,
    4.25
  ),
  (
    3,
    'Lithium',
    'Li',
    1,
    6.941,
    0.534,
    453.65,
    1615.15
  ),
  (
    4,
    'Beryllium',
    'Be',
    2,
    9.0121,
    1.848,
    1551.15,
    3243.15
  ),
  (
    5,
    'Boron',
    'B',
    7,
    10.811,
    2.34,
    2348.95,
    4199.95
  ),
  (
    6,
    'Carbon',
    'C',
    8,
    12.0107,
    2.26,
    3823.15,
    5100.15
  ),
  (
    7,
    'Nitrogen',
    'N',
    8,
    14.0067,
    0.001251,
    63.25,
    77.35
  ),
  (
    8,
    'Oxygen',
    'O',
    8,
    15.9994,
    0.00142897,
    54.36,
    90.19
  ),
  (
    9,
    'Fluorine',
    'F',
    9,
    18.9984,
    0.001696,
    53.48,
    85.04
  ),
  (
    10,
    'Neon',
    'Ne',
    10,
    20.1797,
    0.0009002,
    24.48,
    27.1
  ),
  (
    11,
    'Sodium',
    'Na',
    1,
    22.9897,
    0.971,
    370.95,
    1156.09
  ),
  (
    12,
    'Magnesium',
    'Mg',
    2,
    24.3050,
    1.738,
    923.15,
    1363.15
  ),
  (
    13,
    'Aluminum',
    'Al',
    6,
    26.9815,
    2.6989,
    933.15,
    2791.97
  ),
  (
    14,
    'Silicon',
    'Si',
    7,
    28.0855,
    2.33,
    1688,
    3538.15
  ),
  (
    15,
    'Phosphorus',
    'P',
    8,
    30.9737,
    2.82,
    317.3,
    553.65
  ),
  (
    16,
    'Sulfur',
    'S',
    8,
    32.065,
    2.070,
    385.95,
    717.82
  ),
  (
    17,
    'Chlorine',
    'Cl',
    9,
    35.453,
    0.003214,
    172.17,
    238.55
  ),
  (
    18,
    'Argon',
    'Ar',
    10,
    39.948,
    0.001784,
    83.81,
    87.3
  ),
  (
    19,
    'Potassium',
    'K',
    1,
    39.0983,
    0.856,
    336.53,
    1031.95
  ),
  (
    20,
    'Calcium',
    'Ca',
    2,
    40.078,
    1.55,
    1115.15,
    1757.15
  ),
  (
    21,
    'Scandium',
    'Sc',
    5,
    44.9559,
    2.99,
    1814.15,
    3103.15
  ),
  (
    22,
    'Titanium',
    'Ti',
    5,
    47.867,
    4.54,
    1933.15,
    3560.15
  ),
  (
    23,
    'Vanadium',
    'V',
    5,
    50.9415,
    6.11,
    2183.15,
    3680.15
  ),
  (
    24,
    'Chromium',
    'Cr',
    5,
    51.9961,
    7.19,
    2180.15,
    2945.15
  ),
  (
    25,
    'Manganese',
    'Mn',
    5,
    54.9380,
    7.21,
    1518.15,
    2334.15
  ),
  (
    26,
    'Iron',
    'Fe',
    5,
    55.845,
    7.874,
    1812.15,
    3135.15
  ),
  (
    27,
    'Cobalt',
    'Co',
    5,
    58.9331,
    8.9,
    1766.15,
    3143.15
  ),
  (
    28,
    'Nickel',
    'Ni',
    5,
    58.6934,
    8.902,
    1728.15,
    3188.15
  ),
  (
    29,
    'Copper',
    'Cu',
    5,
    63.546,
    8.92,
    1357.77,
    2835.15
  ),
  (
    30,
    'Zinc',
    'Zn',
    5,
    65.38,
    7.133,
    692.65,
    1179.15
  ),
  (
    31,
    'Gallium',
    'Ga',
    6,
    69.723,
    5.91,
    302.95,
    2476.15
  ),
  (
    32,
    'Germanium',
    'Ge',
    7,
    72.64,
    5.323,
    1210.65,
    3106.15
  ),
  (
    33,
    'Arsenic',
    'As',
    7,
    74.9216,
    5.72,
    NULL,
    886.15
  ),
  (
    34,
    'Selenium',
    'Se',
    8,
    78.96,
    4.79,
    490.15,
    957.95
  ),
  (
    35,
    'Bromine',
    'Br',
    9,
    79.904,
    3.14,
    265.9,
    331.95
  ),
  (
    36,
    'Krypton',
    'Kr',
    10,
    83.798,
    0.003749,
    115.78,
    119.75
  ),
  (
    37,
    'Rubidium',
    'Rb',
    1,
    85.467,
    1.53,
    312.47,
    960.35
  ),
  (
    38,
    'Strontium',
    'Sr',
    2,
    87.62,
    2.54,
    1050.15,
    1655.15
  ),
  (
    39,
    'Yttrium',
    'Y',
    5,
    88.905,
    4.47,
    1799.15,
    3611.15
  ),
  (
    40,
    'Zirconium',
    'Zr',
    5,
    91.224,
    6.51,
    2128.15,
    4682.15
  ),
  (
    41,
    'Niobium',
    'Nb',
    5,
    92.906,
    8.58,
    2750.15,
    5200.15
  ),
  (
    42,
    'Molybdenum',
    'Mo',
    5,
    95.94,
    10.22,
    2896.15,
    4912.15
  ),
  (
    43,
    'Technetium',
    'Tc',
    5,
    98.906,
    11.49,
    2430.15,
    4538.15
  ),
  (
    44,
    'Ruthenium',
    'Ru',
    5,
    101.07,
    12.41,
    2607.15,
    4350.15
  ),
  (
    45,
    'Rhodiium',
    'Rh',
    5,
    102.905,
    12.41,
    2237.15,
    4000.15
  ),
  (
    46,
    'Palladium',
    'Pd',
    5,
    106.42,
    12.02,
    1828.15,
    3236.15
  ),
  (
    47,
    'Silver',
    'Ag',
    5,
    107.868,
    10.49,
    1234.95,
    2435.15
  ),
  (
    48,
    'Cadmium',
    'Cd',
    5,
    112.411,
    8.64,
    592.25,
    1039.95
  ),
  (
    49,
    'Indium',
    'In',
    6,
    114.818,
    7.31,
    429.75,
    2345.15
  ),
  (
    50,
    'Tin',
    'Sn',
    6,
    118.710,
    7.29,
    505.08,
    2875.15
  ),
  (
    51,
    'Antimony',
    'Sb',
    7,
    121.760,
    6.69,
    903.9,
    1860.15
  ),
  (
    52,
    'Tellurium',
    'Te',
    7,
    127.60,
    6.25,
    722.7,
    1260.95
  ),
  (
    53,
    'Iodine',
    'I',
    9,
    126.904,
    4.94,
    386.7,
    457.5
  ),
  (
    54,
    'Xenon',
    'Xe',
    10,
    131.293,
    0.005894,
    161.35,
    165.05
  ),
  (
    55,
    'Caesium',
    'Cs',
    1,
    132.905,
    1.9,
    301.6,
    943.95
  ),
  (
    56,
    'Barium',
    'Ba',
    2,
    137.327,
    3.5,
    1000.15,
    2170.15
  ),
  (
    57,
    'Lanthanum',
    'La',
    3,
    138.905,
    6.16,
    1193.15,
    3737.15
  ),
  (
    58,
    'Cerium',
    'Ce',
    3,
    140.116,
    6.77,
    1068.15,
    3716.15
  ),
  (
    59,
    'Praseodymium',
    'Pr',
    3,
    140.904,
    6.773,
    1204.15,
    3785.15
  ),
  (
    60,
    'Neodymium',
    'Nd',
    3,
    144.242,
    7,
    1283.15,
    3347.15
  ),
  (
    61,
    'Promethium',
    'Pm',
    3,
    144.912,
    7.2,
    1440.15,
    3273.15
  ),
  (
    62,
    'Samarium',
    'Sm',
    3,
    150.36,
    7.54,
    1345.15,
    2067.15
  ),
  (
    63,
    'Europium',
    'Eu',
    3,
    151.964,
    5.25,
    1095.15,
    1870.15
  ),
  (
    64,
    'Gadolinium',
    'Gd',
    3,
    157.25,
    7.89,
    1584.15,
    3545.15
  ),
  (
    65,
    'Terbium',
    'Tb',
    3,
    158.925,
    8.25,
    1633.15,
    3500.15
  ),
  (
    66,
    'Dysprosium',
    'Dy',
    3,
    162.500,
    8.56,
    1682.15,
    2840.15
  ),
  (
    67,
    'Holmium',
    'Ho',
    3,
    164.93,
    8.78,
    1743.15,
    2968.15
  ),
  (
    68,
    'Erbium',
    'Er',
    3,
    167.259,
    9.05,
    1802.15,
    3140.15
  ),
  (
    69,
    'Thulium',
    'Tm',
    3,
    168.934,
    9.32,
    1818.15,
    2220.15
  ),
  (
    70,
    'Ytterbium',
    'Yb',
    3,
    173.04,
    6.97,
    1097.15,
    1466.15
  ),
  (
    71,
    'Lutetium',
    'Lu',
    3,
    174.967,
    9.84,
    1936.15,
    3668.15
  ),
  (
    72,
    'Hafnium',
    'Hf',
    5,
    178.49,
    13.31,
    2506.15,
    4875.15
  ),
  (
    73,
    'Tantalum',
    'Ta',
    5,
    180.947,
    16.68,
    3290.15,
    5731.15
  ),
  (
    74,
    'Tungsten',
    'W',
    5,
    183.84,
    19.26,
    3695.15,
    5828.15
  ),
  (
    75,
    'Rhenium',
    'Re',
    5,
    186.207,
    21.03,
    3453.15,
    5900.15
  ),
  (
    76,
    'Osmium',
    'Os',
    5,
    190.23,
    22.587,
    3306.15,
    5870.15
  ),
  (
    77,
    'Iridium',
    'Ir',
    5,
    192.217,
    22.562,
    2683.15,
    4403.15
  ),
  (
    78,
    'Platinum',
    'Pl',
    5,
    195.084,
    21.45,
    2041.15,
    4098.15
  ),
  (
    79,
    'Gold',
    'Au',
    5,
    196.966,
    19.3,
    1337.15,
    2973.15
  ),
  (
    80,
    'Mercury',
    'Hg',
    5,
    200.59,
    13.55,
    234.15,
    629.85
  ),
  (
    81,
    'Thalium',
    'Tl',
    6,
    204.383,
    11.85,
    576.75,
    1746.15
  ),
  (
    82,
    'Lead',
    'Pb',
    6,
    207.2,
    11.34,
    600.55,
    2022.15
  ),
  (
    83,
    'Bismuth',
    'Bi',
    6,
    208.9804,
    9.8,
    544.55,
    1833.15
  ),
  (
    84,
    'Polonium',
    'Po',
    7,
    208.9824,
    9.2,
    527.15,
    1235.15
  ),
  (
    85,
    'Astatine',
    'At',
    9,
    209.9871,
    6.4,
    503.15,
    609.95
  ),
  (
    86,
    'Radon',
    'Rn',
    10,
    222.0176,
    0.0098,
    202.0,
    211.45
  ),
  (
    87,
    'Francium',
    'Fr',
    1,
    223.0197,
    2.48,
    281.15,
    949.95
  ),
  (
    88,
    'Radium',
    'Ra',
    2,
    226.0254,
    5.5,
    969.15,
    2010.15
  ),
  (
    89,
    'Actinium',
    'Ac',
    4,
    227.0278,
    10.07,
    1323.15,
    3470.15
  ),
  (
    90,
    'Thorium',
    'Th',
    4,
    232.0380,
    11.72,
    2023.15,
    5060.15
  ),
  (
    91,
    'Protactinium',
    'Pa',
    4,
    231.0358,
    15.37,
    2113.15,
    4300.15
  ),
  (
    92,
    'Uranium',
    'U',
    4,
    238.0289,
    19.05,
    1405.55,
    4404.15
  ),
  (
    93,
    'Neptunium',
    'Np',
    4,
    237.0482,
    20.48,
    917.15,
    4175.15
  ),
  (
    94,
    'Plutonium',
    'Pu',
    4,
    244.0642,
    19.74,
    914.15,
    3505.15
  ),
  (
    95,
    'Americium',
    'Am',
    4,
    243.0614,
    13.67,
    1449.15,
    2880.15
  ),
  (
    96,
    'Curium',
    'Cm',
    4,
    247.0703,
    13.51,
    1618.15,
    3383.15
  ),
  (
    97,
    'Berkelium',
    'Bk',
    4,
    247.0703,
    13.25,
    1259.15,
    2900.15
  ),
  (
    98,
    'Californium',
    'Cf',
    4,
    251.0796,
    15.1,
    1173.15,
    1745.15
  ),
  (
    99,
    'Einsteinium',
    'Es',
    4,
    252.0829,
    13.5,
    1133.15,
    NULL
  ),
  (
    100,
    'Ferminum',
    'Fm',
    4,
    257.0951,
    19.050,
    1798.15,
    NULL
  ),
  (
    101,
    'Mendelevium',
    'Md',
    4,
    258.0951,
    NULL,
    1098.15,
    NULL
  ),
  (
    102,
    'Nobelium',
    'No',
    4,
    259.1009,
    NULL,
    1098.15,
    NULL
  ),
  (
    103,
    'Lawrencium',
    'Lr',
    4,
    266.1193,
    NULL,
    1898.15,
    NULL
  ),
  (
    104,
    'Rutherfordium',
    'Rf',
    5,
    261.1087,
    23,
    2373.15,
    5773.15
  ),
  (
    105,
    'Dubnium',
    'Db',
    5,
    262.1138,
    29,
    NULL,
    NULL
  ),
  (
    106,
    'Seaborgium',
    'Sg',
    5,
    263.1182,
    35,
    NULL,
    NULL
  ),
  (
    107,
    'Bohrium',
    'Bh',
    5,
    262.1229,
    37,
    NULL,
    NULL
  ),
  (108, 'Hassium', 'Hs', 5, 269, NULL, NULL, NULL),
  (
    109,
    'Meitnerium',
    'Mt',
    5,
    278,
    37.4,
    NULL,
    NULL
  ),
  (
    110,
    'Darmstadtium',
    'Ds',
    5,
    281.1620,
    34.8,
    NULL,
    NULL
  ),
  (
    111,
    'Roentgenium',
    'Rg',
    5,
    281.1684,
    NULL,
    NULL,
    NULL
  ),
  (
    112,
    'Copernicium',
    'Cn',
    5,
    285.1744,
    20,
    NULL,
    NULL
  ),
  (
    113,
    'Nihonium',
    'Nh',
    6,
    286.1810,
    16,
    698.15,
    1428.15
  ),
  (
    114,
    'Flerovium',
    'Fl',
    6,
    287.1904,
    14,
    341.15,
    419.15
  ),
  (
    115,
    'Moscovium',
    'Mc',
    6,
    288.1943,
    13.5,
    NULL,
    NULL
  ),
  (
    116,
    'Livermorium',
    'Lv',
    6,
    291.2045,
    NULL,
    NULL,
    NULL
  ),
  (
    117,
    'Tennessine',
    'Ts',
    9,
    294.2104,
    NULL,
    NULL,
    NULL
  ),
  (
    118,
    'Oganesson',
    'Og',
    10,
    294.2139,
    5,
    NULL,
    368.15
  );