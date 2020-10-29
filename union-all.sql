-- union all: join ile seçilen kolonlar yan yana sıralanırken union ile seçilen kolonlar alt alta sıralanabilir

-- employees ile customers tablolarının city alanlarını birleştirelim

select employees.city from  employees 
union -- tekrarlananalar yazılmaz
select  customers.city from customers  

-- union all ise tekrarlanan kısımlar tekrar yazılır 

select employees.city from  employees 
union all -- tekrarlananalar yazılmaz
select  customers.city from customers  



select customers.business_phone as 'Phone', customers.fax_number as 'fax-phone'  from customers
union 
select employees.business_phone as 'Phone', employees.fax_number as 'fax-phone' from employees
