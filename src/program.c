#include <stdio.h>
#include <libgen.h>
#include <sqlite3.h>
#include <stdlib.h>
#include <string.h>

static int callback(void *data, int argc, char **argv, char **azColName)
{
  for (int i = 0; i < argc; i++)
    printf("  %s: %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
  printf("\n");

  return 0;
}

int main(int argc, char **argv)
{
  sqlite3 *db;
  char query[350],
      searchChar[30],
      dbFileName[300],
      *errMsg = 0,
      *queryBegin = "SELECT element_name AS 'Element Name', element_symbol AS Symbol, atomic_number AS 'Atomic Number',"
                    "classification AS Classification, atomic_mass AS 'Atomic Mass (g/mol)', density AS 'Density (g/cm^3)',"
                    "melting_point AS 'Melting Point (K)', boiling_point AS 'Boiling Point (K)' FROM periodic_table";
  int again, exit, opition, searchInt;

  sprintf(dbFileName, "%s/database.db", argc ? dirname(argv[0]) : ".");

  exit = sqlite3_open(dbFileName, &db);

  if (exit)
  {
    fprintf(stderr, "Could not connect to the database");
    return 1;
  }

  printf("\nPERIODIC TABLE\n");

  do
  {
    printf("\n1  - Find element by name\n"
           "2  - Find element by symbol\n"
           "3  - Find element by atomic number\n"
           "4  - Find elements by classification\n"
           "5  - Print all elements\n"
           "6  - Quit\n\n"
           "Enter an option: ");
    scanf("%d", &opition);

    do
    {
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
               "3  - Lanthanoids\n"
               "4  - Actinoids\n"
               "5  - Transition metals\n"
               "6  - Post-transition metals\n"
               "7  - Metalloids\n"
               "8  - Nonmetals\n"
               "9  - Halogens\n"
               "10 - Noble metals\n\n"
               "Enter an option: ");
        scanf("%d", &searchInt);
        switch (searchInt)
        {
        case 1:
          strcpy(searchChar, "alkali metals");
          break;
        case 2:
          strcpy(searchChar, "alkaline earth metals");
          break;
        case 3:
          strcpy(searchChar, "lanthanoids");
          break;
        case 4:
          strcpy(searchChar, "actinoids");
          break;
        case 5:
          strcpy(searchChar, "transition metals");
          break;
        case 6:
          strcpy(searchChar, "post-transition metals");
          break;
        case 7:
          strcpy(searchChar, "metalloids");
          break;
        case 8:
          strcpy(searchChar, "nonmetals");
          break;
        case 9:
          strcpy(searchChar, "halogens");
          break;
        case 10:
          strcpy(searchChar, "noble gases");
          break;
        default:
          printf("\nInvalid option");
          strcpy(searchChar, "NULL");
        }
        sprintf(query, "%s WHERE classification LIKE '%s'", queryBegin, searchChar);
        break;

      case 5:
        strcpy(query, queryBegin);
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
             "2  - Return the main menu\n"
             "3  - Quit\n\n"
             "Enter an option: ");
      scanf("%d", &again);

    } while (again == 1);
  } while (again == 2);

  sqlite3_close(db);

  return 0;
}
