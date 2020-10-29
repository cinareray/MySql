		-- Customers, orders, order_details, products tabloları birleştirilerek müsterinin adı soy adı sipariş tarihi ve toplam ödediği fiyatı ekrana yazdırabildik

select customers.id, concat(customers.last_name, customers.first_name) as Name, orders.order_date,  order_details.quantity, order_details.unit_price, sum(order_details.quantity*order_details.unit_price) as total
from orders inner join customers on orders.customer_id = customers.id
inner join order_details on orders.id = order_details.order_id
inner join products on order_details.product_id = products.id
group by Name


-- gelen siparişişn hangi şirketten ve ne kadar fiyat verdiklerini gösteren tablo

select  customers.id ,customers.company, sum(od.quantity*od.unit_price) total
from  customers inner join orders on customers.id = orders.customer_id 
inner join order_details od on orders.id = od.order_id
group by id
order by id 
