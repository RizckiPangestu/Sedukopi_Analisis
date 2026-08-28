SELECT 
od.detail_id,
od.order_id,
od.item_id,
mi.name,
mi.category,
od.quantity,
od.subtotal,
od.unit_price,
mi.cost_price,
(od.unit_price - mi.cost_price) as profit
FROM order_details od
LEFT JOIN menu_items mi on od.item_id = mi.item_id;