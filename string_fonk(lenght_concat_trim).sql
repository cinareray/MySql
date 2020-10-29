					-- Sık kullanılan String Fonksiyonları
			-- Karakter Uzunlugunu: lenght()
-- select Name,length(Name) from shopapp.product
-- select length('Eray ÇINAR') as karakter_uzunlugu
-- select Description, length(Description) as Tanim_uzunlugu from shopapp.product

			-- Left() Right() sag ve sol kenarlardan karakter alma 
-- select left(Name,3) as Name from shopapp.product
-- select right(Model, 3) as Model from shopapp.product

	-- concat()  concatecation('birbirine' , 'bağlama') 
-- select concat('Merhaba', 'Dün','ya') as birbirine_baglama
-- select concat(left(Name,3),'...') as Model from shopapp.product

			-- lower() upper() string ifadelerin buyuk ve kucuk karakterlere donusturulmesi
-- select lower('ERAY ÇınaR') as isim
-- select upper('büyük harfler') as isim
-- select concat(upper(Name),'   ', lower(Model)) as Name_model from shopapp.product

			-- replace() string ifadede değiştirme
-- select lower(replace('E ray ÇIN AR',' ', '-')) as Name
-- select reverse('Eray ÇINAR')
 