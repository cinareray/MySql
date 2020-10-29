-- left join ile yazılan tablolalrın sol tarafındaki tabloda olan ancak sag tarafındaki tabloda olmayan kolonlar ekrana getirilir
-- örnek olarak cutomers(müşteri) tablosunda olan ancak hiç siparis vermyen yani orders(siparişler) tablosunda  olamayan kişileri ekrana getirelim ve mail adreslerini alalım.
-- yani sol taraftaki tablonun hepsi ve sag taraftaki kesişen kayıtlar gelir.
select c.id , concat(c.first_name,c.last_name) as name ,orders.id, c.email_address from customers c
left join orders on c.id = orders.customer_id
where orders.id is null 