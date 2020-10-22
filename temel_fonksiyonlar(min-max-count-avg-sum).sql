-- Fonksiyonlar--
													-- MİN MAX
-- select min(price) as 'en ucuz' from shopapp.product 
-- select max(Price) as Enpahali from shopapp.product
			-- Min max fonksiyonlarının kullanımı yukarıdaki gibidir. Parantez içerisindeki database'de kolonların(numeric olan kolonlarda) sıralama yapılabilir.
-- select Price,Name from shopapp.product order by Price limit 1
			-- order by ilede sıralama yapılım daha sonrada 'limit 1' yazılarak ilk sıradaki alınabilir. [ limit 1 Mssql'de top 1 şekilde ifade edilir. ]
--  select Price,Name from shopapp.product order by Price DESC limit 1
			-- order by ile DESC edilerek sıralandı limit 1 ile ilk ifade alındı ve en pahalı ürün bilgisi karşımızda.
 
												-- AVG - SUM
-- select avg(price) as ortalama from shopapp.product
		-- fiyat kolonunun ortalaması alındı.
-- select sum(price) as toplama from shopapp.product
		-- fiyat kolonu toplandı.

												-- count 
-- select count(Id) from shopapp.product
		-- Id kolununda kaç tane satır oldugu bilgisi alındı.Yani toplam ürün sayısına ulaşıldı.


