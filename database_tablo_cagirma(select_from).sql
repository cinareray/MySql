-- select * from shopapp.product--
			-- %% shopapp database içinden product isimli tabloyu komple çağırmak için. %%
-- select Name from shopapp.product -
			-- %% shopapp database içinden product isimli tablodan Name adlı sutunu çağırmak için. %%
select Name as Ad, Price as Fiyat from shopapp.product 
			-- %% shopapp database içinden product isimli tablodan Name sutununu Ad olarak, Price isimli sutunu fiyat olarak çağırmak için. --

            