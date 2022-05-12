-- Statement(1)
CREATE EXTERNAL TABLE IF NOT EXISTS stocks_data (ticker STRING, ymd STRING, price FLOAT) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',';


-- Statement(2)
LOAD DATA INPATH '/user/hive/input/stockdata' OVERWRITE INTO TABLE stocks_data;


-- Statement(3)
SELECT ticker, max(price) max_price FROM stocks_data GROUP BY ticker;

