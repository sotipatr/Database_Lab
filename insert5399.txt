USE notorrents;

INSERT INTO store (id,firstdate,tel_num,city,street,str_num,post_code)  VALUES
(1,'2000-05-28','2610222555','Patra','Agias Sofias','23','13456'),
(2,'2003-04-05','2313784759','Lamia','Lemesou','45','23477'),
(3,'1994-09-27','2842083689','Rethumno','Kimhs','89','13785'),
(4,'1993-10-20','2105765806','Athhna','Kappadokias','12','13121'),
(5,'2010-08-01','2546859980','Volos','Lidras','32','13222'),
(6,'1999-12-04','2302865878','Thessalonikh','Aratou','128','45667');

INSERT INTO employee (fullname,afm,email,cv,genre,store_id) VALUES
('Neofytos Kwstas','105200068','neofytos@gmail.com','cv 1','MALE',1),
('Papadopoulou Niki','200000333','papadop@gmail.com','cv 2','FEMALE',2),
('Xristou Theodwra','100000250','theodxristo@gmail.com','cv 3','FEMALE',3),
('Tzatzadaki Maria', '100000128','tzatzadmar@yahoo.gr','cv 4','FEMALE',4),
('Anagnostopoulos Xristos','103640089','anagnos@hotmail.gr','cv 5','MALE',5),
('Kostopoulos Stavros','210000050','kostopoulos@hotmail.com','cv 6','MALE',6);

INSERT INTO factor (id,fullname,birth_country,birth_year) VALUES
(101,'Gary Ross','USA','1956'),
(102,'Jennifer Lawrence','USA','1990'),
(103,'Liam John Neeson','Northern Ireland','1952'),
(104,'Steven Allan Spielberg','USA','1946'),
(105,'Ralph Fiennes','England','1962'),
(106,'Fernando Meirelles','Brazil','1955'),
(107,'Joe Carnahan','USA','1969'),
(108,'Dermot Mulroney','USA','1963'),
(109,'Josh Hutcherson','USA','1992'),
(110,'Quentin Tarantino','USA','1963'),
(111,'Jamie Foxx','USA','1967'),
(112,'Christoph Waltz','Austria','1956'),
(113,'Justin Lin','Taiwan','1973'),
(114,'Paul Walker','USA','1973'),
(115,'Vin Diesel','USA','1967'),
(116,'Tom Hanks','USA','1956'),
(117,'Martin Scorsese','USA','1942'),
(118,'Leonardo DiCaprio','USA','1974');

INSERT INTO director (factor_id,debut_year,debut_title) VALUES
(101,'1988','Big'),
(104,'1971','Duel'),
(106,'1998','O Menino Maluquinho 2'),
(107,'1998','Blood, Guts, Bullets and Octane'),
(110,'1980','My Best Friend`s Birthday'),
(113,'2002','Better Luck Tomorrow'),
(117,'1963','What`s a Nice Girl Like You Doing in a Place Like This?');

INSERT INTO actor (factor_id,high,characteristic) VALUES
(102,1.71,'she has blue eyes and blond hair'),
(103,1.93,'he has blue eyes and he is Irish'),
(105,1.80,'he has blue eyes and brown hair'),
(108,1.74,'he has brown eyes and handsome'),
(109,1.67,'he has blue eyes and blond hair'),
(111,1.75,'he is Dark-haired and buff'),
(112,1.70,'he has blue eyes and grey hair'),
(114,01.88,'he has blue eyes blond hair and handsome'),
(115,1.82,'he is muscle and jovial guy'),
(116,01.83,'he has blue eyes and he`s smiling'),
(118,01.83,'he has blue eyes and blond hair');

