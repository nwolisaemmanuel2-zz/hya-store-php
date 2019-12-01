

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(175) NOT NULL,
  `password` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime NOT NULL,
  `permissions` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO admin_users VALUES("1","Emmanuel Ekene","nwolisaemmanuel","$2y$10$O5949kgCJ4V7yH0V21Avp.j8hNAud/SKFPCWTjSZ6AcO0oYruzsp6","2017-10-02 17:30:28","2018-11-29 11:25:18","admin,sale");
INSERT INTO admin_users VALUES("2","Kofi Ama","kofiama","$2y$10$vGXXAg06zhfajU5lV9o.A.Fnhumi9vGdPdzSh62m/nh7XdsYaCIiW","2017-10-03 08:05:58","2018-02-15 22:03:32","sale");
INSERT INTO admin_users VALUES("3","Ama Yaa","ama12","$2y$10$zT4jOknYVFqsgPLX9VPC8ugH5XxYg4tKIo97jtkbKLNQYOoz0spQu","2018-02-15 22:34:11","0000-00-00 00:00:00","sale");
INSERT INTO admin_users VALUES("4","Emmanuel John","john12","$2y$10$VWaTd.1EQZfkVGJvZ9P0Fe.X72lJxWw4/7aUIazabyjH9oVRuxksC","2018-02-15 22:41:46","0000-00-00 00:00:00","sale");
INSERT INTO admin_users VALUES("5","kofi ama","kofi123","$2y$10$.uLLdLM0aRsFuEOxyy7Q6OsO9vYgTVwPQ8nkju8L4Yjgje15uKJme","2018-02-16 11:47:15","2018-02-16 13:22:40","sale");





CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO collection VALUES("1","02/13/2018","","IN-330282","100","cool","-100");
INSERT INTO collection VALUES("2","02/13/2018","hh","IN-529053","23","df","-23");
INSERT INTO collection VALUES("3","02/13/2018","","IN-23252","","","-100");
INSERT INTO collection VALUES("4","02/13/2018","","IN-26330","200","paid","-300");
INSERT INTO collection VALUES("5","02/15/2018","","IN-232333","100","good","-400");





CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO customer VALUES("1","Kwame Emmanuel","Kumasi Ghana","0201703337","2000","Vitamin","2018-02-14","good");
INSERT INTO customer VALUES("2","KOFI JOHN","ADUM KUMASI GHANA","0542494320","1000","COKE","2018-02-19","TIS IS GOOD");





CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` enum('Member','Administrator','') NOT NULL DEFAULT 'Member',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO login VALUES("1","admin","21232f297a57a5a743894a0e4a801fc3","Administrator");
INSERT INTO login VALUES("2","user","ee11cbb19052e40b07aac0ca060c23ee","Member");





CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL,
  `category` varchar(100) NOT NULL,
  `wholesaleprice` varchar(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO products VALUES("2","Vitamin ","Vitamin D"," this product is good ","","45","50","5","","0","83","10","2018-12-21","2018-02-13","","");
INSERT INTO products VALUES("3","Vitamin ","Vitamin C"," GOOD ","","15","20","5","","0","0","11","2018-02-24","2018-02-13","","");
INSERT INTO products VALUES("4","Vitamin ","Vitamin A"," NICE","","4","5","1","","0","123231","15","2018-02-21","2018-02-13","","");
INSERT INTO products VALUES("5","coca cola","big coke"," 1.5L","","7","9","2","Kath company","0","15","20","2018-02-23","2018-02-16","","");
INSERT INTO products VALUES("6","P-090203","FFAA"," QWDDF","","12","120","108","Kath company","0","65","67","2018-11-28","2018-11-28","","");
INSERT INTO products VALUES("7","fefeq","eemmanyekk","fasfawffa ","","30","124","94","Kath company","0","67","67","2018-11-21","2018-11-28","","");
INSERT INTO products VALUES("8","emmanuel","emaanngt"," emanuel","","23","23","0","","0","20","23","2018-11-28","2018-11-28","","");





CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO purchases_item VALUES("1","Vitamin ","0","0","");
INSERT INTO purchases_item VALUES("2","Vitamin ","0","0","");





CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `mobilemoney` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

INSERT INTO sales VALUES("1","RS-30320230","Admin","01/30/18","cash","12","1","20","","","");
INSERT INTO sales VALUES("2","RS-32203","Admin","02/13/18","cash","150","","200","","","");
INSERT INTO sales VALUES("3","RS-232230","Admin","02/13/18","cash","125","","200","","","");
INSERT INTO sales VALUES("4","RS-0293323","Admin","02/13/18","cash","5","","20","","","");
INSERT INTO sales VALUES("5","RS-32023535","Admin","02/14/18","cash","20","","20","","","");
INSERT INTO sales VALUES("6","RS-5002237","Cashier Pharmacy","02/15/18","cash","","","100","","","");
INSERT INTO sales VALUES("7","RS-3300327","Cashier Pharmacy","02/15/18","cash","40","","100","","","");
INSERT INTO sales VALUES("8","RS-363330","Cashier Pharmacy","02/15/18","cash","20","","789","","","");
INSERT INTO sales VALUES("9","RS-330320","Cashier Pharmacy","02/15/18","cash","20","","80","","","");
INSERT INTO sales VALUES("10","RS-430320","Cashier Pharmacy","02/15/18","cash","20","","40","","","");
INSERT INTO sales VALUES("11","RS-3630334","Admin","02/15/18","cash","50000500","","400000","","","");
INSERT INTO sales VALUES("12","RS-28232230","Admin","02/15/18","cash","20","","20","","","");
INSERT INTO sales VALUES("13","RS-32737332","","02/15/18","cash","20","","50","","","");
INSERT INTO sales VALUES("14","RS-27302280","","02/16/18","cash","20","","20","","","");
INSERT INTO sales VALUES("15","RS-9233333","","02/16/18","cash","10","","20","","","");
INSERT INTO sales VALUES("16","RS-3343383","","02/16/18","cash","9","","10","","","");
INSERT INTO sales VALUES("17","RS-36332","","11/12/18","cash","20","5","1234","","","");
INSERT INTO sales VALUES("18","RS-22220","","11/28/18","cash","24","5","100","","","");
INSERT INTO sales VALUES("19","RS-20223092","","11/28/18","cash","29","7","200","","","");
INSERT INTO sales VALUES("20","RS-392220","","11/28/18","cash","","","1234","","","");
INSERT INTO sales VALUES("21","","","11/28/18","cash","59","7","100","","","");
INSERT INTO sales VALUES("22","RS-40368933","","11/28/18","cash","120","108","1000","","","");
INSERT INTO sales VALUES("23","RS-232373","","11/28/18","cash","120","108","120","","","");
INSERT INTO sales VALUES("24","RS-7332202","","11/28/18","cash","20","5","100","","","");
INSERT INTO sales VALUES("25","RS-22020322","","11/28/18","cash","5","1","20","","","");
INSERT INTO sales VALUES("26","RS-203363","","11/28/18","cash","200","20","300","","","");
INSERT INTO sales VALUES("27","RS-058002","","11/28/18","cash","20","5","18","","","2");
INSERT INTO sales VALUES("28","RS-0223553","","11/28/2018","cash","50","5","40","","","14");
INSERT INTO sales VALUES("29","RS-2928337","","11/28/2018","cash","40","10","40","","","0");
INSERT INTO sales VALUES("30","RS-20365","","11/28/2018","cash","50","5","100","","","23");
INSERT INTO sales VALUES("31","RS-3242055","","11/29/2018","cash","9","2","0","","","50");
INSERT INTO sales VALUES("32","RS-73423023","","11/29/2018","cash","66","0","100","","","0");





CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

INSERT INTO sales_order VALUES("1","RS-30320230","1","1","12","1","kkjsj","jj","jjjk ","12","","01/30/18");
INSERT INTO sales_order VALUES("2","RS-32203","2","3","150","15","Vitamin ","Vitamin D"," this product is good","50","","02/13/18");
INSERT INTO sales_order VALUES("3","RS-232230","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/13/18");
INSERT INTO sales_order VALUES("4","RS-232230","2","2","100","10","Vitamin ","Vitamin D"," this product is good ","50","","02/13/18");
INSERT INTO sales_order VALUES("5","RS-232230","4","1","5","1","Vitamin ","Vitamin A"," NICE","5","","02/13/18");
INSERT INTO sales_order VALUES("6","RS-0293323","4","1","5","1","Vitamin ","Vitamin A"," NICE","5","","02/13/18");
INSERT INTO sales_order VALUES("7","RS-32023535","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/14/18");
INSERT INTO sales_order VALUES("8","RS-3300327","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/15/18");
INSERT INTO sales_order VALUES("9","RS-3300327","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/15/18");
INSERT INTO sales_order VALUES("10","RS-32233607","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/15/18");
INSERT INTO sales_order VALUES("11","RS-363330","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/15/18");
INSERT INTO sales_order VALUES("12","RS-330320","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/15/18");
INSERT INTO sales_order VALUES("13","RS-430320","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/15/18");
INSERT INTO sales_order VALUES("14","RS-3630334","2","10","500","50","Vitamin ","Vitamin D"," this product is good ","50","","02/15/18");
INSERT INTO sales_order VALUES("15","RS-3630334","4","10000000","50000000","10000000","Vitamin ","Vitamin A"," NICE","5","","02/15/18");
INSERT INTO sales_order VALUES("16","RS-28232230","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/15/18");
INSERT INTO sales_order VALUES("17","RS-9223532","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/15/18");
INSERT INTO sales_order VALUES("18","RS-9223532","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/15/18");
INSERT INTO sales_order VALUES("19","RS-32737332","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/15/18");
INSERT INTO sales_order VALUES("20","RS-27302280","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","02/16/18");
INSERT INTO sales_order VALUES("21","RS-9233333","4","2","10","2","Vitamin ","Vitamin A"," NICE","5","","02/16/18");
INSERT INTO sales_order VALUES("22","RS-3343383","5","1","9","2","coca cola","big coke"," 1.5L","9","","02/16/18");
INSERT INTO sales_order VALUES("23","RS-36332","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","11/12/18");
INSERT INTO sales_order VALUES("24","RS-22220","4","1","5","1","Vitamin ","Vitamin A"," NICE","5","","11/28/18");
INSERT INTO sales_order VALUES("25","RS-22220","4","1","5","1","Vitamin ","Vitamin A"," NICE","5","","11/28/18");
INSERT INTO sales_order VALUES("26","RS-22220","4","1","5","1","Vitamin ","Vitamin A"," NICE","5","","11/28/18");
INSERT INTO sales_order VALUES("27","RS-22220","5","1","9","2","coca cola","big coke"," 1.5L","9","","11/28/18");
INSERT INTO sales_order VALUES("28","RS-20223092","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","11/28/18");
INSERT INTO sales_order VALUES("29","RS-20223092","5","1","9","2","coca cola","big coke"," 1.5L","9","","11/28/18");
INSERT INTO sales_order VALUES("36","","2","1","50","5","Vitamin ","Vitamin D"," this product is good ","50","","11/28/18");
INSERT INTO sales_order VALUES("37","","5","1","9","2","coca cola","big coke"," 1.5L","9","","11/28/18");
INSERT INTO sales_order VALUES("38","RS-40368933","6","1","120","108","P-090203","FFAA"," QWDDF","120","","11/28/18");
INSERT INTO sales_order VALUES("39","RS-232373","6","1","120","108","P-090203","FFAA"," QWDDF","120","","11/28/2018");
INSERT INTO sales_order VALUES("40","RS-7332202","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","11/28/2018");
INSERT INTO sales_order VALUES("41","RS-22020322","4","1","5","1","Vitamin ","Vitamin A"," NICE","5","","11/28/2018");
INSERT INTO sales_order VALUES("42","RS-203363","2","4","200","20","Vitamin ","Vitamin D"," this product is good ","50","","11/28/2018");
INSERT INTO sales_order VALUES("47","RS-058002","3","1","20","5","Vitamin ","Vitamin C"," GOOD ","20","","11/28/2018");
INSERT INTO sales_order VALUES("48","RS-0223553","2","1","50","5","Vitamin ","Vitamin D"," this product is good ","50","","11/28/2018");
INSERT INTO sales_order VALUES("49","RS-2928337","3","1","10","5","Vitamin ","Vitamin C"," GOOD ","20","","11/28/2018");
INSERT INTO sales_order VALUES("50","RS-2928337","3","1","30","5","Vitamin ","Vitamin C"," GOOD ","20","","11/28/2018");
INSERT INTO sales_order VALUES("51","RS-20365","2","1","50","5","Vitamin ","Vitamin D"," this product is good ","50","","11/28/2018");
INSERT INTO sales_order VALUES("52","RS-3242055","5","1","9","2","coca cola","big coke"," 1.5L","9","","11/29/2018");
INSERT INTO sales_order VALUES("53","RS-3334345","8","1","23","0","emmanuel","emaanngt"," emanuel","23","","11/29/2018");
INSERT INTO sales_order VALUES("54","RS-73423023","8","2","66","0","emmanuel","emaanngt"," emanuel","23","","11/29/2018");





CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`suplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO supliers VALUES("1","Kath company","Accra Ghana","0543245765","0543245765","this product is good");
INSERT INTO supliers VALUES("2","APPLE","Kumasi Ghana","0542494320","0543245765","THIS IS GOOD");





CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("1","admin","admin","Admin","admin");
INSERT INTO user VALUES("2","cashier","cashier","Cashier Pharmacy","Cashier");
INSERT INTO user VALUES("3","cccc","admin123","Administrator","Administrator");





CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("1","admin","admin","administration");
INSERT INTO users VALUES("2","user","user","member");



