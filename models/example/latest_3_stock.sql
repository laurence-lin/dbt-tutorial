

with max_timestamp as (
select max(time_stamp) max_t from stock_raw
)
select s.* 
from stock_raw s, max_timestamp m
where time_stamp > m.max_t - interval '3' day
