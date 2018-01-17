-- Dump of table addresses

CREATE TABLE `addresses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(200) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `addresses` (`id`, `address`)
VALUES
	(1,'1 Hopeland Avenue, Surfers Paradise QLD 4217'),
	(2,'25 Felton Road, Slacks Creek QLD 4127');



-- Dump of table users

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `gender` tinyint(1) unsigned NOT NULL,
  `date_of_birth` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `date_of_birth`)
VALUES
	(1,'Jenny','Carter',2,'1999-05-07'),
	(2,'Matthew','Carter',1,'1993-08-24'),
	(3,'Mark','Carter',1,'1970-01-22'),
	(4,'Victoria','Carter',2,'1972-09-01'),
	(5,'Marcus','Ive',1,'1980-08-31'),
	(6,'Nicki','Ive',2,'1985-12-12');


-- Dump of table transactions

CREATE TABLE `transactions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `amount_spent` decimal(7,2) unsigned NOT NULL,
  `description` varchar(200),
  `time_spent` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `transactions` (`id`, `user_id`, `amount_spent`, `description`, `time_spent`)
VALUES
	(1,1,152.00,'Birthday present for friend','2018-01-17 04:57:27'),
	(2,2,99.99,'New bike','2018-01-05 03:02:25'),
	(3,3,540.00,'Weekly rent','2018-01-17 05:08:15'),
	(4,3,85.43,'Groceries','2018-01-12 00:11:05'),
	(5,4,35.00,'Lawnmower engine oil','2018-01-17 00:09:37'),
	(6,1,70.00,NULL,'2018-01-02 05:10:04'),
	(7,5,380.00,'Weekly rent','2018-01-17 05:12:20'),
	(8,5,22000.00,'New car','2018-01-22 05:12:39');



-- Dump of table user_addresses

CREATE TABLE `user_addresses` (
  `user_id` int(11) unsigned NOT NULL,
  `address_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`address_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `user_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_addresses_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user_addresses` (`user_id`, `address_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,2),
	(6,2);
