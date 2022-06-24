#!/bin/bash

[ -d db ] || mkdir db
[ -e db/periodic.db ] && rm db/periodic.db
sqlite3 db/periodic.db < src/createdb.sql