INSERT INTO movie (id,title,oscar,description,country,release_year,director_id) VALUES
(201,'Hunger Games','NOT_OSCARED','Katniss Everdeen voluntarily takes her younger sister`s place in the Hunger Games, a televised fight to the death in which two teenagers from each of the twelve Districts of Panem are chosen at random to compete.','USA',2012,101),
(202,'Schindler`s List','OSCARED','In Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.','USA',1993,104),
(203,'The Terminal','NOT_OSCARED','An eastern immigrant finds himself stranded in JFK airport, and must take up temporary residence there. ','USA',2004,104),
(204,'The Grey','NOT_OSCARED','After their plane crashes in Alaska, six oil workers are led by a skilled huntsman to survival, but a pack of merciless wolves haunts their every step.','USA',2011,107),
(205,'Inglourious Basterds','OSCARED','In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner`s vengeful plans for the same.','USA',2009,110),
(206,'Fast Five','NOT_OSCARED','Dominic Toretto and his crew of street racers plan a massive heist to buy their freedom while in the sights of a powerful Brazilian drug lord and a dangerous federal agent.','USA',2011,113),
(207,'The Constant Gardener','OSCARED','A widower is determined to get to the bottom of a potentially explosive secret involving his wife`s murder, big business, and corporate corruption.','USA',2005,106),
(208,'Django Unchained','OSCARED','With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.','USA',2012,110),
(209,'The Departed','OSCARED','An undercover state cop who has infiltrated an Irish gang and a mole in the police force working for the same mob race to track down and identify each other before being exposed to the enemy, after both sides realize their outfit has a rat.','USA',2006,117);

INSERT INTO disposes (store_id,movie_id) VALUES
(1,201),
(1,202),
(1,204),
(1,205),
(1,206),
(1,207),
(1,208),
(1,209),
(2,201),
(2,202),
(2,205),
(2,206),
(2,207),
(2,208),
(2,209),
(3,202),
(3,203),
(3,205),
(3,207),
(3,208),
(4,201),
(4,202),
(4,203),
(4,204),
(4,205),
(4,206),
(4,207),
(4,208),
(4,209),
(5,201),
(5,203),
(5,205),
(5,207),
(5,208),
(6,201),
(6,202),
(6,205),
(6,207),
(6,208),
(6,209);

INSERT INTO copies (movie_id,AA,kind) VALUES
(201,50,'blu-ray'),
(202,100,'dvd'),
(203,70,'dvd'),
(204,75,'blu-ray'),
(205,83,'blu-ray'),
(206,56,'blu-ray'),
(207,92,'dvd'),
(208,108,'blu-ray'),
(209,89,'blu-ray');

INSERT INTO customer (fullname,rec_date,phone_num,afm) VALUES
('Gewrgiou Nikh','1995-03-10','2109348567','105200067'),
('Thewdorou Iwannhs','1999-07-09','2374579833','105254567'),
('Papadopoulos Nikiforos','1994-05-05','2842345879','345234567'),
('Fwtiou Kwnstantina','2000-08-12','2345689352','786675676'),
('Rigou Argurhs','2002-04-20','2163490765','164585878'),
('Dhmitriou Xristos','2012-01-23','2452137589','212456677'),
('Zaxariou Maria','2005-09-02','2105346789','125788543'),
('Antwniouiou Panagiwta','2011-11-28','2613456319','143267764');

INSERT INTO rented (rent_date,retern_date,movie_id,copies_AA,cust_afm) VALUES 
('2013-09-20','2013-09-29',201,50,'105200067'),
('2013-05-23','2013-05-28',206,56,'105254567'),
('2013-03-05','2013-03-10',209,89,'345234567'),
('2013-11-14','2013-11-20',203,70,'786675676'),
('2013-07-11','2013-07-19',204,75,'164585878'),
('2013-01-18','2013-01-25',207,92,'212456677'),
('2013-04-19','2013-04-26',208,108,'125788543'),
('2013-08-16','2013-08-21',202,100,'143267764');

INSERT INTO category (id,name,subcategory) VALUES
(301,'Adventure',NULL),
(302,'Sci-Fi',NULL),
(303,'Thriller',NULL),
(304,'Biography',NULL),
(305,'Drama',301),
(306,'History',302),
(307,'Comedy',303),
(308,'Action',304),
(309,'War',305),
(310,'Crime',309),
(311,'Mystery',306),
(312,'Western',308);

INSERT INTO belongs (movie_id,cat_id) VALUES
(201,301),
(201,302),
(201,303),
(202,304),
(202,305),
(202,306),
(203,307),
(203,305),
(204,308),
(204,301),
(204,305),
(205,301),
(205,305),
(205,309),
(206,308),
(206,310),
(206,303),
(207,305),
(207,311),
(207,303),
(208,301),
(208,305),
(208,312),
(209,303),
(209,305),
(209,310);

INSERT INTO participate (movie_id,actor_id) VALUES
(201,102),
(201,109),
(202,103),
(202,105),
(203,116),
(204,103),
(204,108),
(205,112),
(206,114),
(206,115),
(207,105),
(208,111),
(208,112),
(208,118),
(209,118);
