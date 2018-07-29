DROP DATABASE if exists notorrents;
CREATE DATABASE notorrents DEFAULT CHARSET=greek;
USE notorrents;

CREATE TABLE IF NOT EXISTS store(
  	id int NOT NULL,
	firstdate date NOT NULL,
	tel_num char(10) NOT NULL,
	city varchar(50) NOT NULL,
	street varchar(50) NOT NULL,
	str_num varchar(10) NOT NULL,
	post_code varchar(10) NOT NULL,
  	PRIMARY KEY (id)
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;

CREATE TABLE IF NOT EXISTS employee(
  fullname varchar(100) NOT NULL,
  afm char(9) NOT NULL,
  email varchar(50) NOT NULL,
  cv text NOT NULL,
  genre ENUM('MALE','FEMALE') NOT NULL,
  store_id int NOT NULL,
  PRIMARY KEY (afm),
  FOREIGN KEY (store_id) REFERENCES store(id)
  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;

CREATE TABLE IF NOT EXISTS factor(
  id int NOT NULL,
  fullname varchar(100) NOT NULL,
  birth_country varchar(50) NOT NULL,
  birth_year year(4) NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;

CREATE TABLE IF NOT EXISTS director(
  factor_id int NOT NULL,
  debut_year year(4) NOT NULL,
  debut_title varchar(250) NOT NULL,
  PRIMARY KEY (factor_id),
  FOREIGN KEY (factor_id) REFERENCES factor(id)
  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;

CREATE TABLE IF NOT EXISTS actor(
  factor_id int NOT NULL,
  high float(3,2) NOT NULL,
  characteristic varchar(250) NOT NULL,
  PRIMARY KEY (factor_id),
  FOREIGN KEY (factor_id) REFERENCES factor(id)
  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;

CREATE TABLE IF NOT EXISTS movie(
  id int NOT NULL,
  title varchar(20) NOT NULL,
  oscar ENUM('OSCARED','NOT_OSCARED') NOT NULL,
  description text, 
  country varchar(50) NOT NULL,
  release_year year(4) NOT NULL,
  director_id int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (director_id) REFERENCES director(factor_id)
  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;


CREATE TABLE IF NOT EXISTS disposes(
  store_id int NOT NULL,
  movie_id int NOT NULL,
  PRIMARY KEY (store_id,movie_id),
  FOREIGN KEY (store_id) REFERENCES store(id)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES movie(id)
  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;

CREATE TABLE IF NOT EXISTS copies(
  movie_id int NOT NULL,
  AA int(10) NOT NULL,
  kind varchar(50) NOT NULL,
  PRIMARY KEY (AA,movie_id),
  FOREIGN KEY (movie_id) REFERENCES movie(id)
  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;

CREATE TABLE IF NOT EXISTS customer(
  fullname varchar(100) NOT NULL,
  rec_date date NOT NULL,
  phone_num char(10) NOT NULL,
  afm char(9) NOT NULL,
  PRIMARY KEY (afm)
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;

CREATE TABLE IF NOT EXISTS rented(
  rent_date date NOT NULL,
  retern_date date NOT NULL,
  movie_id int NOT NULL,
  copies_AA int(10) NOT NULL,
  cust_afm char(9) NOT NULL,
  PRIMARY KEY (movie_id,copies_AA,cust_afm),
  FOREIGN KEY (movie_id) REFERENCES movie(id)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (copies_AA) REFERENCES copies(AA)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cust_afm) REFERENCES customer(afm)
  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;

CREATE TABLE IF NOT EXISTS category(
  id int NOT NULL,
  name varchar(50) NOT NULL,
  subcategory int,
  PRIMARY KEY (id),
  FOREIGN KEY (subcategory) REFERENCES category(id)
  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;

CREATE TABLE IF NOT EXISTS belongs(
  movie_id int NOT NULL,
  cat_id int NOT NULL,
  PRIMARY KEY (movie_id,cat_id),
  FOREIGN KEY (movie_id) REFERENCES movie(id)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cat_id) REFERENCES category(id)
  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;

CREATE TABLE IF NOT EXISTS participate(
  movie_id int NOT NULL,
  actor_id int NOT NULL,
  PRIMARY KEY (movie_id,actor_id),
  FOREIGN KEY (movie_id) REFERENCES movie(id)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (actor_id) REFERENCES actor(factor_id)
  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET greek COLLATE greek_general_ci;	
