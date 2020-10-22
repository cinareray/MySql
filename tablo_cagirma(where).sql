-- select * from shopapp.product
-- select * from shopapp.product where Name='Iphone'
		-- Shopapp database içinden product tablosundan ismi Iphone olan bütün sutunlar getirildi.
-- select * from shopapp.product where Price<3000 And Price>=2000 And Name = 'Iphone'
		-- 2000 , 3000 arasında Iphone markalı telefonlar databasede görntülendi.
-- SELECT * FROM shopapp.product where Id = 3
		-- Ürün  Kodu 3 olan ürün ekrana getirildi. 
-- select * from shopapp.product where Model = '4s'
select * from shopapp.product where Model = 'A51' And Name = 'Samsung' And Price<4000 
