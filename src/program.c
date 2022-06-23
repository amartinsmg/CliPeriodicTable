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
  char *errMsg, *query;
  int exit, i;

  exit = sqlite3_open("periodic.db", &db);


  
  sqlite3_close(db);

  return 0;
}
