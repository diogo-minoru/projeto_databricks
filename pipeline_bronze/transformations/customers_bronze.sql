CREATE OR REFRESH STREAMING LIVE TABLE yfinance
TBLPROPERTIES("quality"="bronze")
AS
SELECT *
FROM cloud_files(
  '/Volumes/lakehouse/raw_public/raw_yfinance/commodities/latest_prices/',
  'json',
  map('cloudFiles.inferColumnTypes', 'true',
  'cloudFiles.schemaEvolutionMode', 'addNewColumns',
  'cloudFiles.includeExistingFiles', 'true')
);