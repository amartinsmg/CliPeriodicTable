#include <stdio.h>
#include "sqlite3.h"

static int callback(void *data, int argc, char **argv, char **azColName)
{
  int i;
  for (i = 0; i < argc; i++)
    printf("%s: %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
  printf("\n");

  return 0;
}

int main()
{
  sqlite3 *db;
  char query[300],
      searchChar[30],
      *queryBegin = "SELECT element_name AS 'Element Name', atomic_number AS 'Atomic Number',"
                    "element_symbol AS Symbol, classification AS Classification,"
                    "atomic_mass AS 'Atomic Mass', melting_point AS 'Melting Point (K)',"
                    "boiding_point AS 'Boinding Point (K)' FROM periodic_table",
      *errMsg = 0;
  int again = 1, exit, opition, searchInt;

  exit = sqlite3_open("db/periodic.db", &db);

  if (exit)
  {
    fprintf(stderr, "Could not connect ot database");
    return 1;
  }

  printf("\nPERIODIC TABLE\n");
  while (again == 1)
  {
    printf("\n1  - Find element by name\n"
           "2  - Find element by symbol\n"
           "3  - Find element by atomic number\n"
           "4  - Find elements by classification\n"
           "5  - Print all elements\n"
           "6  - Quit\n\n"
           "Choose a option: ");
    scanf("%d", &opition);

    switch (opition)
    {
    case 1:
      printf("Enter the element name: ");
      scanf("%s", searchChar);
      sprintf(query, "%s WHERE element_name LIKE '%%%s%%'", queryBegin, searchChar);
      break;
    case 2:
      printf("Enter the element symbol: ");
      scanf("%s", searchChar);
      sprintf(query, "%s WHERE element_symbol LIKE '%s'", queryBegin, searchChar);
      break;
    case 3:
      printf("Enter the atomic number: ");
      scanf("%d", &searchInt);
      sprintf(query, "%s WHERE atomic_number = %d", queryBegin, searchInt);
      break;
    case 4:
      printf("\n1  - Alkali metals\n"
             "2  - Alkaline earth metals\n"
             "3  - Lanthanides\n"
             "4  - Actinides\n"
             "5  - Transition metals\n"
             "6  - Post-transition metals\n"
             "7  - Metalloids\n"
             "8  - Nonmetals\n"
             "9  - Halogens\n"
             "10 - Noble metals\n\n"
             "Choose a option: ");
      scanf("%d", &searchInt);
      
      switch (searchInt)
      {
      case 1:
        sprintf(searchChar, "alkali metals");
        break;
      case 2:
        sprintf(searchChar, "alkaline earth metals");
        break;
      case 3:
        sprintf(searchChar, "lanthanides");
        break;
      case 4:
        sprintf(searchChar, "actinides");
        break;
      case 5:
        sprintf(searchChar, "transition metals");
        break;
      case 6:
        sprintf(searchChar, "post-transition metals");
        break;
      case 7:
        sprintf(searchChar, "metalloids");
        break;
      case 8:
        sprintf(searchChar, "nonmetals");
        break;
      case 9:
        sprintf(searchChar, "halogens");
        break;
      case 10:
        sprintf(searchChar, "noble gases");
        break;
      default:
        printf("\nInvalid option");
        sprintf(searchChar, "NULL");
      }
      sprintf(query, "%s WHERE classification LIKE '%s'", queryBegin, searchChar);
      break;
    case 5:
      sprintf(query, "%s", queryBegin);
      break;
    case 6:
      return 0;
    default:
      printf("Invalid option\n");
      return 0;
    }

    printf("\n");
    exit = sqlite3_exec(db, query, callback, 0, &errMsg);

    if (exit)
    {
      fprintf(stderr, "%s\n", errMsg);
      return 1;
    }

    printf("\n1  - Do another query\n"
           "2  - Quit\n\n"
           "Enter a option: ");
    scanf("%d", &again);
  }

  sqlite3_close(db);

  return 0;
}
