-- Hiç sipariş vermeyen kullanıcıları database den silelim (bilgilerin hepsi gitmemesi açısından sadece 1 tanesi silinecektir.)

insert into siparis_vermeyen_musteriler (customer_id, Name)  -- bu kişiler bir tabloda tutuldu
select c.id, concat(c.first_name,c.last_name) as name
from customers c left join orders o 
on c.id = o.customer_id
where o.customer_id is null 

--  13 id kişi silindi 
delete customers from customers left join orders on customers.id = orders.customer_id
where orders.customer_id is null and customers.id = 13