CREATE OR REFRESH STREAMING LIVE TABLE customers
TBLPROPERTIES("quality"="bronze")
AS
SELECT *, current_timestamp() as ingested_at
FROM STREAM(lakehouse.raw_public.customers);