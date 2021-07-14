-- We've been live for almost a month now and we’re starting to generate sales.
-- Can you help me understand where the bulk of our website sessions are coming from,
-- through yesterday?

--I’d like to see a breakdown by UTM source, campaign and referring domain if possible.

select
    utm_source,
    utm_campaign,
    http_referer,
    count(*) record_count,
    count(website_session_id) sessions
from
    website_sessions
where
    created_at<'2012-12-04'
group by
    utm_source,
    utm_campaign,
    http_referer
order by
    sessions desc;