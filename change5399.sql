USE notorrents;

update store set id=15,firstdate='2011-10-27',tel_num='2410259764', city='Larissa',street='Kouma',post_code='41334'
WHERE id=5;

update employee set fullname='Nikiforos Zormpas',email='zorbas@hotmail.com', cv='cv 15',genre='MALE',store_id=15
WHERE afm='103640089';

update copies set AA=65, kind='dvd'
WHERE movie_id=204;

delete from factor where id=115;

delete from customer where afm='105200067';

delete from movie where id=203;

alter table movie drop description,add duration varchar(50);
