--Q USE OF CASE STATEMENT AND COUNT FUNCTION
select
    order_id,
    primary_product_id,
    items_purchased,
    CASE WHEN items_purchased = 1 THEN order_id ELSE NULL END AS single_item_orders
from
    orders
where
    order_id between 3100 and 3200;