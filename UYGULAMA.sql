-- hangi üründen kaç tane satılmış..?

select o.id as 'siparis-id' ,p.product_name, p.product_code, count(*) as adet
from customers c inner join orders o on c.id = o.customer_id
inner join order_details od  on o.id = od.order_id
inner join products p on od.product_id = p.id
group by p.product_name 
order by adet

-- En çok kazandıran ilk 3 ürün hangileridir ??

select od.id , p.product_name, sum(od.quantity*od.unit_price) as total
from order_details od
inner join products p  on od.product_id = p.id
group by p.product_name
order by total DESC
limit 3

-- Hangi kargo şirketlerine toplam ne kadar ödeme yapılmış ? 

select s.company, sum(o.shipping_fee) as total
from orders o inner join shippers s on o.shipper_id = s.id
group by company
order by total

-- En uygun kargo fiyatı nedir ? 

select s.company, avg(o.shipping_fee)  as 'Ortalama'
from orders o inner join shippers s on o.shipper_id = s.id
where o.shipping_fee>0 
group by s.company 
having count(o.id) > 10  -- gruplanan kargolarda en az 10 tane kargo paketi olanların ortalamasını gösterelim. 
order by 'Ortalama'



