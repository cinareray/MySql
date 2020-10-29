-- Tablolardan istediğimiz veriyi alındığında ayrı bir tablo olarak kaydetmek istersek eğer insert into .... edilerek yapılabilir
-- insert into tabloname (kolon sıralamaları önemli)

-- satış yapan çalışanları ve ne kadar satış yaptığını bulmak istediğimiz bir tablo gözlemleyip employees_performance tablosuna kayıt kaydedelim

insert into employees_performance (employees_id, Name, email_address, satis_adedi)
select e.id, concat(e.first_name,'  ', e.last_name) as Name,e.email_address, count(e.id) as adet
from employees e left join orders o
on e.id = o.employee_id
group by e.id
order by adet desc