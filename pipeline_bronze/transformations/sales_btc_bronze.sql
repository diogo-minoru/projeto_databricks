CREATE OR REFRESH STREAMING LIVE TABLE sales_btc
TBLPROPERTIES("quality"="bronze")
AS
SELECT *, current_timestamp() as ingested_at
FROM STREAM(lakehouse.raw_public.sales_btc);