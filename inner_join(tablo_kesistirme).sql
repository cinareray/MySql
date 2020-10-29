			-- inner join kesiştirme:  İki ayrı tablodan veriler alınarak bir tablo oluşturmak için
			-- orders tablosununda ki customers id kolonu ile customers tablosunun id kolununu eşleştirilerek oluşturulan bir tablo. 
select orders.id, concat(customers.first_name, customers.last_name)as customers_name, orders.order_date, customers.city as city
from orders inner join customers 
on orders.customer_id =customers.id  
where customers.city  LIKE '%New%'