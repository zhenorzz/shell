#!/bin/bash
DATE=`date -d -1day +%Y%m%d`
expect mongobackup.exp
mongodump --port xxxx -d db_name -o /data/mongodb/backup/local
mongorestore --port xxxx --nsInclude 'db_name.*' --dir /data/mongodb/backup/timing_backup_${DATE}/dump
