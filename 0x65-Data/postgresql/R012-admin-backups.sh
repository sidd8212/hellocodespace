# create a backup of the postgresql database
# this is a cronjob that runs every day at 3:00 AM

# 0 3 * * * /bin/bash /0x65-Data/postgresql/R012-admin-backups.sh

pg_dump -U postgres -Fc -f /var/lib/postgresql/9.3/main/backup/$(date +%Y%m%d).dump postgres


# restore a backup of the postgresql database

pg_restore -U postgres -d postgres -Fc /var/lib/postgresql/9.3/main/backup/20150101.dump

# restore using psql

psql -U postgres -d postgres -f /var/lib/postgresql/9.3/main/backup/20150101.dump


# get the size of the database

psql -U postgres -d postgres -c "SELECT pg_database_size('postgres');"
# show the table wise size of the database

