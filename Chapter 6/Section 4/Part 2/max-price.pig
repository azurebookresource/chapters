--Load dataset
stock_records = LOAD '/user/input/stockdata' USING PigStorage(',') as (ticker:chararray, date:datetime, price:float);

--Group records by ticker
grp_by_tic = GROUP stock_records BY ticker;

--Calculate maximum price
max_price = FOREACH grp_by_tic GENERATE group, MAX(stock_records.price) as maxprice;

--Store output
STORE max_price INTO 'output/pig/stocks' USING PigStorage(',');