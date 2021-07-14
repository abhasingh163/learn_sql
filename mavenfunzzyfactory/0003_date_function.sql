select
    count(distinct website_session_id) as sessions,
    week(created_at) as created_wk,
    month(created_at) as created_mth,
    year(created_at) as created_yr,
    min(date(created_at)) as start_date
from
    website_sessions
where
    website_session_id between 100000 and 1500000
group by
    2,3,4;
