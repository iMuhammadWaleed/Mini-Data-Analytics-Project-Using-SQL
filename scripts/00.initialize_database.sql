-- ================================================
-- Script: Restore DataWarehouse Database from .bak
-- Description: Restores a database from a .bak file.
--
-- How to use:
--   1. Download 'DataWarehouse.bak.zip' from the /datasets folder
--   2. Extract it to a folder (e.g., C:\DBBackups) to get 'DataWarehouse.bak'
--   3. Replace the path below with the folder containing the extracted .bak file
-- ================================================

PRINT 'Starting database restore...';

RESTORE DATABASE DataWarehouse
  FROM DISK = N'<<YOUR_EXTRACTED_PATH>>\DataWarehouse.bak'  -- ← Replace this
  WITH FILE = 1,
       REPLACE,
       STATS = 10;

PRINT 'Database restore completed successfully.';
GO
