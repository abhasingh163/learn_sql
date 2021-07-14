--Q. how much revenue our paid campaigns are driving?

select
    ws.utm_campaign,
    sum((o.price_usd * o.items_purchased)) revenue
from
    website_sessions ws
    join
    orders o
    on
        (
        ws.website_session_id = o.website_session_id
        )
group by
    ws.utm_campaign;