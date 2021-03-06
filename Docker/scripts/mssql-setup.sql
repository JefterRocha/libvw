IF DB_ID('$(DATABASE_NAME)') IS NULL
  RESTORE DATABASE $(DATABASE_NAME)
  FROM DISK = '/$(BACKUP_FILENAME).bak'
  WITH MOVE '$(BACKUP_DATANAME)' TO '/var/opt/mssql/data/$(BACKUP_DATANAME).mdf',
  MOVE '$(BACKUP_DATANAME)_log' TO '/var/opt/mssql/data/$(BACKUP_DATANAME)_log.ldf'
  GO
