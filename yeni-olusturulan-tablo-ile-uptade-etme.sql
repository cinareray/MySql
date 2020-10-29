-- istenilen veriler bir tablo oluşturulduktan sonra(secilen-tablo-yeni-tablo-olusturma.sql) manipüle işlemleri gerçekleştirilir 
-- ve daha sonra gerçek tablo üzerine uptade işlemi yapılabilir.

-- oluşturulan employees_performance tablosunda çalışanların emaill adresleri baziları değiştirildi 
-- ve şimdi asıl olan employees tablosuna uptade yapılacak

update employees e inner join employees_performance ep on  e.id = ep.employees_id
set e.email_address = ep.email_address
where ep.email_address LIKE '%uptade%'