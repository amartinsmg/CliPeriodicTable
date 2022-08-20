#include <stdio.h>
#include <libgen.h>
#include <sqlite3.h>
#include <stdlib.h>
#include <string.h>

static int printQuery(void *data, int argc, char **argv, char **azColName)
{
  *((int *)data) += 1;
  for (int i = 0; i < argc; i++)
    printf("  %s: %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
  printf("\n");

  return 0;
}

static int printOptions(void *data, int argc, char **argv, char **azColName)
{
  if (argc)
    printf("%2s  - %s\n", argv[0], argv[1]);

  return 0;
}

int main(int argc, char **argv)
{
  sqlite3 *db;
  char query[470] = "SELECT p.element_name AS 'Element Name', p.element_symbol AS Symbol, p.atomic_number AS 'Atomic Number',"
                    "c.classification_text AS Classification, p.atomic_mass AS 'Atomic Mass (g/mol)', p.density AS 'Density (g/cm^3)',"
                    "p.melting_point AS 'Melting Point (K)', p.boiling_point AS 'Boiling Point (K)' FROM periodic_table AS p "
                    "INNER JOIN classifications AS c ON p.classification = c.code ",
       dbFileName[300],
       searchChar[45],
       *errMsg = NULL,
       *queryEnd = query + strlen(query);
  int again, count = 0, exitCode, opition, searchInt;

  sprintf(dbFileName, "%s/database.db", argc ? dirname(argv[0]) : ".");

  exitCode = sqlite3_open(dbFileName, &db);

  if (exitCode)
  {
    fprintf(stderr, "%s\n", errMsg);
    exit(-1);
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
        sprintf(queryEnd, "WHERE p.element_name LIKE '%%%s%%'", searchChar);
        break;

      case 2:
        printf("Enter the element symbol: ");
        scanf("%s", searchChar);
        sprintf(queryEnd, "WHERE p.element_symbol LIKE '%s'", searchChar);
        break;

      case 3:
        printf("Enter the atomic number: ");
        scanf("%d", &searchInt);
        sprintf(queryEnd, "WHERE p.atomic_number = %d", searchInt);
        break;

      case 4:
        printf("\n");
        exitCode = sqlite3_exec(db, "SELECT code, classification_text FROM classifications",
                                printOptions, 0, &errMsg);
        if (exitCode)
        {
          fprintf(stderr, "%s\n", errMsg);
          exit(-1);
        }
        printf("\nEnter an option: ");
        scanf("%d", &searchInt);
        sprintf(queryEnd, "WHERE p.classification = %d", searchInt);
        break;

      case 5:
        *queryEnd = '\0';
        break;

      case 6:
        return 0;

      default:
        puts("Invalid option");
        return 0;
      }

      printf("\n");
      exitCode = sqlite3_exec(db, query, printQuery, &count, &errMsg);

      if (exitCode)
      {
        fprintf(stderr, "%s\n", errMsg);
        exit(-1);
      }

      if (!count)
        puts("  No results.");
      count = 0;

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
