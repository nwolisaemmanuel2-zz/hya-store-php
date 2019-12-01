

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(175) NOT NULL,
  `password` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime NOT NULL,
  `permissions` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO admin_users VALUES("1","Emmanuel Ekene","nwolisaemmanuel","$2y$10$O5949kgCJ4V7yH0V21Avp.j8hNAud/SKFPCWTjSZ6AcO0oYruzsp6","2017-10-02 17:30:28","2018-12-01 13:58:33","admin,sale");
INSERT INTO admin_users VALUES("6","sule baah","OMAN","$2y$10$Dvoae.ykxpZxk7sv97yAOOy/cc8oAxHJWmZJxKxcE4hLmf6EHThcm","2018-11-29 19:13:54","2018-12-03 16:05:27","admin,sale");
INSERT INTO admin_users VALUES("7","JULIET KUSI","JULIET","$2y$10$YhpVO2aL2Ej8B38KLOUe0ekWASWbJPc8sI9acsx83BsdHBle32QFm","2018-11-29 19:14:37","2018-12-03 16:06:51","sale");





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
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `gen_name` varchar(50) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date_arrival` varchar(20) NOT NULL,
  `expiry_date` varchar(20) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `wholesaleprice` varchar(100) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `o_price1` varchar(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=743 DEFAULT CHARSET=latin1;

INSERT INTO products VALUES("186","P-090203","A","A","Per Box","20","30","Greenwich industries","13","Phone Accessories","2018-09-25","0","11","20","0","0","");
INSERT INTO products VALUES("189","P-32208322","Infinix","Hot-S3","Per Pieces","680","740","Mitsuime","1","Phone Accessories","","","60","680","0","0","");
INSERT INTO products VALUES("190","P-23300422","Infinix","Hot-4pro","Per Pieces","536","570","Mitsuime","3","Phone","","","34","536","0","0","");
INSERT INTO products VALUES("191","P-05023242","Samsung","J2-Sam","Per Pieces","414","440","I2","2","Phone Accessories","","","26","414","0","0","");
INSERT INTO products VALUES("192","P-30623333","Samsung","J1-Ace-Sam","Per Pieces","354","370","I2","0","Phone Accessories","","","16","354","0","0","");
INSERT INTO products VALUES("193","P-9622327","Samsung","J7-prime","Per Pieces","908","1000","I2","0","Phone Accessories","","","92","908","0","0","");
INSERT INTO products VALUES("194","P-322333","ZTE","ZTE-Zip","Per Pieces","200","250","Oman","1","Phone","","","50","200","0","0","");
INSERT INTO products VALUES("195","P-5030","Samsung","J1-mini-prime","Per Pieces","304","330","I2","4","Phone Accessories","","","26","304","0","0","");
INSERT INTO products VALUES("196","P-00038300","Samsung","J7-duo-Sam","Per Pieces","1160","1300","I2","2","Phone Accessories","","","140","1160","0","0","");
INSERT INTO products VALUES("197","P-0372","Nokia","3310-Nokia","Per Pieces","185","200","Francis","6","Phone Accessories","","","15","185","0","0","");
INSERT INTO products VALUES("198","P-290202","Itel","S13-Itel","Per Pieces","306","340","Gafter Trading","7","Phone Accessories","","","34","306","0","0","");
INSERT INTO products VALUES("199","P-633922","Itel","A31-Itel","Per Pieces","240","270","Gafter Trading","2","Phone","","","30","240","0","0","");
INSERT INTO products VALUES("200","P-33930","Itel","A32F-Itel","Per Pieces","258","290","Gafter Trading","7","Phone Accessories","2018-09-30","","32","258","0","0","");
INSERT INTO products VALUES("201","P-00232244","Itel","1408-Itel","Per Pieces","186","208","Gafter Trading","2","Phone Accessories","2018-09-30","","22","186","0","0","");
INSERT INTO products VALUES("202","P-4092329","Itel","A14-Itel","Per Pieces","153","175","Gafter Trading","8","Phone Accessories","2018-09-30","","22","153","0","0","");
INSERT INTO products VALUES("203","P-33030392","Itel","A15-Itel","Per Pieces","230","255","Gafter Trading","3","Phone Accessories","2018-09-30","","25","230","0","0","");
INSERT INTO products VALUES("204","P-3202974","Itel","5616-Itel","Per Pieces","64","80","Gafter Trading","4","Phone Accessories","2018-09-30","","16","64","0","0","");
INSERT INTO products VALUES("205","P-03900023","Itel","2180-Itel","Per Pieces","42","50","Gafter Trading","29","Phone Accessories","2018-09-30","","8","42","0","0","");
INSERT INTO products VALUES("206","P-8533533","Itel","2160-Itel","Per Pieces","39","50","Gafter Trading","16","Phone Accessories","2018-09-30","","11","39","0","0","");
INSERT INTO products VALUES("207","P-20328332","Itel","5600","Per Pieces","47","55","Gafter Trading","-1","Phone","2018-09-30","","8","47","0","0","");
INSERT INTO products VALUES("208","P-02225","Itel","2090-Itel","Per Pieces","41","50","Gafter Trading","30","Phone Accessories","2018-09-30","","9","41","0","0","");
INSERT INTO products VALUES("209","P-0282303","Itel","5613-Itel","Per Pieces","60","75","Gafter Trading","1","Phone Accessories","2018-09-30","","15","60","0","0","");
INSERT INTO products VALUES("210","P-043032","Itel","5625-Itel","Per Pieces","77","85","Gafter Trading","0","Phone Accessories","2018-09-30","","8","77","0","0","");
INSERT INTO products VALUES("211","P-3238433","Itel","S12-Itel","Per Pieces","325","360","Gafter Trading","9","Phone Accessories","2018-09-30","","35","325","0","0","");
INSERT INTO products VALUES("212","P-0868935","Itel","Prime-IV-Itel","Per Pieces","350","395","Gafter Trading","11","Phone Accessories","2018-09-30","","45","350","0","0","");
INSERT INTO products VALUES("213","P-302336","Huawei","Y7-2018-Huawei","Per Pieces","790","870","G lite","1","Phone Accessories","2018-09-30","","80","790","0","0","");
INSERT INTO products VALUES("214","P-385336","Huawei","Y6-2018-Huawei","Per Pieces","608","690","G lite","4","Phone Accessories","2018-09-30","","82","608","0","0","");
INSERT INTO products VALUES("215","P-9308352","Itel","P32-Itel","Per Pieces","332","370","Gafter Trading","3","Phone Accessories","2018-09-30","","38","332","0","0","");
INSERT INTO products VALUES("216","P-732083","Samsung","GT1205-Sam","Per Pieces","75","85","I2","0","Phone Accessories","2018-09-30","","10","75","0","0","");
INSERT INTO products VALUES("217","P-232207","Tecno ","Spark-2-1Gb","Per Pieces","460","490","Tecno","2","Phone Accessories","2018-09-30","","33","447","0","0","");
INSERT INTO products VALUES("218","P-53030","Ciy Call ","M25-plus-CC","Per Pieces","36","45","Agingo Enterprise","2","Phone Accessories","2018-09-30","","9","36","0","0","");
INSERT INTO products VALUES("219","P-20722","Ciy Call ","M105-CC","Per Pieces","36","45","Agingo Enterprise","0","Phone Accessories","2018-09-30","","9","36","0","0","");
INSERT INTO products VALUES("220","P-2203623","Ciy Call ","Life-X5-CC","Per Pieces","215","240","Agingo Enterprise","0","Phone Accessories","2018-09-30","","25","215","0","0","");
INSERT INTO products VALUES("221","P-03933207","Ciy Call ","Power-9-CC","Per Pieces","305","340","Agingo Enterprise","1","Phone Accessories","2018-09-30","","35","305","0","0","");
INSERT INTO products VALUES("222","P-323333","Ciy Call  ","X6-Life-CC","Per Pieces","215","240","Agingo Enterprise","4","Phone Accessories","2018-09-30","","25","215","0","0","");
INSERT INTO products VALUES("223","P-3300308","Ciy Call ","Life-pro-7","Per Pieces","360","390","Agingo Enterprise","1","Phone Accessories","2018-09-30","","30","360","0","0","");
INSERT INTO products VALUES("224","P-8520020","Ciy Call  ","K2-CC","Per Pieces","190","210","Agingo Enterprise","5","Phone Accessories","2018-09-30","","20","190","0","0","");
INSERT INTO products VALUES("225","P-53323","Ciy Call ","X9-CC","Per Pieces","47","60","Agingo Enterprise","2","Phone Accessories","2018-09-30","","13","47","0","0","");
INSERT INTO products VALUES("227","P-62333","XTIGI  ","S400-XTIGI","Per Pieces","55","65","XTIGI","6","Phone Accessories","2018-09-30","","10","55","7","0","");
INSERT INTO products VALUES("228","P-2443302","XTIGI","G28-XTIGI","Per Pieces","79","90","XTIGI","2","Phone Accessories","2018-09-30","","11","79","0","0","");
INSERT INTO products VALUES("229","P-230","XTIGI","G12-XTIGI","Per Pieces","63","75","XTIGI","6","Phone Accessories","2018-09-30","","12","63","0","0","");
INSERT INTO products VALUES("230","P-3363233","XTIGI","G15-XTIGI","Per Pieces","70","85","XTIGI","6","Phone Accessories","2018-09-30","","15","70","0","0","");
INSERT INTO products VALUES("231","P-3897","XTIGI","G16-XTIGI","Per Pieces","77","90","XTIGI","0","Phone Accessories","2018-09-30","","13","77","0","0","");
INSERT INTO products VALUES("232","P-4206223","XTIGI","G10-plus","Per Pieces","70","80","XTIGI","1","Phone Accessories","2018-09-30","","10","70","0","0","");
INSERT INTO products VALUES("233","P-623220","XTIGI","G39-XTIGI","Per Pieces","75","90","XTIGI","0","Phone Accessories","2018-09-30","","15","75","0","0","");
INSERT INTO products VALUES("234","P-04250008","Ciy Call ","Run-6-CC","Per Pieces","85","100","Agingo Enterprise","2","Phone Accessories","2018-03-30","","15","85","0","0","");
INSERT INTO products VALUES("235","P-032202","Ciy Call ","Run-8-CC","Per Pieces","65","80","Agingo Enterprise","0","Phone Accessories","2018-09-30","","15","65","0","0","");
INSERT INTO products VALUES("236","P-733002","Infinix","Smart-2-pro ","Per Pieces","499","540","Pierro","2","Phone Accessories","2018-09-30","","41","499","0","0","");
INSERT INTO products VALUES("237","P-3322223","Infinix","Hot-6-pro","Per Pieces","570","620","Pierro","3","Phone Accessories","2018-09-30","","50","570","0","0","");
INSERT INTO products VALUES("238","P-22202","Infinix","Note-4-pro","Per Pieces","862","940","Pierro","1","Phone Accessories","2018-09-30","","78","862","0","0","");
INSERT INTO products VALUES("239","P-03320703","Infinix","Hot-5-2Gb","Per Pieces","471","535","Pierro","2","Phone Accessories","2018-09-30","","34","471","0","0","");
INSERT INTO products VALUES("240","P-2250323","Infinix","Note-4 ","Per Pieces","650","704","Pierro","1","Phone Accessories","2018-09-30","","54","650","0","0","");
INSERT INTO products VALUES("241","P-502350","Infinix ","Zero5 ","Per Pieces","1230","1350","Pierro","1","Phone Accessories","2018-09-30","","120","1230","0","0","");
INSERT INTO products VALUES("242","P-300063","Infinix","Hot-6-1Gb","Per Pieces","441","485","Pierro","0","Phone Accessories","2018-09-30","","44","441","0","0","");
INSERT INTO products VALUES("243","P-23200062","Infinix","Hot-6-2Gb","Per Pieces","501","535","Pierro","10","Phone Accessories","2018-09-30","","34","501","0","0","");
INSERT INTO products VALUES("244","P-03543037","Infinix ","Note5","Per Pieces","727","795","Pierro","2","Phone Accessories","2018-09-30","","68","727","0","0","");
INSERT INTO products VALUES("245","P-2203302","Infinix","Infinix-Smart ","Per Pieces","369","400","Pierro","1","Phone Accessories","2018-09-30","","31","369","0","0","");
INSERT INTO products VALUES("246","P-2200520","Tecno","F3-Tecno","Per Pieces","320","350","Tecno","2","Phone Accessories","2018-09-30","","30","320","0","0","");
INSERT INTO products VALUES("247","P-30330","Tecno","CX-Tecno","Per Pieces","680","710","Tecno","3","Phone","2018-09-30","","30","680","0","0","");
INSERT INTO products VALUES("248","P-3240","Tecno","T401 ","Per Pieces","67","80","Tecno","1","Phone Accessories","2018-09-30","","8","67","0","0","");
INSERT INTO products VALUES("249","P-33220028","Tecno","T484","Per Pieces","93","105","Tecno","1","Phone Accessories","2018-09-30","","12","93","0","0","");
INSERT INTO products VALUES("250","P-225069","Tecno","T528","Per Pieces","90","100","Tecno","0","Phone Accessories","2018-09-30","","10","90","0","0","");
INSERT INTO products VALUES("251","P-2020423","Tecno","T349","Per Pieces","50","60","Tecno","4","Phone Accessories","2018-09-30","","10","50","0","0","");
INSERT INTO products VALUES("252","P-0923222","Tecno","T660","Per Pieces","97","110","Tecno","1","Phone Accessories","2018-09-30","","13","97","0","0","");
INSERT INTO products VALUES("253","P-2023752","Huawei","P-Smart-Huawei","Per Pieces","900","1030","G lite","1","Phone Accessories","2018-09-30","","130","900","0","0","");
INSERT INTO products VALUES("254","P-32202963","Huawei","Y3-2018","Per Pieces","399","450","G lite","2","Phone Accessories","2018-09-30","","51","399","0","0","");
INSERT INTO products VALUES("255","P-3232200","Samsung","J5-prime-Sam","Per Pieces","680","780","I2","2","Phone Accessories","2018-09-30","","100","680","0","0","");
INSERT INTO products VALUES("256","P-0840","Huawei","T37-Huawei","Per Pieces","425","490","G lite","1","Phone","2018-09-30","","65","425","0","0","");
INSERT INTO products VALUES("257","P-3389330","Samsung","C9-pro-Sam","Per Pieces","1650","1800","I2","2","Phone","2018-09-30","","150","1650","0","0","");
INSERT INTO products VALUES("258","P-2200408","Samsung","J7-Neo-Sam","Per Pieces","714","750","I2","0","Phone Accessories","2018-09-30","","66","714","0","0","");
INSERT INTO products VALUES("259","P-0223034","Samsung","A6-plus","Per Pieces","1499","1600","I2","0","Phone","2018-09-30","","101","1499","0","0","");
INSERT INTO products VALUES("260","P-224","Samsung","J7-pro-Sam","Per Pieces","1081","1200","I2","2","Phone Accessories","2018-09-30","","119","1081","0","0","");
INSERT INTO products VALUES("261","P-0082452","Samsung","J6-Sam","Per Pieces","1007","1100","I2","2","Phone Accessories","2018-09-30","","93","1007","0","0","");
INSERT INTO products VALUES("262","P-0222802","Tecno","F3-pro ","Per Pieces","360","410","Tecno","2","Phone Accessories","2018-09-30","","40","360","0","0","");
INSERT INTO products VALUES("263","P-32000335","Infinix","Zero4-plus","Per Pieces","1100","1200","Pierro","1","Phone","2018-09-30","","100","1100","0","0","");
INSERT INTO products VALUES("264","P-2303000","Infinix","Zero4 ","Per Pieces","690","760","Pierro","0","Phone","2018-09-30","","70","690","0","0","");
INSERT INTO products VALUES("265","P-209032","Samsung","S8-plus-Sam","Per Pieces","2800","3000","I2","1","Phone","2018-09-30","","200","2800","0","0","");
INSERT INTO products VALUES("266","P-320920","Samsung","S8-Sam","Per Pieces","2700","2800","I2","1","Phone","2018-09-30","","100","2700","0","0","");
INSERT INTO products VALUES("267","P-3323373","Samsung","J4-Sam","Per Pieces","630","700","I2","0","Phone Accessories","2018-09-30","","82","718","0","0","");
INSERT INTO products VALUES("268","P-0036325","Meizu","M5-Note-Meizu","Per Pieces","750","850","Meizu","1","Phone Accessories","2018-09-30","","100","750","0","0","");
INSERT INTO products VALUES("269","P-2325739","Meizu","Pro-7-Meizu","Per Pieces","1580","1700","Meizu","1","Phone","2018-09-30","","120","1580","0","0","");
INSERT INTO products VALUES("270","P-2222332","Meizu","M5-C-Meizu","Per Pieces","480","550","Meizu","0","Phone Accessories","2018-09-30","","70","480","0","0","");
INSERT INTO products VALUES("271","P-3702","Huawei","GR3-2017-Huawei","Per Pieces","780","850","G lite","1","Phone","2018-09-30","","70","780","0","0","");
INSERT INTO products VALUES("272","P-2283050","Huawei","Mate-10-lite ","Per Pieces","1099","1300","G lite","0","Phone Accessories","2018-09-30","","201","1099","0","0","");
INSERT INTO products VALUES("273","P-923083","Huawei","M3-lite","Per Pieces","1050","1200","G lite","0","Phone","2018-09-30","","150","1050","0","0","");
INSERT INTO products VALUES("274","P-63023353","Samsung","Tab-E-Sam","Per Pieces","794","850","I2","0","Phone Accessories","2018-09-30","","26","794","0","0","");
INSERT INTO products VALUES("275","P-2220370","Nokia","2.1-Nokia","Per Pieces","408","470","Francis","0","Phone Accessories","2018-09-30","","62","408","0","0","");
INSERT INTO products VALUES("276","P-2922420","Nokia ","2Nokia","Per Pieces","388","420","Francis","0","Phone Accessories","2018-09-30","","32","388","0","0","");
INSERT INTO products VALUES("277","P-062222","Nokia","1Nokia","Per Pieces","291","330","Francis","0","Phone Accessories","2018-09-30","","39","291","0","0","");
INSERT INTO products VALUES("278","P-0050022","Lenovo","K6-Lenovo","Per Pieces","588","650","Oman","1","Phone","2018-09-30","","62","588","0","0","");
INSERT INTO products VALUES("279","P-0202322","Lenovo","S60-Lenovo","Per Pieces","408","480","Gafter Trading","1","Phone Accessories","2018-09-30","","72","408","0","0","");
INSERT INTO products VALUES("280","P-204233","Nokia","5.1Nokia","Per Pieces","725","800","Francis","0","Phone Accessories","2018-09-30","","75","725","0","0","");
INSERT INTO products VALUES("281","P-33343333","Nokia","3.1Nokia","Per Pieces","601","670","Francis","2","Phone Accessories","2018-09-30","","69","601","0","0","");
INSERT INTO products VALUES("282","P-30032022","ZTE","A530","Per Pieces","390","420","Oman","1","Phone","2018-09-30","","30","390","0","0","");
INSERT INTO products VALUES("283","P-398328","Nokia ","Asha","Per Pieces","250","300","Francis","2","Phone Accessories","2018-09-30","","50","250","0","0","");
INSERT INTO products VALUES("284","P-39308238","Nokia","150-Nokia","Per Pieces","114","140","Francis","1","Phone Accessories","2018-09-30","","26","114","0","0","");
INSERT INTO products VALUES("285","P-22339333","ZTE","R538-ZTE","Per Pieces","60","70","Oman","0","Phone","2018-09-30","","10","60","0","0","");
INSERT INTO products VALUES("286","P-83323373","Mimo","Mimo-1 ","Per Pieces","55","65","Oman","0","Phone","2018-09-30","","10","55","0","0","");
INSERT INTO products VALUES("287","P-00220","Itel","S32-Itel","Per Pieces","418","475","Gafter Trading","1","Phone","2018-09-30","","57","418","0","0","");
INSERT INTO products VALUES("288","P-06323032","Tecno","Camon-X ","Per Pieces","688","740","Tecno","2","Phone Accessories","2018-09-30","","42","688","0","0","");
INSERT INTO products VALUES("289","P-3228092","Tecno","Spark-2-3G","Per Pieces","530","550","Tecno","0","Phone Accessories","2018-09-30","","20","530","0","0","");
INSERT INTO products VALUES("290","P-3223463","Ciy Call  ","M2-plus","Per Pieces","215","240","Agingo Enterprise","5","Phone Accessories","2018-09-30","","25","215","0","0","");
INSERT INTO products VALUES("291","P-5330223","Nokia","7-plus-Nokia","Per Pieces","1611","1750","Francis","0","Phone","2018-09-30","","139","1611","0","0","");
INSERT INTO products VALUES("292","P-02722029","Nokia","6.1-Nokia ","Per Pieces","1012","1070","Francis","1","Phone Accessories","2018-09-30","","58","1012","0","0","");
INSERT INTO products VALUES("293","P-250533","XTIGI","Joy7-Tv-XTIGI","Per Pieces","340","400","XTIGI","2","Phone Accessories","2018-09-30","","40","340","0","0","");
INSERT INTO products VALUES("295","P-93302","XTIGI","P15-XTIGI","Per Pieces","450","490","XTIGI","4","Phone Accessories","2018-09-30","","40","450","0","0","");
INSERT INTO products VALUES("296","P-033082","XTIGI","P11-lite-XTIGI","Per Pieces","337","380","XTIGI","1","Phone Accessories","2018-09-30","","43","337","0","0","");
INSERT INTO products VALUES("297","P-3233202","XTIGI","Joy7-Max-XTIGI","Per Pieces","316","340","XTIGI","5","Phone Accessories","2018-09-30","","24","316","0","0","");
INSERT INTO products VALUES("298","P-23396223","XTIGI","Joy10-pro-XTIGI","Per Pieces","513","565","XTIGI","0","Phone","","","","513","0","0","");
INSERT INTO products VALUES("299","P-3322502","Nokia","105Nokia","Per Pieces","64","75","Francis","1","Phone Accessories","2018-09-30","","11","64","0","0","");
INSERT INTO products VALUES("301","P-2339038","Doogee","X6-Max-Doogee","Per Pieces","580","670","K Bee","2","Phone","2018-09-30","","90","580","0","0","");
INSERT INTO products VALUES("302","P-33962230","XTIGI","A2-XTIGI","Per Pieces","635","690","XTIGI","1","Phone","2018-09-30","","55","635","0","0","");
INSERT INTO products VALUES("303","P-90352","XTIGI","A1-plus-XTIGI","Per Pieces","828","850","XTIGI","1","Phone Accessories","2018-09-30","","22","828","0","0","");
INSERT INTO products VALUES("304","P-220230","XTIGI","A1-XTIGI","Per Pieces","638","660","XTIGI","1","Phone","2018-09-30","","22","638","0","0","");
INSERT INTO products VALUES("305","P-5243983","VIWA","X2-VIWA","Per Pieces","340","370","Solo","0","Phone","2018-09-30","","30","340","0","0","");
INSERT INTO products VALUES("306","P-323202","M net","Power1-M-net","Per Pieces","250","280","K Bee","0","Phone","2018-09-30","","30","250","0","0","");
INSERT INTO products VALUES("307","P-36322","M net","Pure-S-M-net","Per Pieces","360","400","K Bee","1","Phone","2018-09-30","","40","360","0","0","");
INSERT INTO products VALUES("308","P-09232","TOSHIBA","TOSHIBA-19V ","Per Pieces","17","20","Oman","12","Laptop Accessories","2018-09-30","","3","17","0","0","");
INSERT INTO products VALUES("309","P-333252","ACER","ACER-19V","Per Pieces","17","20","Oman","0","Laptop Accessories","2018-09-30","","3","17","0","0","");
INSERT INTO products VALUES("310","P-3200532","TOSHIBA","TOSHIBA-15V","Per Pieces","17","20","Gafter Trading","13","Laptop Accessories","2018-09-30","","3","17","0","0","");
INSERT INTO products VALUES("311","P-32233","HP","HP-BLUEPIN","Per Pieces","24","30","Oman","3","Laptop Accessories","2018-09-30","","6","24","0","0","");
INSERT INTO products VALUES("312","P-323323","HP","HP-BIG-PIN","Per Pieces","18","20","Gafter Trading","20","Phone Accessories","2018-09-30","","2","18","0","0","");
INSERT INTO products VALUES("313","P-920320","HP ","HP-SMALL-PIN","Per Pieces","17","20","Oman","9","Laptop Accessories","2018-09-30","","3","17","0","0","");
INSERT INTO products VALUES("314","P-30222293","HP ","HP-MINI-19V","Per Pieces","17","20","Gafter Trading","19","Laptop Accessories","2018-09-30","","3","17","0","0","");
INSERT INTO products VALUES("315","P-70232","LENOVO","LENOVO-20V-TOSHIBA-MOUTH","Per Pieces","18","20","Oman","16","Laptop Accessories","2018-09-30","","2","18","0","0","");
INSERT INTO products VALUES("316","P-9366230","LENOVO","LENOVO-20V-BIG-PIN","Per Pieces","21","25","Oman","3","Phone Accessories","2018-09-30","","4","21","0","0","");
INSERT INTO products VALUES("317","P-25222","LENOVO","LENOVO-USB","Per Pieces","40","50","Oman","8","Phone Accessories","2018-09-30","","10","40","0","0","");
INSERT INTO products VALUES("318","P-6302302","SAMSUNG","SAMSUNG-19V","Per Pieces","17","20","Oman","7","Phone Accessories","2018-09-30","","3","17","0","0","");
INSERT INTO products VALUES("319","P-2332","SONY ","SONY-12V","Per Pieces","16","20","Oman","38","Phone Accessories","2018-09-30","","4","16","0","0","");
INSERT INTO products VALUES("320","P-2379322","SONY","SONY-24V","Per Pieces","21","25","Gafter Trading","2","Phone Accessories","2018-09-30","","4","21","0","0","");
INSERT INTO products VALUES("321","P-90347323","IBM","IBM-16V","Per Pieces","16","20","Oman","11","Phone Accessories","2018-09-30","","4","16","0","0","");
INSERT INTO products VALUES("322","P-2863","ASUS","ASUS-SMALL-PIN","Per Pieces","17","20","Oman","10","Phone Accessories","2018-09-30","","3","17","0","0","");
INSERT INTO products VALUES("323","P-03283052","DELL","DELL19.5V-BIG-PIN","Per Pieces","23","28","Oman","9","Phone Accessories","2018-09-30","","5","23","0","0","");
INSERT INTO products VALUES("324","P-3202","DELL","DELL-SMALL-PIN","Per Pieces","41","50","Oman","10","Phone Accessories","2018-09-30","","9","41","0","0","");
INSERT INTO products VALUES("325","P-322230","SONY","SONY19.5V","Per Pieces","17","20","Oman","5","Phone Accessories","2018-09-30","","3","17","0","0","");
INSERT INTO products VALUES("326","P-22323300","SONY","SONY16V","Per Pieces","17","20","Oman","1","Phone Accessories","2018-09-30","","3","17","0","0","");
INSERT INTO products VALUES("327","P-20225232","SURFACE","SURFACE-CHARGER","Per Pieces","70","90","Oman","14","Phone Accessories","2018-09-30","","20","70","0","0","");
INSERT INTO products VALUES("328","P-349425","","EARPICE-EP10","Per Pieces","4","6","Oman","31","Phone Accessories","2018-09-30","","2","4","0","0","");
INSERT INTO products VALUES("329","P-2320294","","360-RECIEVER","Per Pieces","33","40","Gafter Trading","0","Phone Accessories","2018-09-30","","7","33","0","0","");
INSERT INTO products VALUES("330","P-2740335","","S-CARD-READER","Per Pieces","55","70","Oman","2","Phone Accessories","2018-09-30","","15","55","0","0","");
INSERT INTO products VALUES("331","P-2230720","","PSP-CHARGER","Per Pieces","7","9","Oman","5","Phone Accessories","2018-09-30","","2","7","0","0","");
INSERT INTO products VALUES("332","P-2222236","","2.0-BLUETOOTH","Per Pieces","6","8","Gafter Trading","72","Phone Accessories","2018-09-30","","2","6","0","0","");
INSERT INTO products VALUES("333","P-28322323","","Q7","Per Pieces","40","50","Oman","3","Phone Accessories","2018-09-30","","10","40","0","0","");
INSERT INTO products VALUES("334","P-233222","","4.0-BLUETOOTH","Per Pieces","11","15","Oman","55","Phone Accessories","2018-09-30","","4","11","0","0","");
INSERT INTO products VALUES("335","P-3432352","","TDK ","Per Pieces","17","20","Oman","40","Phone Accessories","2018-09-30","","3","17","0","0","");
INSERT INTO products VALUES("336","P-3620300","","OTG-CABLE","Per Pieces","3","5","Oman","16","Phone Accessories","2018-09-30","","2","3","0","0","");
INSERT INTO products VALUES("337","P-2323223","","APPLE-WATCH-CHARGER","Per Pieces","160","200","Oman","3","Phone Accessories","2018-09-30","","40","160","0","0","");
INSERT INTO products VALUES("338","P-3320203","","HDTV-ADAPTOR","Per Pieces","11","15","Oman","-1","Phone Accessories","2018-09-30","","4","11","0","0","");
INSERT INTO products VALUES("339","P-30202333","","USB-CHARGER","Per Pieces","16","20","Oman","3","Phone Accessories","2018-09-30","","4","16","0","0","");
INSERT INTO products VALUES("340","P-3038223","","ICD-PX-370-RECORDER","Per Pieces","260","300","Oman","3","Phone Accessories","2018-09-30","","40","260","0","0","");
INSERT INTO products VALUES("341","P-262220","","C6-NYORK","Per Pieces","65","80","Oman","0","Phone Accessories","2018-09-30","","15","65","0","0","");
INSERT INTO products VALUES("342","P-583234","","ICD-PX-140-RECORDER","Per Pieces","190","220","Oman","5","Phone Accessories","2018-09-30","","30","190","0","0","");
INSERT INTO products VALUES("343","P-3204236","","TYPE-C-OTG","Per Pieces","9","15","Oman","45","Phone Accessories","2018-09-30","","6","9","0","0","");
INSERT INTO products VALUES("344","P-3027433","","Multy-HDMI ","Per Pieces","19","25","Oman","1","Phone Accessories","2018-09-30","","6","19","0","0","");
INSERT INTO products VALUES("345","P-33750202","","310-PRO-NYPORK","Per Pieces","48","55","Oman","5","Phone Accessories","2018-09-30","","7","48","0","0","");
INSERT INTO products VALUES("346","P-33762303","","MS-770","Per Pieces","33","40","Oman","1","Phone Accessories","2018-09-30","","7","33","0","0","");
INSERT INTO products VALUES("347","P-30202330","","JABRA-L1-BT","Per Pieces","23","30","Oman","0","Phone Accessories","2018-09-30","","7","23","0","0","");
INSERT INTO products VALUES("348","P-2233300","","NK-910","Per Pieces","47","55","Oman","2","Phone Accessories","2018-09-30","","8","47","0","0","");
INSERT INTO products VALUES("349","P-30202","","ICD-PX-240-RECORDER","Per Pieces","190","220","Oman","1","Phone Accessories","2018-09-30","","30","190","0","0","");
INSERT INTO products VALUES("350","P-79020290","","M8-BT","Per Pieces","23","27","Oman","0","Phone Accessories","2018-09-30","","4","23","0","0","");
INSERT INTO products VALUES("351","P-2382332","","I-TOUCH","Per Pieces","160","180","Oman","2","Phone Accessories","2018-09-30","","20","160","0","0","");
INSERT INTO products VALUES("352","P-33239","","NK810","Per Pieces","39","50","Oman","4","Phone Accessories","2018-09-30","","11","39","0","0","");
INSERT INTO products VALUES("353","P-2632343","","SMART-WATCH-P11","Per Pieces","50","70","Oman","5","Phone Accessories","2018-09-30","","20","50","0","0","");
INSERT INTO products VALUES("354","P-23232230","","MS790","Per Pieces","29","40","Oman","3","Phone Accessories","2018-09-30","","11","29","0","0","");
INSERT INTO products VALUES("355","P-43327200","","SMART-WATCH-DS 15","Per Pieces","50","70","Oman","0","Phone Accessories","2018-09-30","","20","50","0","0","");
INSERT INTO products VALUES("356","P-00722220","","UFO-HANDSFREE","Per Pieces","12","6","Oman","20","Phone Accessories","2018-09-30","","-6","12","0","0","");
INSERT INTO products VALUES("357","P-0222033","","TRAVEL ADAPTOR","Per Pieces","18","25","Oman","1","Phone Accessories","2018-09-30","","7","18","0","0","");
INSERT INTO products VALUES("358","P-3293323","","SAMSUNG-P8-BT","Per Pieces","15","30","Oman","0","Phone Accessories","2018-09-30","","15","15","0","0","");
INSERT INTO products VALUES("359","P-5223","","EP-20-HANDSFREE","Per Pieces","4","6","Oman","26","Phone Accessories","2018-09-30","","2","4","0","0","");
INSERT INTO products VALUES("360","P-37739367","","SMART-WATCH-W1O1","Per Pieces","50","70","Oman","0","Phone Accessories","2018-09-30","","20","50","0","0","");
INSERT INTO products VALUES("361","P-26922","","ES-16-CAR-CHARGER","Per Pieces","18","25","Gafter Trading","0","Phone Accessories","2018-09-30","","7","18","0","0","");
INSERT INTO products VALUES("362","P-2232937","","SAM-LEVEL-HANDFREE","Per Pieces","67","75","Oman","5","Phone Accessories","2018-09-30","","8","67","0","0","");
INSERT INTO products VALUES("363","P-38275422","","JETTOM","Per Pieces","40","50","Oman","1","Phone Accessories","2018-09-30","","10","40","0","0","");
INSERT INTO products VALUES("364","P-2232902","","SAMSUNG-HANDSFREE","Per Pieces","11","15","Oman","7","Phone Accessories","2018-09-30","","4","11","0","0","");
INSERT INTO products VALUES("365","P-339933","","JBL-T290","Per Pieces","80","100","Oman","1","Phone Accessories","2018-09-30","","20","80","0","0","");
INSERT INTO products VALUES("369","P-222620","","WIRE-MOUSE","Per Pieces","7","10","Oman","6","Phone Accessories","2018-09-30","","3","7","0","0","");
INSERT INTO products VALUES("370","P-604223","","U-SAMS-HANDSFREE ","Per Pieces","25","30","Oman","7","Phone Accessories","2018-09-30","","4","25","0","0","");
INSERT INTO products VALUES("371","P-6223332","","HDMI-20M","Per Pieces","90","120","Oman","1","Phone Accessories","2018-09-30","","30","90","0","0","");
INSERT INTO products VALUES("372","P-3293223","","HDMI-3M","Per Pieces","9","15","Oman","0","Phone Accessories","2018-09-30","","6","9","0","0","");
INSERT INTO products VALUES("373","P-0226293","","PS2-MEMORY","Per Pieces","6.5","8","Oman","5","Phone Accessories","2018-09-30","","1.5","6.5","0","0","");
INSERT INTO products VALUES("374","P-23330927","","HMDI-2M","Per Pieces","9","12","Oman","3","Phone Accessories","2018-09-30","","3","9","0","0","");
INSERT INTO products VALUES("375","P-232022","","XBOX-ONE-CONVERTER","Per Pieces","75","100","Oman","11","Phone Accessories","2018-09-30","","25","75","0","0","");
INSERT INTO products VALUES("376","P-3233500","","USB-SOUNDCARD","Per Pieces","6","8","Oman","10","Phone Accessories","2018-09-30","","2","6","0","0","");
INSERT INTO products VALUES("377","P-57639","","PS3-CONVERTER","Per Pieces","15","25","Oman","10","Phone Accessories","2018-09-30","","10","15","0","0","");
INSERT INTO products VALUES("378","P-3340368","","JABRA-SUPREME-2-BLUETOOTH","Per Pieces","33","40","Oman","0","Phone Accessories","2018-09-30","","7","33","0","0","");
INSERT INTO products VALUES("379","P-273432","","JBL-HEADSET-450-BT","Per Pieces","40","50","Oman","1","Phone Accessories","2018-09-30","","10","40","0","0","");
INSERT INTO products VALUES("380","P-53022","","PS4-CONVERTER","Per Pieces","90","120","Oman","1","Phone Accessories","2018-09-30","","30","90","0","0","");
INSERT INTO products VALUES("382","P-623020","","HDMI-5M","Per Pieces","23","30","Oman","0","Phone Accessories","2018-09-30","","7","23","0","0","");
INSERT INTO products VALUES("383","P-0323022","","WIRELESS-MOUSE","Per Pieces","11","15","Oman","3","Phone Accessories","2018-09-30","","4","11","0","0","");
INSERT INTO products VALUES("384","P-23300332","","PS2-PAD-NEW","Per Pieces","11","15","Oman","1","Phone Accessories","2018-09-30","","4","11","0","0","");
INSERT INTO products VALUES("385","P-2232207","","PSP-BATTERY","Per Pieces","9","15","Oman","9","Phone Accessories","2018-09-30","","6","9","0","0","");
INSERT INTO products VALUES("386","P-2003833","","XBOX-360-WIRELESS-CONTROLLER","Per Pieces","78","100","Oman","2","Phone Accessories","2018-09-30","","22","78","0","0","");
INSERT INTO products VALUES("387","P-6935332","","S400BT","Per Pieces","40","50","Oman","0","Phone Accessories","2018-09-30","","10","40","0","0","");
INSERT INTO products VALUES("388","P-2573032","","PS4-CONTROLLER","Per Pieces","200","230","Oman","8","Phone Accessories","2018-09-30","","30","200","0","0","");
INSERT INTO products VALUES("389","P-92039090","","INFINIX-FAST-CHARGER","Per Pieces","17","25","Oman","0","Phone Accessories","2018-09-30","","8","17","0","0","");
INSERT INTO products VALUES("390","P-395303","","PS2-CONVERTER","Per Pieces","8","10","Oman","27","Phone Accessories","2018-09-30","","2","8","0","0","");
INSERT INTO products VALUES("391","P-22203","","ISMART-CARD-READER","Per Pieces","27","35","Oman","1","Phone Accessories","2018-09-30","","8","27","0","0","");
INSERT INTO products VALUES("392","P-06223","","DVD-WRITER","Per Pieces","90","120","Oman","1","Phone Accessories","2018-09-30","","30","90","0","0","");
INSERT INTO products VALUES("393","P-247332","","CANON-PRINTER-BATTERY","Per Pieces","160","200","Oman","2","Phone Accessories","2018-09-30","","40","160","0","0","");
INSERT INTO products VALUES("394","P-0372200","","SHUFFLE-CABLE","Per Pieces","9","15","Oman","1","Phone Accessories","2018-09-30","","6","9","0","0","");
INSERT INTO products VALUES("395","P-03632237","","S8-TRAVEL-ADAPTOR","Per Pieces","23","30","Oman","6","Phone Accessories","2018-09-30","","7","23","0","0","");
INSERT INTO products VALUES("397","P-3323240","","A-CAMERA","Per Pieces","230","300","Oman","1","Phone Accessories","2018-09-30","","70","230","0","0","");
INSERT INTO products VALUES("398","P-30352","","2.0-HDD-CASE","Per Pieces","16","20","Oman","0","Phone Accessories","2018-09-30","","4","16","0","0","");
INSERT INTO products VALUES("399","P-07002227","","SAMSUNG-PLAYER","Per Pieces","50","70","Oman","4","Phone Accessories","2018-09-30","","20","50","0","0","");
INSERT INTO products VALUES("400","P-0236820","","I-TOUCH-KIDS-TAB","Per Pieces","160","180","Oman","4","Phone Accessories","2018-09-30","","20","160","0","0","");
INSERT INTO products VALUES("401","P-420502","  ","DIGIWICH-8GB","Per Pieces","15","17","Oman","69","Phone Accessories","2018-09-30","","13","17","0","0","");
INSERT INTO products VALUES("402","P-2222223","","KINGSTON-8GB","Per Pieces","18","21","Oman","3","Phone Accessories","2018-09-30","","3","20","0","0","");
INSERT INTO products VALUES("403","P-203375"," ","KINGSTON-16GB","Per Pieces","19","25","Oman","35","Phone Accessories","2018-09-30","","3","22","0","0","");
INSERT INTO products VALUES("404","P-22322"," ","DUAL-16GB","Per Pieces","24","27","Oman","17","Phone Accessories","2018-09-30","","3","28","0","0","");
INSERT INTO products VALUES("405","P-304922"," ","SANDISK-8GB","Per Pieces","15","18","Oman","32","Phone Accessories","2018-09-30","","3","18","0","0","");
INSERT INTO products VALUES("407","P-303202"," ","DUAL-8GB","Per Pieces","20","23","Oman","41","Phone Accessories","2018-09-30","","4","24","0","0","");
INSERT INTO products VALUES("408","P-279723"," ","TOSHIBA-8GB","Per Pieces","15","18","Oman","87","Phone Accessories","2018-09-30","","3","18","0","0","");
INSERT INTO products VALUES("409","P-222222"," ","TOSHIBA-16GB","Per Pieces","15","20","Oman","29","Phone Accessories","2018-09-30","","3","20","0","0","");
INSERT INTO products VALUES("410","P-420233","","GENX-4GB","Per Pieces","13","16","Oman","5","Phone Accessories","2018-09-30","","2","16","0","0","");
INSERT INTO products VALUES("411","P-4002536"," ","GENX-2GB","Per Pieces","13","14","Oman","8","Phone Accessories","2018-09-30","","2","14","0","0","");
INSERT INTO products VALUES("412","P-9234232"," ","DUAL-32GB","Per Pieces","40","43","Oman","38","Phone Accessories","2018-09-30","","5","45","0","0","");
INSERT INTO products VALUES("414","P-2822070","  ","TF-16GB","Per Pieces","15","17","Oman","23","Phone Accessories","2018-09-30","","3","17","0","0","");
INSERT INTO products VALUES("415","P-4832200"," ","TF-2GB","Per Pieces","10","12","Oman","99","Phone Accessories","2018-09-30","","3","","0","0","");
INSERT INTO products VALUES("416","P-0302000"," ","TF-4GB","Per Pieces","11","14","Oman","104","Phone Accessories","2018-09-30","","2","14","0","0","");
INSERT INTO products VALUES("417","P-2822028"," ","TF-64GB","Per Pieces","60","70","Oman","0","Phone Accessories","2018-09-30","","10","90","0","0","");
INSERT INTO products VALUES("418","P-02330338","","TF-400GB","Per Pieces","1150","1300","Oman","1","Phone Accessories","2018-09-30","","150","1150","0","0","");
INSERT INTO products VALUES("419","P-22800037","","IXPAND-64GB","Per Pieces","210","250","Oman","1","Phone Accessories","2018-09-30","","40","210","0","0","");
INSERT INTO products VALUES("420","P-2022","","WIRELESS-STICK-64GB","Per Pieces","120","150","Oman","0","Phone Accessories","2018-09-30","","30","120","0","0","");
INSERT INTO products VALUES("421","P-0592283","","USB-TYPE-C-32GB","Per Pieces","60","70","Oman","2","Phone Accessories","2018-09-30","","10","60","0","0","");
INSERT INTO products VALUES("422","P-0302233","","USB-TYPE-C-16GB","Per Pieces","45","60","Oman","1","Phone Accessories","2018-09-30","","15","45","0","0","");
INSERT INTO products VALUES("423","P-92382323","","USB-TYPE-C-64GB","Per Pieces","120","140","Oman","3","Phone Accessories","2018-09-30","","20","120","0","0","");
INSERT INTO products VALUES("424","P-20323722","","TF-128GB","Per Pieces","150","170","Oman","0","Phone Accessories","2018-09-30","","25","165","0","0","");
INSERT INTO products VALUES("425","P-325833","","EXTREME-PRO-SD-128GB","Per Pieces","1150","1300","Oman","1","Phone Accessories","2018-09-30","","150","1150","0","0","");
INSERT INTO products VALUES("426","P-22022207","","EXTREME-PRO-CF-64GB","Per Pieces","390","450","Oman","1","Phone Accessories","2018-09-30","","60","390","0","0","");
INSERT INTO products VALUES("428","P-23230","","CLASS-10-SD-16GB","Per Pieces","38","45","Oman","11","Phone Accessories","2018-09-30","","7","38","0","0","");
INSERT INTO products VALUES("429","P-3238326","","CLASS-10-SD-64GB","Per Pieces","125","150","Oman","1","Phone Accessories","2018-09-30","","25","125","0","0","");
INSERT INTO products VALUES("430","P-329282","","CLASS-4-SD-4GB","Per Pieces","24","28","Oman","4","Phone Accessories","2018-09-30","","4","24","0","0","");
INSERT INTO products VALUES("431","P-32343","","CLASS-4-8GB ","Per Pieces","26","30","Oman","10","Phone Accessories","2018-09-30","","4","26","0","0","");
INSERT INTO products VALUES("432","P-23023833","","TOSHIBA-2TB","Per Pieces","360","390","Oman","0","Phone Accessories","2018-09-30","","30","360","0","0","");
INSERT INTO products VALUES("433","P-2280300","","TOSHIBA-1TB","Per Pieces","225","250","Oman","6","Phone Accessories","2018-09-30","","25","225","0","0","");
INSERT INTO products VALUES("434","P-0632430","","TOSHIBA-500GB","Per Pieces","200","200","Oman","8","Phone Accessories","2018-09-30","","20","200","0","0","");
INSERT INTO products VALUES("435","P-322223","","TRANSCENT-2TB","Per Pieces","390","420","Oman","5","Phone Accessories","2018-09-30","","30","390","0","0","");
INSERT INTO products VALUES("436","P-7242203","","WD-2TB","Per Pieces","390","420","Oman","2","Phone Accessories","2018-09-30","","30","390","0","0","");
INSERT INTO products VALUES("437","P-02325332"," ","DIGIRICH-4GB","Per Pieces","13","15","Oman","39","Phone Accessories","2018-09-30","","2","16","0","0","");
INSERT INTO products VALUES("438","P-2052","","DIGIRICH-32GB","Per Pieces","30","35","Oman","9","Phone Accessories","2018-09-30","","4","34","0","0","");
INSERT INTO products VALUES("439","S6F2","DELL ","DELL-DUAL-CORE ","Per Pieces","1200","1500","Oman","0","Laptop","2018-10-01","","300","1200","0","0","");
INSERT INTO products VALUES("440","68L2","DELL","DELL-i3-SSD-128RAM-4GB","Per Pieces","1400","1600","Oman","0","Phone Accessories","2018-10-01","","200","1400","0","0","");
INSERT INTO products VALUES("441","4BSZ","Hp","HP-i5-HDD-17GB","Per Pieces","2000","2200","Oman","1","Phone Accessories","2018-10-01","","200","2000","0","0","");
INSERT INTO products VALUES("442","0776","Hp","HP-HDD-500GB","Per Pieces","1600","1800","Oman","1","Phone Accessories","2018-10-01","","200","1600","0","0","");
INSERT INTO products VALUES("443","P-2832232","PLAY STATION","PS4-PRO","Per Pieces","2300","2500","Oman","0","Phone Accessories","2018-10-01","","200","2300","0","0","");
INSERT INTO products VALUES("444","P-3083386","PLAY STATION","PS4-SLIM","Per Pieces","1600","1850","Oman","1","Phone Accessories","2018-10-01","","100","1600","0","0","");
INSERT INTO products VALUES("445","P-32522903","GLASS","GLASS-PROTECTOR","Per Pieces","2","5","Oman","228","Phone Accessories","2018-10-01","","3","4","0","0","");
INSERT INTO products VALUES("446","7412","IPHONE","IPHONE-6s-16GB-SPACE-GRAY","Per Pieces","1200","1300","Oman","0","Phone","2018-10-01","2018-12-31","100","1200","0","0","");
INSERT INTO products VALUES("447","2397","IPHONE","IPHONE-6s-16GB-GOLD","Per Pieces","1200","1300","Oman","0","Phone Accessories","2018-10-01","","100","1200","0","0","");
INSERT INTO products VALUES("448","3780","IPHONE","IPHONE-6s-64GB-GOLD","Select Product ","1400","1500","Oman","1","Phone","","","","1400","0","0","");
INSERT INTO products VALUES("449","4428","IPHONE","IPHONE-6-16GB-GOLD","Per Pieces","750","950","Oman","1","Phone Accessories","2018-10-01","","200","750","0","0","");
INSERT INTO products VALUES("450","9888","IPHONE","IPHONE-6s-64GB","Per Pieces","1400","1500","Oman","0","Phone","2018-10-01","","100","1400","0","0","");
INSERT INTO products VALUES("451","9930","IPHONE","IPHONE-7+ 128GB","Per Pieces","2800","3000","Oman","9","Phone","2018-10-01","","200","2800","0","0","");
INSERT INTO products VALUES("452","3020","IPHONE","IPHONE-6-64GB-GOLD","Per Pieces","1000","1200","Oman","0","Phone Accessories","2018-10-01","","200","1000","0","0","");
INSERT INTO products VALUES("453","8779","IPHONE","IPHONE-6s-16GB ROSE","Per Pieces","1200","1300","Oman","0","Phone","2018-10-01","","100","1200","0","0","");
INSERT INTO products VALUES("454","6166","IPHONE","IPHONE-X-256GB-SLIVER","Per Pieces","4800","5000","Oman","0","Phone","2018-10-01","","200","4800","0","0","");
INSERT INTO products VALUES("455","6837","IPHONE","IPHONE-6-16GB-SPACE GRAY","Per Pieces","750","950","Oman","0","Phone","2018-10-01","","200","750","0","0","");
INSERT INTO products VALUES("456","9139","IPHONE","IPHONE-6-64GB-GOLD","Per Pieces","1000","1200","Oman","1","Phone","2018-10-01","","200","1000","0","0","");
INSERT INTO products VALUES("458","9807","IPHONE","IPHNOE-X-256GB-SILVER","Per Pieces","4500","5000","Oman","1","Phone Accessories","2018-10-01","","200","4800","0","0","");
INSERT INTO products VALUES("459","6246","IPHNOE","IPHONE-6-16GB-SILVER","Per Pieces","750","950","Oman","9","Phone","2018-10-01","","200","750","0","0","");
INSERT INTO products VALUES("460","5665","IPHONE","IPHONE-6-16GB-SILVER","Per Pieces","750","950","Oman","0","Phone Accessories","2018-10-01","","200","750","0","0","");
INSERT INTO products VALUES("461","0480","IPHONE","IPHONE-5s-16GB SPACE-GRAY","Per Pieces","500","600","Oman","0","Phone Accessories","","","100","500","0","0","");
INSERT INTO products VALUES("462","1615","IPHONE","IPHONE-5s-16GB SPACE-GRAY","Per Pieces","500","600","Oman","0","Phone Accessories","","","100","500","0","0","");
INSERT INTO products VALUES("463","7594","IPHNOE","IPHNOE-5s-16GB SPACE-GRAY","Per Pieces","500","600","Oman","0","Phone","2018-10-01","","100","500","0","0","");
INSERT INTO products VALUES("464","0759","IPHONE","IPHONE-5s-16GB SPAC-GRAY","Per Pieces","500","600","Oman","0","Phone Accessories","2018-10-01","","100","500","0","0","");
INSERT INTO products VALUES("465","2752","IPHONE","IPHONE-5s-16GB-SPACE-GRAY","Per Pieces","500","600","Oman","0","Phone Accessories","2018-10-01","","100","500","0","0","");
INSERT INTO products VALUES("466","6752","IPHONE","IPHNOE-5s-16GB-SPACE-GRAY","Per Pieces","500","600","Oman","1","Phone","","","100","500","0","0","");
INSERT INTO products VALUES("467","2732","IPHONE","IPHONE-5s-16GB-SPACE-GRAY","Per Pieces","500","600","Oman","0","Phone Accessories","","","100","500","0","0","");
INSERT INTO products VALUES("468","P-624239"," ","TF-8GB","Per Pieces","12","15","Oman","62","Phone Accessories","2018-10-01","","2","15","0","0","");
INSERT INTO products VALUES("469","P-947203"," ","SANDISK-32GB","Per Pieces","30","33","Oman","64","Phone Accessories","","","7","38","0","0","");
INSERT INTO products VALUES("470","P-25220","CANON","50MM-CANON","Per Pieces","490","550","Oman","3","Phone Accessories","","","60","490","0","0","");
INSERT INTO products VALUES("471","P-38208032","NIKON","50MM-NIKON","Per Pieces","490","550","Oman","3","Phone Accessories","","","60","490","0","0","");
INSERT INTO products VALUES("472","P-3233","NIKON","18-55MM-NIKON","Per Pieces","520","600","Oman","3","Phone Accessories","","","80","520","0","0","");
INSERT INTO products VALUES("473","P-39322","NIKON","D5300-NIKON","Per Pieces","2350","2500","Oman","1","Camera","","","150","2350","0","0","");
INSERT INTO products VALUES("474","P-236333","NIKON","D3400-NIKON","Per Pieces","1850","2000","Oman","1","Phone Accessories","","","150","1850","0","0","");
INSERT INTO products VALUES("475","P-2233203","CANON","1300D-CANON","Per Pieces","1650","1800","Oman","1","Phone Accessories","","","150","1650","0","0","");
INSERT INTO products VALUES("477","P-240523","","PHOTTIX-TRIGGER","Per Pieces","420","500","Oman","1","Camera Accessories","","","80","420","0","0","");
INSERT INTO products VALUES("478","P-0323230","","BATTREY-GRIP","Per Pieces","160","200","Oman","11","Phone Accessories","","","40","160","0","0","");
INSERT INTO products VALUES("479","P-08963265","SONY","DSC-5001","Per Pieces","420","500","Oman","1","Camera","","","80","420","0","0","");
INSERT INTO products VALUES("480","P-2003422","BOYA","BY-PVM1000L MIC","Per Pieces","330","400","Oman","1","Camera Accessories","2018-10-01","","70","330","0","0","");
INSERT INTO products VALUES("481","P-383280","","LED-5001","Per Pieces","290","350","Oman","2","Camera Accessories","","","60","290","0","0","");
INSERT INTO products VALUES("482","P-2230633","BOYA","BY-WMS","Per Pieces","420","500","Oman","1","Camera Accessories","","","80","420","0","0","");
INSERT INTO products VALUES("483","P-32203323","","SPEED-LITE-II","Per Pieces","420","500","Oman","2","Camera Accessories","2018-10-01","","80","420","0","0","");
INSERT INTO products VALUES("484","P-200342","","SPEED-LITE-III","Per Pieces","290","350","Oman","2","Phone Accessories","","","60","290","0","0","");
INSERT INTO products VALUES("485","P-62503","ISMART ","ISMART-IS955BT","Per Pieces","180","230","Oman","0","Phone Accessories","2018-10-01","","50","180","0","0","");
INSERT INTO products VALUES("486","P-9023003","ISMART ","ISMART-IS944BT","Per Pieces","200","250","Oman","1","Phone Accessories","","","50","200","0","0","");
INSERT INTO products VALUES("487","9130","IPHONE","IPHONE-6-16GB","Per Pieces","950","1200","Oman","0","Phone Accessories","","","250","950","0","0","");
INSERT INTO products VALUES("488","P-203322","HP","HP-V222W-16GB","Per Pieces","21","24","Oman","0","Phone Accessories","","","3","21","0","0","");
INSERT INTO products VALUES("489","P-233974","HP","HP-V222W-8GB","Per Pieces","21","24","Oman","5","Phone Accessories","","","3","21","0","0","");
INSERT INTO products VALUES("490","P-50630","HP","HP-V222W-32GB","Per Pieces","39","42","Oman","2","Phone Accessories","","","3","39","0","0","");
INSERT INTO products VALUES("491","P-3433030","HP","HP-V165W-16gb","Per Pieces","21","24","Oman","0","Phone Accessories","","","3","21","0","0","");
INSERT INTO products VALUES("492","P-33233","HP","HP-V165W-32GB","Per Pieces","39","42","Oman","0","Phone Accessories","","","3","39","0","0","");
INSERT INTO products VALUES("493","P-0202233","HP","HP-V178B-16GB","Per Pieces","27","30","Oman","0","Phone Accessories","","","3","27","0","0","");
INSERT INTO products VALUES("494","P-2070033","HP","HP-V178B-8GB","Per Pieces","24","27","Oman","8","Phone Accessories","","","3","24","0","0","");
INSERT INTO products VALUES("495","P-0203635","HP","HP-V150W-32GB","Per Pieces","39","42","Oman","0","Phone Accessories","","","3","39","0","0","");
INSERT INTO products VALUES("496","P-2227902","HP","HP-V150W-8GB","Per Pieces","20","23","Oman","6","Phone Accessories","","","3","20","0","0","");
INSERT INTO products VALUES("497","P-4029323","HP","HP-V150W-16GB","Per Pieces","23","26","Oman","3","Phone Accessories","","","3","23","0","0","");
INSERT INTO products VALUES("498","P-39220269","HP","HP-V2450W-8GB","Per Pieces","27","30","Oman","5","Phone Accessories","","","3","27","0","0","");
INSERT INTO products VALUES("499","P-79235","HP","HP-V245W-16GB","Per Pieces","29","32","Oman","0","Phone Accessories","","","3","29","0","0","");
INSERT INTO products VALUES("500","P-223334","BB","BB-CHARGER","Select Product ","18","20","Oman","4","Phone Accessories","","","2","180","0","0","");
INSERT INTO products VALUES("502","P-22358","INFINIX","INFINIX-FAST-CABLE","Select Product ","8","10","Oman","86","Phone Accessories","","","2","8","0","0","");
INSERT INTO products VALUES("503","P-3230293","INFINIX","INFINIX-FAST-HEAD","Per Pieces","8","10","Oman","90","Phone Accessories","","","2","8","0","0","");
INSERT INTO products VALUES("504","P-03300232","IPHONE","IPHONE-USED-CABLE","Per Pieces","18","25","Oman","0","Phone Accessories","","","7","18","0","0","");
INSERT INTO products VALUES("505","P-2022342","","5D-GLASS","Per Pieces","7","10","Oman","139","Phone Accessories","","","2","10","0","0","");
INSERT INTO products VALUES("506","P-4303222","HUAWIE","WIFI-MODEM","Per Pieces","160","170","Oman","11","Phone Accessories","","","10","160","0","0","");
INSERT INTO products VALUES("507","P-0202623","ALTURA","ALTURE-TRGGER","Per Pieces","170","200","Oman","1","Camera","2018-10-03","","30","160","0","0","");
INSERT INTO products VALUES("509","P-038323","INFINIX  ","SMART-2","Per Pieces","393","430","Pierro","2","Phone Accessories","2018-10-03","","57","393","0","0","");
INSERT INTO products VALUES("510","P-2233932","INFINIX","NOTE-5-STYLING-32GB","Per Pieces","885","980","Pierro","1","Phone Accessories","2018-10-03","","95","885","0","0","");
INSERT INTO products VALUES("511","P-3303320","TECNO","Y2-2018","Per Pieces","192","220","Pierro","6","Phone Accessories","2018-10-03","","28","192","0","0","");
INSERT INTO products VALUES("512","P-3320203","TECNO","POUVOIR-1","Per Pieces","426","470","Pierro","0","Phone Accessories","2018-10-03","","34","426","0","0","");
INSERT INTO products VALUES("513","P-97322633","TECNO","POUVOIR-2","Per Pieces","555","590","Oman","1","Phone Accessories","2018-10-03","","35","555","0","0","");
INSERT INTO products VALUES("516","P-233507","TECNO","F2-LITE","Per Pieces","365","410","Pierro","1","Phone Accessories","2018-10-03","","35","365","0","0","");
INSERT INTO products VALUES("517","P-3235922","","POWER-CORD ","Per Pieces","3","4","Pierro","51","Phone Accessories","2018-10-03","","1","3","0","0","");
INSERT INTO products VALUES("518","P-63223297","","POWER-CORD-ORIGINAL","Per Pieces","7","10","Pierro","1","Laptop Accessories","2018-10-03","","3","7","0","0","");
INSERT INTO products VALUES("520","P-2244330","","AC-CORD","Per Pieces","2","3","Pierro","25","Laptop Accessories","2018-10-03","","1","2","0","0","");
INSERT INTO products VALUES("522","P-7330028","SAMSUMG","GRAND-PRIME-PLUS","Select Product ","445","460","I2","1","Phone Accessories","","","25","","0","0","");
INSERT INTO products VALUES("523","P-322302","SAMSUMG","GRAND-PRIME-PRO","Select Product ","540","580","I2","1","Phone Accessories","","","40","","0","0","");
INSERT INTO products VALUES("524","P-323230","SAMSUMG","J8","Select Product ","1080","1300","Mitsuime","0","Phone Accessories","","","160","","0","0","");
INSERT INTO products VALUES("525","P-202533","SAMSUMG","J5-PRO","Select Product ","880","950","I2","0","Phone Accessories","","","70","","0","0","");
INSERT INTO products VALUES("526","P-260233","APPLE","3PINS IPHONE HEAD","Per Pieces","10","15","Oman","20","Phone Accessories","2018-10-04","","10","20","0","0","");
INSERT INTO products VALUES("527","P-733233","APPLE","APPLE-HEAD-2PIN","Per Pieces","15","25","Oman","0","Phone Accessories","2018-10-04","","10","15","0","0","");
INSERT INTO products VALUES("528","P-25333208","","WEB-CAM","Per Pieces","15","20","Oman","5","Phone Accessories","2018-10-04","","5","15","0","0","");
INSERT INTO products VALUES("530","P-7234002","SAMSUNG","SAMSUNG-LEVEL","Select Product ","55","65","Gafter Trading","10","Phone Accessories","","","10","55","0","0","");
INSERT INTO products VALUES("531","P-542422","","TRANSCENT-1TB","Per Pieces","250","285","Gafter Trading","6","Phone Accessories","","","35","250","0","0","");
INSERT INTO products VALUES("532","P-622","","P1-POWER-BANK","Per Pieces","75","85","Gafter Trading","0","Phone Accessories","","","10","75","0","0","");
INSERT INTO products VALUES("533","P-03322303","","C1-POWER-BANK","Select Product ","45","60","Gafter Trading","3","Phone Accessories","","","15","45","0","0","");
INSERT INTO products VALUES("534","P-03432","","A3-POWER-BANK","Select Product ","35","50","Gafter Trading","0","Phone Accessories","","","15","35","0","0","");
INSERT INTO products VALUES("535","P-06000324","","CANON75-300MM","Per Pieces","600","750","Gafter Trading","0","Phone Accessories","","","250","600","0","0","");
INSERT INTO products VALUES("536","P-0303004","","M101-CAR MP3","Per Pieces","40","50","Gafter Trading","2","Phone Accessories","","","10","40","0","0","");
INSERT INTO products VALUES("537","P-3730392","NIKON","D5600-NIKON","Select Product ","2800","3100","Gafter Trading","1","Phone Accessories","","","300","2800","0","0","");
INSERT INTO products VALUES("538","P-2533302","CANON","750D-CANON","Per Pieces","2800","3000","Gafter Trading","1","Phone Accessories","","","200","2800","0","0","");
INSERT INTO products VALUES("539","P-0020653","","WM8-BOYU","Select Product ","800","1000","Gafter Trading","1","Phone","","","200","800","0","0","");
INSERT INTO products VALUES("540","P-602322","","EAR-POD","Select Product ","17","20","Gafter Trading","31","Phone Accessories","","","3","17","0","0","");
INSERT INTO products VALUES("541","P-702332","","J5-EAR-PHONE","Per Pieces","11","15","Gafter Trading","13","Phone Accessories","","","4","11","0","0","");
INSERT INTO products VALUES("542","P-3222234","","XBOX-1-PAD","Per Pieces","220","270","Gafter Trading","1","Laptop Accessories","","","50","220","0","0","");
INSERT INTO products VALUES("543","P-032062","","FIFA-19","Per Pieces","350","400","Gafter Trading","3","Phone Accessories","","","50","350","0","0","");
INSERT INTO products VALUES("544","P-3293927","","USB-MODEM","Per Pieces","40","50","Gafter Trading","18","Phone Accessories","","","10","40","0","0","");
INSERT INTO products VALUES("545","P-234228","","SEAGATE-1TB","Select Product ","220","250","Gafter Trading","5","Phone Accessories","","","30","220","0","0","");
INSERT INTO products VALUES("546","P-2023022","","WD-1TB","Per Pieces","240","280","Gafter Trading","1","Phone Accessories","","","40","240","0","0","");
INSERT INTO products VALUES("547","P-073233","","64GB-GLIDE","Select Product ","75","85","Gafter Trading","10","Phone Accessories","","","10","75","0","0","");
INSERT INTO products VALUES("548","P-3038302","","UCOM-SINGLE","Per Pieces","11","13","Gafter Trading","4","Phone Accessories","","","2","11","0","0","");
INSERT INTO products VALUES("549","P-2303330","","IX-PAD-64GB","Select Product ","230","250","Gafter Trading","1","Phone Accessories","","","20","230","0","0","");
INSERT INTO products VALUES("550","P-2273000","","WIRELESS-STICK-32GB","Select Product ","90","120","Gafter Trading","1","Phone Accessories","","","30","90","0","0","");
INSERT INTO products VALUES("552","P-338326","","Joy10","Per Pieces","510","540","Gafter Trading","2","Phone","","","30","510","0","0","");
INSERT INTO products VALUES("553","P-2333330","","Y6-MAX","Per Pieces","620","670","Gafter Trading","2","Phone","","","50","620","0","0","");
INSERT INTO products VALUES("554","P-2839638","","HP-V165W-8GB","Per Pieces","29","32","Gafter Trading","7","Phone Accessories","","","3","29","0","0","");
INSERT INTO products VALUES("555","P-20382","","W2-BT","Select Product ","39","50","Gafter Trading","3","Phone Accessories","","","11","39","0","0","");
INSERT INTO products VALUES("556","P-32202963","","MS-790-BT","Select Product ","50","60","Gafter Trading","6","Phone Accessories","","","10","50","0","0","");
INSERT INTO products VALUES("557","P-855063","","PS3-PAD","Per Pieces","24","29","Gafter Trading","12","Phone Accessories","","","4","24","0","0","");
INSERT INTO products VALUES("558","P-36307633","","JABRA-L5-BT","Select Product ","20","25","Gafter Trading","1","Phone Accessories","","","5","20","0","0","");
INSERT INTO products VALUES("559","P-228","","CG919","Select Product ","45","50","Gafter Trading","6","Phone Accessories","","","5","45","0","0","");
INSERT INTO products VALUES("560","P-20942","","CG368","Per Pieces","45","50","Gafter Trading","6","Phone Accessories","","","5","45","0","0","");
INSERT INTO products VALUES("561","P-35870608","","JD28","Per Pieces","45","50","Gafter Trading","7","Phone Accessories","","","5","45","0","0","");
INSERT INTO products VALUES("562","P-320272","","XBOX-360-WIRELESS-RECEIVER","Select Product ","33","40","Gafter Trading","4","Phone Accessories","","","7","33","0","0","");
INSERT INTO products VALUES("563","P-303259","","P37-BT","Per Pieces","43","50","Gafter Trading","0","Phone Accessories","","","7","43","0","0","");
INSERT INTO products VALUES("564","P-3305232","","Y5-2018","Per Pieces","499","560","Gafter Trading","2","Phone Accessories","","","41","499","0","0","");
INSERT INTO products VALUES("565","P-0322003","","CANON-X-PRO","Per Pieces","1000","1100","Gafter Trading","1","Phone","","","100","1000","0","0","");
INSERT INTO products VALUES("566","P-222623","","CANON-X","Per Pieces","690","740","Gafter Trading","2","Phone Accessories","","","40","690","0","0","");
INSERT INTO products VALUES("567","P-20027","","POWER-ONE-MNET","Per Pieces","240","280","Gafter Trading","1","Phone","","","40","240","0","0","");
INSERT INTO products VALUES("568","P-07323757","","M5S-MEIZU","Per Pieces","790","850","Gafter Trading","1","Phone","","","60","790","0","0","");
INSERT INTO products VALUES("569","P-0903262","","LAPTOP-BATTERY","Select Product ","60","80","Gafter Trading","75","Laptop Accessories","","","20","60","0","0","");
INSERT INTO products VALUES("570","P-222333","","NIKON-70-300MM","Select Product ","","","Gafter Trading","0","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("571","P-23042","","70-300MM-NIKON","Per Pieces","600","750","Gafter Trading","2","Camera","","","150","600","0","0","");
INSERT INTO products VALUES("572","P-00302306","","L2-JABRE","Select Product ","20","25","Gafter Trading","0","Phone Accessories","","","5","20","0","0","");
INSERT INTO products VALUES("573","P-27320333","","ICD-BX140","Select Product ","190","220","Gafter Trading","4","Phone Accessories","","","30","190","0","0","");
INSERT INTO products VALUES("574","P-337347","","TX-20-BT","Select Product ","45","50","Gafter Trading","1","Phone Accessories","","","5","45","0","0","");
INSERT INTO products VALUES("575","P-20742","","KV-Q21","Select Product ","4","6","Gafter Trading","41","Phone Accessories","","","2","4","0","0","");
INSERT INTO products VALUES("576","P-22223783","","C6-PAWER-BANK","Select Product ","60","70","Gafter Trading","0","Phone Accessories","","","10","60","0","0","");
INSERT INTO products VALUES("577","P-6765329","","M5-CAR-MP3","Select Product ","11","15","Gafter Trading","-3","Phone Accessories","","","4","11","0","0","");
INSERT INTO products VALUES("578","P-6765329","","M5-CAR-MP3","Select Product ","11","15","Gafter Trading","1","Phone Accessories","","","4","11","0","0","");
INSERT INTO products VALUES("579","P-67005380","","SAMSUNG-FAST-CHARGER","Per Pieces","19","25","Gafter Trading","0","Phone Accessories","","","6","19","0","0","");
INSERT INTO products VALUES("580","P-2325343","","KV-Q22","Per Pieces","4","6","Gafter Trading","8","Phone Accessories","","","2","4","0","0","");
INSERT INTO products VALUES("581","P-0233032","","BELKIN","Per Pieces","70","90","Gafter Trading","2","Phone Accessories","","","20","70","0","0","");
INSERT INTO products VALUES("582","P-0233032","","BELKIN","Per Pieces","70","90","Gafter Trading","2","Phone Accessories","","","20","70","0","0","");
INSERT INTO products VALUES("583","P-02222033","","IPHONE-JACK","Select Product ","18","25","Gafter Trading","3","Phone Accessories","","","7","18","0","0","");
INSERT INTO products VALUES("584","P-35382233","","WUW-BO2","Select Product ","15","20","Gafter Trading","9","Phone Accessories","","","5","15","0","0","");
INSERT INTO products VALUES("585","P-293300","","I-WATCH-CHARGER","Per Pieces","130","170","Gafter Trading","3","Phone Accessories","","","40","130","0","0","");
INSERT INTO products VALUES("586","P-32020709","","HD-TV","Per Pieces","17","20","Gafter Trading","3","Phone Accessories","","","3","17","0","0","");
INSERT INTO products VALUES("587","P-34703330","","UK-PLAG","Select Product ","120","150","Gafter Trading","4","Phone Accessories","","","30","120","0","0","");
INSERT INTO products VALUES("588","P-0222225","","NK-810","Select Product ","40","50","Gafter Trading","4","Phone Accessories","","","10","40","0","0","");
INSERT INTO products VALUES("589","P-0322222","","AUX-CABLE","Select Product ","4","5","Gafter Trading","0","Phone Accessories","","","1","4","0","0","");
INSERT INTO products VALUES("590","P-820223","","ICD-PX470","Select Product ","290","350","Gafter Trading","2","Phone Accessories","","","60","290","0","0","");
INSERT INTO products VALUES("591","P-820223","","ICD-PX470","Select Product ","290","350","Gafter Trading","2","Phone Accessories","","","60","290","0","0","");
INSERT INTO products VALUES("592","P-3293337","","PS4-PAD","Per Pieces","220","250","Gafter Trading","2","Phone Accessories","","","30","220","0","0","");
INSERT INTO products VALUES("593","P-3280373","","YX20-BT","Select Product ","45","50","Gafter Trading","0","Phone Accessories","","","5","45","0","0","");
INSERT INTO products VALUES("594","P-23932","","HMDI-20M","Select Product ","90","120","Gafter Trading","2","Phone Accessories","","","30","90","0","0","");
INSERT INTO products VALUES("595","P-23932","","HMDI-20M","Select Product ","90","120","Gafter Trading","2","Phone Accessories","","","30","90","0","0","");
INSERT INTO products VALUES("596","P-004925","","HMDI-3M","Per Pieces","19","25","Gafter Trading","1","Phone Accessories","","","6","","0","0","");
INSERT INTO products VALUES("597","P-3232234","NOKIA","105 DUOS","Select Product ","68","80","Gafter Trading","0","Phone Accessories","","","12","","0","0","");
INSERT INTO products VALUES("598","P-0632526","","","Select Product ","","","Gafter Trading","0","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("599","P-2520323","PHONE ACCES","UCOM DOUBLE","Select Product ","17","20","Oman","17","Phone Accessories","","","3","","0","0","");
INSERT INTO products VALUES("600","P-90282269","PHONE ACCES","PHILIPS","Select Product ","6","8","Gafter Trading","3","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("601","P-032332","SAMSUNG","T285 TAB","Select Product ","595","650","Gafter Trading","0","Phone Accessories","","","55","","0","0","");
INSERT INTO products VALUES("602","P-620","PHONE ACCES","LONOVO USB MOUNTH","Select Product ","30","40","Gafter Trading","0","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("603","P-0259823","PHONE ACCES","4G CABLE","Select Product ","6","10","Gafter Trading","23","Phone Accessories","","","4","","0","0","");
INSERT INTO products VALUES("604","P-2923033","PHONE ACCES","5G CABLE","Select Product ","15","25","Gafter Trading","16","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("605","P-203723","PHONE ACCES","450BT","Select Product ","45","50","Oman","1","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("606","P-0050703","PHONE ACCES","KEYBOARD WIRELLESS","Select Product ","29","35","Oman","10","Phone Accessories","","","6","","0","0","");
INSERT INTO products VALUES("607","P-0203223","CITY CALL ","LIFE-Q","Select Product ","236","270","Agingo Enterprise","3","Phone Accessories","","","30","","0","0","");
INSERT INTO products VALUES("609","P-22032238","CITY CALL ","LIFE-4.0","Select Product ","148","160","Gafter Trading","11","Phone Accessories","","","12","","0","0","");
INSERT INTO products VALUES("610","P-023030","PHONE ACCES","S4-SPEAKER","Select Product ","13","15","Oman","4","Phone Accessories","","","2","","0","0","");
INSERT INTO products VALUES("611","P-355052","PHONE ACCES","K100-SPEAKER","Select Product ","25","30","Oman","1","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("612","P-2670343","PHONE ACCES","M030-SPEAKER","Select Product ","33","40","Oman","3","Phone Accessories","","","7","","0","0","");
INSERT INTO products VALUES("613","P-633393","PHONE ACCES","V-03","Select Product ","19","25","Oman","2","Phone Accessories","","","6","","0","0","");
INSERT INTO products VALUES("614","P-3226","PHONE ACCES","A11-SPEAKER","Select Product ","33","40","Oman","0","Phone Accessories","","","7","","0","0","");
INSERT INTO products VALUES("615","P-22263300","PHONE ACCES","NOTE-BOOK CHARGER","Select Product ","25","30","Oman","1","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("616","P-2220303","PHONE ACCES","N11-CAR MP3","Select Product ","19","25","Oman","5","Phone Accessories","","","6","","0","0","");
INSERT INTO products VALUES("617","P-423033","PHONE ACCES","ROPE","Select Product ","1","2","Oman","155","Phone Accessories","","","1","","0","0","");
INSERT INTO products VALUES("618","P-94203","HUAWAI","P-20LITE","Select Product ","1236","1400","I2","2","Phone Accessories","","","114","","0","0","");
INSERT INTO products VALUES("619","P-8322","TECNO","7D","Select Product ","360","400","Pierro","0","Phone Accessories","","","40","","0","0","");
INSERT INTO products VALUES("621","P-2325230","PHONE ACCES","SINGLE-READER","Select Product ","2","3","Oman","0","Phone Accessories","","","1","","0","0","");
INSERT INTO products VALUES("622","P-03323335","PHONE ACCES","ANDRIOD-CABLE","Select Product ","6","10","Oman","38","Phone Accessories","","","4","","0","0","");
INSERT INTO products VALUES("623","P-37338392","PHONE ACCES","EARPINS-1205","Select Product ","7","10","Oman","17","Phone Accessories","","","3","","0","0","");
INSERT INTO products VALUES("624","P-32302303","PHONE ACCES","2PINS-IPHONE HEAD","Select Product ","10","15","Oman","20","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("625","P-00023238","PHONE ACCES","3PINS-IPAD HEAD","Select Product ","19","25","Gafter Trading","7","Phone Accessories","","","6","","0","0","");
INSERT INTO products VALUES("627","P-2280983","","","Select Product ","","","Gafter Trading","0","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("629","P-333020","PHONE ACCES","CLASS4-2GB","Select Product ","20","25","Oman","3","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("630","P-332423","PHONE ACCES","X-CHARGER","Select Product ","30","40","Gafter Trading","7","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("631","P-03830","PHONE ACCES","TECNO CHARGER","Select Product ","15","25","Oman","10","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("632","P-25042","PHONE ACCES","laptop-used chargers","Select Product ","30","50","Oman","0","Phone Accessories","","","20","","0","0","");
INSERT INTO products VALUES("633","P-82360632","PHONE ACCES","USAMS-HANDSFREE","Select Product ","25","30","Oman","6","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("634","P-320032","PHONE ACCES ","TOSHIBA-32GB","Select Product ","30","33","Oman","7","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("635","P-2333","PHONE ACCES ","SANDISK-16GB","Select Product ","18","20","Gafter Trading","64","Phone Accessories","","","3","","0","0","");
INSERT INTO products VALUES("636","P-0058326","DUAL ","DUAL-64GB","Select Product ","65","75","Gafter Trading","16","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("637","P-233552","5G -NEW CABLE","5G-NEW CABLE","Select Product ","7","10","Gafter Trading","0","Phone Accessories","","","3","","0","0","");
INSERT INTO products VALUES("638","P-23230939","","TF-256","Select Product ","500","600","Oman","1","Phone Accessories","","","100","","0","0","");
INSERT INTO products VALUES("639","P-23353","XTIGI","V10","Select Product ","208","240","Pierro","0","Phone Accessories","","","32","","0","0","");
INSERT INTO products VALUES("640","P-2096032","XTIGI","V18","Select Product ","250","280","Gafter Trading","0","Phone Accessories","","","40","","0","0","");
INSERT INTO products VALUES("641","P-062223","XTIGI","V13","Select Product ","222","250","Pierro","0","Phone Accessories","","","28","","0","0","");
INSERT INTO products VALUES("642","P-3023396","XTIGI","V11","Select Product ","223","250","Pierro","1","Phone Accessories","","","27","","0","0","");
INSERT INTO products VALUES("643","P-0403030","XTIGI","P11","Select Product ","372","410","Gafter Trading","1","Phone Accessories","","","38","","0","0","");
INSERT INTO products VALUES("644","P-453008","","","Select Product ","","","Gafter Trading","0","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("645","P-2330295","","","Select Product ","","","Gafter Trading","0","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("646","P-3662302","PHONE ACCES","3.0-CASE","Select Product ","25","30","Gafter Trading","2","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("647","P-03224329","TECNO","T371","Select Product ","66","80","Gafter Trading","1","Phone Accessories","","","14","","0","0","");
INSERT INTO products VALUES("648","P-3323523","SAMSUNG","B310E","Select Product ","103","120","Pierro","8","Phone Accessories","","","17","","0","0","");
INSERT INTO products VALUES("649","P-27260","TECNO ","F1","Select Product ","250","280","Pierro","4","Phone Accessories","","","30","","0","0","");
INSERT INTO products VALUES("650","P-39023324","CITY CALL","M87","Select Product ","50","60","Oman","1","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("651","P-432707","CLASS-10","32GB","Select Product ","60","70","Gafter Trading","22","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("652","P-33023327","GAME","360 WIRE","Select Product ","38","45","Gafter Trading","3","Phone Accessories","","","7","","0","0","");
INSERT INTO products VALUES("653","P-3329090","iphone","3515-6plus-64gb-gray","Select Product ","1500","1800","Oman","1","Phone Accessories","","","300","","0","0","");
INSERT INTO products VALUES("654","P-55330","iphone","1223-6plus-64gb-gold","Select Product ","1500","1800","Oman","0","Phone Accessories","","","300","","0","0","");
INSERT INTO products VALUES("655","P-3322203","iphone","8606-6plus-64gb-gold","Select Product ","1500","1800","Oman","0","Phone Accessories","","","300","","0","0","");
INSERT INTO products VALUES("656","P-2723233","iphone","6648-6plus-16gb-gold","Select Product ","1300","1500","Oman","0","Phone Accessories","","","200","","0","0","");
INSERT INTO products VALUES("657","P-322222","DEII","5958-I3-4GB-128SSD","Select Product ","140","1600","Oman","1","Phone Accessories","","","1460","","0","0","");
INSERT INTO products VALUES("658","P-230053","HP","5483-I3-4GB-500GB","Select Product ","1700","2100","Oman","1","Phone Accessories","","","400","","0","0","");
INSERT INTO products VALUES("659","P-38332342","LONOVO","AA509-4GB-500GB-CERELUM","Select Product ","1200","1400","Oman","1","Phone Accessories","","","200","","0","0","");
INSERT INTO products VALUES("660","P-22252","LONOVO","AA281-4GB-500GB","Select Product ","1200","1400","Oman","1","Phone Accessories","","","200","","0","0","");
INSERT INTO products VALUES("661","P-22252","LONOVO","AA281-4GB-500GB","Select Product ","1200","1400","Oman","1","Phone Accessories","","","200","","0","0","");
INSERT INTO products VALUES("662","P-3022333","DEII","2118-I3-4GB-128SSD","Select Product ","1300","1700","Gafter Trading","1","Phone Accessories","","","400","","0","0","");
INSERT INTO products VALUES("663","P-332330","DIGIRICH ","2GB","Select Product ","13","14","Oman","15","Phone Accessories","","","2","","0","0","");
INSERT INTO products VALUES("664","P-332023","ULTRA-FLAIR","16GB-ULTRA -FLAIR","Select Product ","35","40","Oman","0","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("665","P-6423630","Itel","A16","Select Product ","202","225","Gafter Trading","27","Phone Accessories","","","23","","0","0","");
INSERT INTO products VALUES("666","P-0022272","Itel","P13","Select Product ","248","280","Gafter Trading","0","Phone Accessories","","","32","","0","0","");
INSERT INTO products VALUES("667","P-2093233","Itel","5080","Select Product ","50","60","Gafter Trading","3","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("668","P-42946","","","Select Product ","","","Gafter Trading","0","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("669","P-522322","SAMSUNG","TAB T528","Select Product ","1200","1350","Gafter Trading","2","Phone Accessories","","","150","","0","0","");
INSERT INTO products VALUES("670","P-9033223","SAMSUNG","TAB T528 -SPEN","Select Product ","1500","1600","Gafter Trading","0","Phone Accessories","","","100","","0","0","");
INSERT INTO products VALUES("671","P-3032430","HP","HP-V178B","Select Product ","37","42","Gafter Trading","1","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("672","P-27220","PHONE ACCES","VGA-CONVERTOR","Select Product ","20","30","Oman","3","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("673","P-22020","","","Select Product ","","","Gafter Trading","0","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("675","P-333320","canon","1300d-","Select Product ","","","Gafter Trading","0","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("677","P-2375720","phone","F07","Select Product ","28","35","Gafter Trading","0","Phone Accessories","","","7","","0","0","");
INSERT INTO products VALUES("678","P-223223","VGA TOVGA","","Select Product ","","","Gafter Trading","0","Phone Accessories","","","","","0","0","");
INSERT INTO products VALUES("679","P-03553200","VGA TO VGA","VGA TOVGA","Select Product ","3","4","Gafter Trading","50","Phone Accessories","","","1","","0","0","");
INSERT INTO products VALUES("680","P-3033204","reader","CARD READER","Select Product ","3","5","Gafter Trading","125","Phone Accessories","","","2","","0","0","");
INSERT INTO products VALUES("681","P-23222222","SONY","SONY DIGITAL CAMARA","Select Product ","400","500","Gafter Trading","1","Phone Accessories","","","100","","0","0","");
INSERT INTO products VALUES("682","P-25352323","CANON","CANON DIGITAL CAMARA","Select Product ","400","500","Gafter Trading","0","Phone Accessories","","","100","","0","0","");
INSERT INTO products VALUES("683","P-343083","NIKON","NIKON DIGITAL CAMARA","Select Product ","400","500","Gafter Trading","1","Phone Accessories","","","100","","0","0","");
INSERT INTO products VALUES("684","P-22345633","CAR CHARGER ","ES16-CAR CHARGER","Select Product ","20","25","Gafter Trading","4","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("685","P-32222320","INFINIX   ","HOT-6X","Select Product ","590","640","Gafter Trading","5","Phone Accessories","","","50","","0","0","");
INSERT INTO products VALUES("686","P-390020","LONOVO","AA477-I5-4GB-1TB-LONOVO","Select Product ","1800","2200","Oman","1","Phone Accessories","","","400","","0","0","");
INSERT INTO products VALUES("687","P-2983322","DEII","9926-I3-SSD128GB-DELL","Select Product ","1400","1700","Oman","1","Phone Accessories","","","300","","0","0","");
INSERT INTO products VALUES("688","P-20323083","DEII","9590-I3-4GB-SSD128GB-DELL","Select Product ","1400","1700","Oman","1","Phone Accessories","","","300","","0","0","");
INSERT INTO products VALUES("689","P-2003","DELL","6950-I3-4GB-SSD128GB-DELL","Select Product ","1400","1700","Gafter Trading","1","Phone Accessories","","","300","","0","0","");
INSERT INTO products VALUES("690","P-32620","DELL","5766-I3-4GB-128GB-DELL","Select Product ","1400","1700","Gafter Trading","1","Phone Accessories","","","300","","0","0","");
INSERT INTO products VALUES("691","P-2230062","HP","52V7-4GB-500GB-DUAL CORE","Select Product ","1200","1400","Gafter Trading","1","Phone Accessories","","","200","","0","0","");
INSERT INTO products VALUES("692","P-223500","HP","6DH6-4GB-1TG-AMD-E2","Select Product ","1200","1500","Gafter Trading","0","Phone Accessories","","","300","","0","0","");
INSERT INTO products VALUES("693","P-72330","LONOVO","ONGU-4GB-1TB-DUAL-CORE","Select Product ","1200","1500","Gafter Trading","0","Phone Accessories","","","300","","0","0","");
INSERT INTO products VALUES("694","P-2890233","HP","6HPV-4GB-500GB-DUAL-CORE","Select Product ","1200","1400","Gafter Trading","1","Phone Accessories","","","200","","0","0","");
INSERT INTO products VALUES("695","P-22222223","HP","C5FC-4GB-500GB-DUAL-CORE","Select Product ","1200","1400","Gafter Trading","0","Phone Accessories","","","200","","0","0","");
INSERT INTO products VALUES("696","P-222332","HP","0TAW-4GB-500GB-DUAL CORE","Select Product ","1200","1400","Gafter Trading","0","Phone Accessories","","","200","","0","0","");
INSERT INTO products VALUES("697","P-43023385","DELL","0651-4gb-1tb-i3","Select Product ","1500","1850","Gafter Trading","0","Phone Accessories","","","350","","0","0","");
INSERT INTO products VALUES("698","P-428372","ASUS","50LA-I5-4GB-500GB-ASUS","Select Product ","1700","2200","Oman","1","Phone Accessories","","","500","","0","0","");
INSERT INTO products VALUES("699","P-2433624","USED-CHARGERS","USED-CHARGERS","Select Product ","30","40","Gafter Trading","29","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("700","P-07303033","TECNO","WX3P-TECNO","Select Product ","321","350","Pierro","0","Phone Accessories","","","29","","0","0","");
INSERT INTO products VALUES("701","P-02782943","NOKIA","7PLUS-NOKIA","Select Product ","1611","1750","Francis","2","Phone Accessories","","","139","","0","0","");
INSERT INTO products VALUES("702","P-228227","TECNO","CAMON-X-32GB","Select Product ","726","790","Pierro","1","Phone Accessories","","","64","","0","0","");
INSERT INTO products VALUES("703","P-22900970","LONOVO","lonovo-big pin","Select Product ","20","25","Gafter Trading","9","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("704","P-340332","XTIGI","l100","Select Product ","46","55","Gafter Trading","0","Phone Accessories","","","9","","0","0","");
INSERT INTO products VALUES("705","P-3524","XTIGI","G25","Select Product ","65","75","Gafter Trading","0","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("706","P-30322","XTIGI","S37","Select Product ","75","85","Gafter Trading","0","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("707","P-36293832","XTIGI","S18","Select Product ","75","85","Gafter Trading","1","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("708","P-6242","iphone","7166-5S-16GB-GRAY","Select Product ","500","650","Gafter Trading","1","Phone Accessories","","","150","","0","0","");
INSERT INTO products VALUES("709","P-30228773","iphone","7705-5S-16GB-GRAY","Select Product ","500","650","Gafter Trading","1","Phone Accessories","","","150","","0","0","");
INSERT INTO products VALUES("710","P-2232902","iphone","7588-5S-16GB-GRAY","Select Product ","500","650","Gafter Trading","1","Phone Accessories","","","150","","0","0","");
INSERT INTO products VALUES("711","P-7528302","iphone","9307-5S-16GB-GRAY","Select Product ","500","650","Gafter Trading","1","Phone Accessories","","","150","","0","0","");
INSERT INTO products VALUES("712","P-493390","seagate","SEAGATE-2TB","Select Product ","350","400","Gafter Trading","3","Phone Accessories","","","50","","0","0","");
INSERT INTO products VALUES("713","P-3320902","genx ","8GB-GENX","Select Product ","15","17","Gafter Trading","13","Phone Accessories","","","3","","0","0","");
INSERT INTO products VALUES("714","P-220352","UITRA-FLAR","32GB-ULTRA FLAIR","Select Product ","40","55","Gafter Trading","1","Phone Accessories","","","15","","0","0","");
INSERT INTO products VALUES("715","P-026007","GLIDE","16GB-GLIDE","Select Product ","25","30","Gafter Trading","5","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("716","P-230233","GLIDE","32GB-GLIDE","Select Product ","40","50","Gafter Trading","21","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("717","P-3345239","GLIDE","128GB-GLIDE","Select Product ","120","150","Gafter Trading","3","Phone Accessories","","","30","","0","0","");
INSERT INTO products VALUES("718","P-3603032","GLIDE","256-GLIDE","Select Product ","220","280","Gafter Trading","1","Phone Accessories","","","60","","0","0","");
INSERT INTO products VALUES("719","P-43223993","SAMSUNG","GT1207","Select Product ","84","95","Gafter Trading","4","Phone Accessories","","","11","","0","0","");
INSERT INTO products VALUES("720","P-8005","SAMSUNG","J2CORE","Select Product ","453","500","Gafter Trading","3","Phone Accessories","","","47","","0","0","");
INSERT INTO products VALUES("721","P-892233","SAMSUNG ","J4PLUS","Select Product ","750","850","Gafter Trading","1","Phone Accessories","","","100","","0","0","");
INSERT INTO products VALUES("722","P-22792","SAMSUNG ","J6PLUS","Select Product ","915","1100","Gafter Trading","1","Phone Accessories","","","185","","0","0","");
INSERT INTO products VALUES("723","P-032303","SAMSUNG","A7PLUS","Select Product ","1579","1900","Gafter Trading","1","Phone Accessories","","","321","","0","0","");
INSERT INTO products VALUES("724","P-2282","TECNO","cm","Select Product ","543","590","Gafter Trading","2","Phone Accessories","","","47","","0","0","");
INSERT INTO products VALUES("725","P-30343","HUAWAI","Y9","Select Product ","950","1100","Gafter Trading","0","Phone Accessories","","","150","","0","0","");
INSERT INTO products VALUES("726","P-03332032","TECNO","camon X-PRO","Select Product ","1000","1100","Gafter Trading","0","Phone Accessories","","","100","","0","0","");
INSERT INTO products VALUES("727","P-49205","iphone","16GB-IXPAND","Select Product ","80","110","Gafter Trading","2","Phone Accessories","","","30","","0","0","");
INSERT INTO products VALUES("728","P-320208","iphone","32GB-IXPAND","Select Product ","140","170","Gafter Trading","1","Phone Accessories","","","30","","0","0","");
INSERT INTO products VALUES("729","P-8059072","SAMSUNG","J3","Select Product ","470","495","Gafter Trading","0","Phone Accessories","","","25","","0","0","");
INSERT INTO products VALUES("730","P-32332325","DIGIRICH","16GB","Select Product ","18","20","Gafter Trading","14","Phone Accessories","","","2","","0","0","");
INSERT INTO products VALUES("731","P-237088","XTIGI","B310","Select Product ","42","50","Gafter Trading","0","Phone Accessories","","","8","","0","0","");
INSERT INTO products VALUES("732","P-43093303","TECNO","T350","Select Product ","58","70","Gafter Trading","3","Phone Accessories","","","12","","0","0","");
INSERT INTO products VALUES("733","P-37300","Itel","2171","Select Product ","37","45","Gafter Trading","14","Phone Accessories","","","8","","0","0","");
INSERT INTO products VALUES("734","P-82223072","Itel","2190","Select Product ","42","50","Gafter Trading","16","Phone Accessories","","","8","","0","0","");
INSERT INTO products VALUES("735","P-988222","NOKIA","3-nokia","Select Product ","485","530","Gafter Trading","2","Phone Accessories","","","45","","0","0","");
INSERT INTO products VALUES("736","P-033293","NOKIA","1-NOKIA","Select Product ","293","330","Gafter Trading","2","Phone Accessories","","","37","","0","0","");
INSERT INTO products VALUES("737","P-278620","TECNO","CAMON-11","Select Product ","615","690","Gafter Trading","8","Phone Accessories","","","75","","0","0","");
INSERT INTO products VALUES("738","P-3632642","seagate","500gb","Select Product ","200","250","Gafter Trading","1","Phone Accessories","","","50","","0","0","");
INSERT INTO products VALUES("739","P-3824302","BB","EARPINS","Select Product ","5","7","Gafter Trading","30","Phone Accessories","","","2","","0","0","");
INSERT INTO products VALUES("740","ama"," a    ","a","","300","350","oman","1230","","2018-11-29","2018-11-30","50","","1235","0","");
INSERT INTO products VALUES("741","P-30003395","  ","TF32GB","","18","25","oman","6","","2018-09-30","","7","","0","0","");





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
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=latin1;

INSERT INTO sales VALUES("37","RS-3326063","","11/29/2018","cash","2450","350","3000","","","0");
INSERT INTO sales VALUES("38","RS-2933053","","11/29/2018","cash","768","88","0","","","800");
INSERT INTO sales VALUES("39","RS-2268022","","11/30/2018","cash","440","","440","","","0");
INSERT INTO sales VALUES("40","RS-03335","","11/30/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("41","RS-3093432","","11/30/2018","cash","60","","100","","","0");
INSERT INTO sales VALUES("42","","","11/30/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("43","","","11/30/2018","cash","19","","20","","","0");
INSERT INTO sales VALUES("44","","","11/30/2018","cash","319","","320","","","0");
INSERT INTO sales VALUES("45","","","11/30/2018","cash","80","","80","","","0");
INSERT INTO sales VALUES("46","","","11/30/2018","cash","65","","90","","","0");
INSERT INTO sales VALUES("47","","","11/30/2018","cash","25","","30","","","0");
INSERT INTO sales VALUES("48","","","11/30/2018","cash","30","","40","","","0");
INSERT INTO sales VALUES("49","","","11/30/2018","cash","10","","20","","","0");
INSERT INTO sales VALUES("50","RS-2030308","","11/30/2018","cash","240","","250","","","0");
INSERT INTO sales VALUES("51","","","11/30/2018","cash","480","","480","","","0");
INSERT INTO sales VALUES("52","RS-322009","","11/30/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("53","RS-0370323","","11/30/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("54","","","11/30/2018","cash","690","","690","","","0");
INSERT INTO sales VALUES("55","RS-2222302","","11/30/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("56","","","11/30/2018","cash","105","","105","","","0");
INSERT INTO sales VALUES("57","","","11/30/2018","cash","440","","500","","","0");
INSERT INTO sales VALUES("58","","","11/30/2018","cash","56","","60","","","0");
INSERT INTO sales VALUES("59","","","11/30/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("60","","","11/30/2018","cash","16","","20","","","0");
INSERT INTO sales VALUES("61","","","11/30/2018","cash","16","","20","","","0");
INSERT INTO sales VALUES("62","RS-988222","","11/30/2018","cash","25","","50","","","0");
INSERT INTO sales VALUES("63","RS-8222090","","11/30/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("64","","","11/30/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("65","","","11/30/2018","cash","30","","50","","","0");
INSERT INTO sales VALUES("66","","","11/30/2018","cash","30","","50","","","0");
INSERT INTO sales VALUES("67","","","11/30/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("68","","","11/30/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("69","","","11/30/2018","cash","540","","540","","","0");
INSERT INTO sales VALUES("70","","","11/30/2018","cash","25","","40","","","0");
INSERT INTO sales VALUES("71","","","11/30/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("72","RS-4303","","11/30/2018","cash","80","","80","","","0");
INSERT INTO sales VALUES("73","","","11/30/2018","cash","38","","40","","","0");
INSERT INTO sales VALUES("74","","","11/30/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("75","","","11/30/2018","cash","35","","40","","","0");
INSERT INTO sales VALUES("76","","","11/30/2018","cash","340","","340","","","0");
INSERT INTO sales VALUES("77","","","11/30/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("78","","","11/30/2018","cash","150","","150","","","0");
INSERT INTO sales VALUES("79","RS-22800","","11/30/2018","cash","250","","250","","","0");
INSERT INTO sales VALUES("80","RS-3238326","","11/30/2018","cash","160","","160","","","0");
INSERT INTO sales VALUES("81","","","11/30/2018","cash","45","","60","","","0");
INSERT INTO sales VALUES("82","","","11/30/2018","cash","19","","20","","","0");
INSERT INTO sales VALUES("83","","","11/30/2018","cash","50","","60","","","0");
INSERT INTO sales VALUES("84","","","11/30/2018","cash","70","","70","","","0");
INSERT INTO sales VALUES("85","","","11/30/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("86","","","11/30/2018","cash","10","","10","","","0");
INSERT INTO sales VALUES("87","","","11/30/2018","cash","21","","50","","","0");
INSERT INTO sales VALUES("88","","","11/30/2018","cash","22","","25","","","0");
INSERT INTO sales VALUES("89","","","11/30/2018","cash","22","","25","","","0");
INSERT INTO sales VALUES("90","","","11/30/2018","cash","201","","220","","","0");
INSERT INTO sales VALUES("91","","","11/30/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("92","","","11/30/2018","cash","147","","150","","","0");
INSERT INTO sales VALUES("93","RS-322038","","11/30/2018","cash","30","11","34","","","12");
INSERT INTO sales VALUES("94","RS-33003926","","11/30/2018","cash","0","","230","","","0");
INSERT INTO sales VALUES("95","RS-3222000","","11/30/2018","cash","30","11","1234","","","0");
INSERT INTO sales VALUES("96","RS-433335","","12/01/2018","cash","888","119","0","","","888");
INSERT INTO sales VALUES("97","RS-2270","","12/01/2018","cash","20","4","20","","","0");
INSERT INTO sales VALUES("98","RS-83028333","","12/01/2018","cash","66","11","66","","","0");
INSERT INTO sales VALUES("99","RS-922203","","12/01/2018","cash","15","3","15","","","0");
INSERT INTO sales VALUES("100","RS-372735","","12/01/2018","cash","340","34","340","","","0");
INSERT INTO sales VALUES("101","RS-620200","","12/01/2018","cash","270","30","270","","","0");
INSERT INTO sales VALUES("102","RS-07063230","","12/01/2018","cash","255","25","255","","","0");
INSERT INTO sales VALUES("103","RS-23233","","12/01/2018","cash","225","23","225","","","0");
INSERT INTO sales VALUES("104","RS-029494","","12/01/2018","cash","10","3","20","","","0");
INSERT INTO sales VALUES("105","RS-8352428","","12/01/2018","cash","225","23","240","","","0");
INSERT INTO sales VALUES("106","RS-70202","","12/01/2018","cash","160","24","160","","","0");
INSERT INTO sales VALUES("107","RS-0333222","","12/01/2018","cash","5","3","5","","","0");
INSERT INTO sales VALUES("108","RS-38300203","","12/01/2018","cash","65","10","70","","","0");
INSERT INTO sales VALUES("109","RS-230343","","12/01/2018","cash","125","18","125","","","0");
INSERT INTO sales VALUES("110","RS-42202252","","12/01/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("111","RS-372902","","12/01/2018","cash","19","","20","","","0");
INSERT INTO sales VALUES("112","RS-2332238","","12/01/2018","cash","120","","120","","","0");
INSERT INTO sales VALUES("113","RS-7700629","","12/01/2018","cash","38","","50","","","0");
INSERT INTO sales VALUES("114","RS-3238640","","12/01/2018","cash","535","","535","","","0");
INSERT INTO sales VALUES("115","RS-45633000","","12/01/2018","cash","280","","300","","","0");
INSERT INTO sales VALUES("116","RS-336302","","12/01/2018","cash","16","","20","","","0");
INSERT INTO sales VALUES("117","RS-3522238","","12/01/2018","cash","10","","10","","","0");
INSERT INTO sales VALUES("118","RS-6259042","","12/01/2018","cash","35","","40","","","0");
INSERT INTO sales VALUES("119","RS-03253327","","12/01/2018","cash","105","","1590","","","0");
INSERT INTO sales VALUES("120","RS-78033","","12/01/2018","cash","690","75","700","","","0");
INSERT INTO sales VALUES("121","RS-62732","","12/01/2018","cash","35","11","40","","","0");
INSERT INTO sales VALUES("122","RS-60800","","12/01/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("123","RS-0272333","","12/01/2018","cash","1106","","1106","","","0");
INSERT INTO sales VALUES("124","RS-8032322","","12/01/2018","cash","3174","","3174","","","0");
INSERT INTO sales VALUES("125","RS-3238433","","12/01/2018","cash","56","","60","","","0");
INSERT INTO sales VALUES("126","RS-739268","","12/01/2018","cash","65","","65","","","0");
INSERT INTO sales VALUES("127","RS-006339","","12/01/2018","cash","52","","52","","","0");
INSERT INTO sales VALUES("128","RS-35030209","","12/01/2018","cash","480","","480","","","0");
INSERT INTO sales VALUES("129","RS-2033332","","12/01/2018","cash","30","","50","","","0");
INSERT INTO sales VALUES("130","RS-20302272","","12/01/2018","cash","460","","460","","","0");
INSERT INTO sales VALUES("131","RS-00203","","12/01/2018","cash","690","","690","","","0");
INSERT INTO sales VALUES("132","RS-5204070","","12/01/2018","cash","340","","350","","","0");
INSERT INTO sales VALUES("133","RS-0252305","","12/01/2018","cash","31","","51","","","0");
INSERT INTO sales VALUES("134","RS-23336","","12/01/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("135","RS-034330","","12/01/2018","cash","44","","50","","","0");
INSERT INTO sales VALUES("136","RS-338022","","12/01/2018","cash","45","","60","","","0");
INSERT INTO sales VALUES("137","RS-237203","","12/01/2018","cash","45","","45","","","0");
INSERT INTO sales VALUES("138","RS-74068622","","12/01/2018","cash","620","","620","","","0");
INSERT INTO sales VALUES("139","RS-05552","","12/01/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("140","RS-322253","","12/01/2018","cash","16","","20","","","0");
INSERT INTO sales VALUES("141","RS-30233","","12/01/2018","cash","550","","550","","","0");
INSERT INTO sales VALUES("142","RS-023223","","12/01/2018","cash","30","","50","","","0");
INSERT INTO sales VALUES("143","RS-3353282","","12/01/2018","cash","700","","700","","","0");
INSERT INTO sales VALUES("144","RS-22322030","","12/01/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("145","RS-043423","","12/01/2018","cash","235","","235","","","0");
INSERT INTO sales VALUES("146","RS-22233","","12/01/2018","cash","28","","50","","","0");
INSERT INTO sales VALUES("147","RS-082630","","12/01/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("148","RS-5230520","","12/01/2018","cash","280","","480","","","0");
INSERT INTO sales VALUES("149","RS-23232808","","12/01/2018","cash","21","","21","","","0");
INSERT INTO sales VALUES("150","RS-222020","","12/01/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("151","RS-30303033","","12/01/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("152","RS-330226","","12/01/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("153","RS-38322292","","12/01/2018","cash","10","","10","","","0");
INSERT INTO sales VALUES("154","RS-92530","","12/01/2018","cash","25","","50","","","0");
INSERT INTO sales VALUES("155","RS-2320","","12/01/2018","cash","25","7","25","","","0");
INSERT INTO sales VALUES("156","","","12/01/2018","cash","150","12","150","","","0");
INSERT INTO sales VALUES("157","RS-302330","","12/01/2018","cash","70","10","80","","","0");
INSERT INTO sales VALUES("158","RS-53336","","12/01/2018","cash","40","3","40","","","0");
INSERT INTO sales VALUES("159","RS-2322247","","12/01/2018","cash","30","5","30","","","0");
INSERT INTO sales VALUES("160","RS-2033232","","12/01/2018","cash","60","13","60","","","0");
INSERT INTO sales VALUES("161","RS-9702342","","12/02/2018","cash","95","11","95","","","0");
INSERT INTO sales VALUES("162","RS-28023060","","12/03/2018","cash","5","3","5","","","0");
INSERT INTO sales VALUES("163","RS-3730304","","12/03/2018","cash","50","6","50","","","0");
INSERT INTO sales VALUES("164","RS-3200043","","12/03/2018","cash","480","33","480","","","0");
INSERT INTO sales VALUES("165","RS-0337203","","12/03/2018","cash","90","11","100","","","0");
INSERT INTO sales VALUES("166","RS-582203","","12/03/2018","cash","30","3","30","","","0");
INSERT INTO sales VALUES("167","RS-7022303","","12/03/2018","cash","8","2","20","","","0");
INSERT INTO sales VALUES("168","RS-332608","","12/03/2018","cash","1668","171","1668","","","0");
INSERT INTO sales VALUES("169","RS-92333337","","12/03/2018","cash","85","10","90","","","0");
INSERT INTO sales VALUES("170","RS-5030303","","12/03/2018","cash","100","13","100","","","0");
INSERT INTO sales VALUES("171","RS-3338822","","12/03/2018","cash","460","25","460","","","0");
INSERT INTO sales VALUES("172","RS-332927","","12/03/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("173","RS-2653857","","12/03/2018","cash","470","","470","","","0");
INSERT INTO sales VALUES("174","RS-6022227","","12/03/2018","cash","280","","300","","","0");
INSERT INTO sales VALUES("175","RS-0823323","","12/03/2018","cash","480","","480","","","0");
INSERT INTO sales VALUES("176","RS-2233333","","12/03/2018","cash","90","","90","","","0");
INSERT INTO sales VALUES("177","RS-22000","","12/03/2018","cash","540","","540","","","0");
INSERT INTO sales VALUES("178","RS-24360300","","12/03/2018","cash","141","","141","","","0");
INSERT INTO sales VALUES("179","RS-2326222","","12/03/2018","cash","175","","175","","","0");
INSERT INTO sales VALUES("180","RS-232262","","12/03/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("181","RS-277932","","12/03/2018","cash","32","","52","","","0");
INSERT INTO sales VALUES("182","RS-323032","","12/03/2018","cash","620","","620","","","0");
INSERT INTO sales VALUES("183","RS-03002333","","12/03/2018","cash","60","","60","","","0");
INSERT INTO sales VALUES("184","RS-3323322","","12/03/2018","cash","35","","50","","","0");
INSERT INTO sales VALUES("185","RS-22200","","12/03/2018","cash","660","","660","","","0");
INSERT INTO sales VALUES("186","RS-0260320","","12/03/2018","cash","950","","950","","","0");
INSERT INTO sales VALUES("187","RS-23042439","","12/03/2018","cash","680","","680","","","0");
INSERT INTO sales VALUES("188","RS-267232","","12/03/2018","cash","18","","20","","","0");
INSERT INTO sales VALUES("189","RS-035762","","12/03/2018","cash","95","","95","","","0");
INSERT INTO sales VALUES("190","RS-50232427","","12/03/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("191","RS-22323222","","12/03/2018","cash","600","","600","","","0");
INSERT INTO sales VALUES("192","RS-5224606","","12/03/2018","cash","435","","435","","","0");
INSERT INTO sales VALUES("193","RS-33323","","12/03/2018","cash","104","","104","","","0");
INSERT INTO sales VALUES("194","RS-353893","","12/03/2018","cash","690","","700","","","0");
INSERT INTO sales VALUES("195","RS-3235","","12/03/2018","cash","470","","480","","","0");
INSERT INTO sales VALUES("196","RS-2328233","","12/03/2018","cash","50","","60","","","0");
INSERT INTO sales VALUES("197","RS-3372032","","12/03/2018","cash","25","","30","","","0");
INSERT INTO sales VALUES("198","RS-33333205","","12/03/2018","cash","85","","100","","","0");
INSERT INTO sales VALUES("199","RS-32409","","12/03/2018","cash","400","","400","","","0");
INSERT INTO sales VALUES("200","RS-236238","","12/03/2018","cash","200","","200","","","0");
INSERT INTO sales VALUES("201","RS-430532","","12/03/2018","cash","690","","700","","","0");
INSERT INTO sales VALUES("202","RS-430532","","12/03/2018","cash","690","","700","","","0");
INSERT INTO sales VALUES("203","RS-2732230","","12/03/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("204","RS-2707379","","12/03/2018","cash","31","","40","","","0");
INSERT INTO sales VALUES("205","RS-332335","","12/03/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("206","RS-9032552","","12/03/2018","cash","61","","85","","","0");
INSERT INTO sales VALUES("207","RS-283902","","12/03/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("208","RS-02630","","12/03/2018","cash","95","","100","","","0");
INSERT INTO sales VALUES("209","RS-932347","","12/03/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("210","RS-2352037","","12/03/2018","cash","680","","680","","","0");
INSERT INTO sales VALUES("211","RS-364905","","12/03/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("212","RS-0033","","12/03/2018","cash","36","","40","","","0");
INSERT INTO sales VALUES("213","RS-402309","","12/03/2018","cash","414","","414","","","0");
INSERT INTO sales VALUES("214","RS-2622202","","12/03/2018","cash","120","","150","","","0");
INSERT INTO sales VALUES("215","RS-05227930","","12/03/2018","cash","28","","30","","","0");
INSERT INTO sales VALUES("216","RS-200234","","12/03/2018","cash","76","","80","","","0");
INSERT INTO sales VALUES("217","RS-3802222","","12/03/2018","cash","18","","20","","","0");
INSERT INTO sales VALUES("218","RS-30242078","","12/03/2018","cash","45","","50","","","0");
INSERT INTO sales VALUES("219","RS-033222","","12/03/2018","cash","120","","120","","","0");
INSERT INTO sales VALUES("220","RS-2302023","","12/03/2018","cash","18","","20","","","0");
INSERT INTO sales VALUES("221","RS-7043350","","12/03/2018","cash","20","","30","","","0");
INSERT INTO sales VALUES("222","RS-0063793","","12/03/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("223","RS-70320522","","12/03/2018","cash","450","","500","","","0");
INSERT INTO sales VALUES("224","RS-3793222","","12/03/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("225","RS-235233","","12/03/2018","cash","550","","550","","","0");
INSERT INTO sales VALUES("226","RS-3320200","","12/03/2018","cash","95","","95","","","0");
INSERT INTO sales VALUES("227","RS-46345","","12/03/2018","cash","25","","40","","","0");
INSERT INTO sales VALUES("228","RS-7303393","","12/03/2018","cash","10","","10","","","0");
INSERT INTO sales VALUES("229","RS-2203903","","12/03/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("230","RS-36532364","","12/03/2018","cash","430","","430","","","0");
INSERT INTO sales VALUES("231","RS-706339","","12/03/2018","cash","30","","50","","","0");
INSERT INTO sales VALUES("232","RS-2332703","","12/03/2018","cash","81","","81","","","0");
INSERT INTO sales VALUES("233","RS-320229","","12/03/2018","cash","100","","100","","","0");
INSERT INTO sales VALUES("234","RS-232982","","12/03/2018","cash","3","","3","","","0");
INSERT INTO sales VALUES("235","RS-820223","","12/03/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("236","RS-9302203","","12/03/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("237","RS-302345","","12/03/2018","cash","8","","9","","","0");
INSERT INTO sales VALUES("238","RS-623223","","12/03/2018","cash","690","","700","","","0");
INSERT INTO sales VALUES("239","RS-336263","","12/03/2018","cash","25","","50","","","0");
INSERT INTO sales VALUES("240","RS-84033009","","12/03/2018","cash","1330","","1330","","","0");
INSERT INTO sales VALUES("241","RS-388220","","12/03/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("242","RS-324","","12/03/2018","cash","20","","50","","","0");
INSERT INTO sales VALUES("243","RS-7332203","","12/03/2018","cash","6","","6","","","0");
INSERT INTO sales VALUES("244","RS-3233223","","12/03/2018","cash","70","","100","","","0");
INSERT INTO sales VALUES("245","RS-63442020","","12/03/2018","cash","36","","50","","","0");
INSERT INTO sales VALUES("246","RS-33933363","","12/03/2018","cash","18","","20","","","0");
INSERT INTO sales VALUES("247","RS-00032","","12/03/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("248","RS-22242492","","12/03/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("249","RS-02802330","","12/03/2018","cash","17","","20","","","0");
INSERT INTO sales VALUES("250","RS-9232003","","12/03/2018","cash","950","","950","","","0");
INSERT INTO sales VALUES("251","RS-33820332","","12/03/2018","cash","470","","500","","","0");
INSERT INTO sales VALUES("252","RS-0232","","12/03/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("253","RS-2338208","","12/03/2018","cash","420","","420","","","0");
INSERT INTO sales VALUES("254","RS-259039","","12/03/2018","cash","410","","410","","","0");
INSERT INTO sales VALUES("255","RS-025222","","12/03/2018","cash","280","","300","","","0");
INSERT INTO sales VALUES("256","RS-00090","","12/03/2018","cash","485","","490","","","0");
INSERT INTO sales VALUES("257","RS-3232223","","12/03/2018","cash","45","","50","","","0");
INSERT INTO sales VALUES("258","RS-32233304","","12/03/2018","cash","25","","50","","","0");
INSERT INTO sales VALUES("259","RS-332392","","12/03/2018","cash","80","","80","","","0");
INSERT INTO sales VALUES("260","RS-320222","","12/03/2018","cash","45","","45","","","0");
INSERT INTO sales VALUES("261","RS-2063032","","12/03/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("262","RS-863023","","12/03/2018","cash","12","","12","","","0");
INSERT INTO sales VALUES("263","RS-026230","","12/03/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("264","RS-3085920","","12/03/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("265","RS-2533330","","12/03/2018","cash","470","","470","","","0");
INSERT INTO sales VALUES("266","RS-2202235","","12/03/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("267","RS-0034023","","12/03/2018","cash","95","","100","","","0");
INSERT INTO sales VALUES("268","RS-03837","","12/03/2018","cash","100","","100","","","0");
INSERT INTO sales VALUES("269","RS-002003","","12/03/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("270","RS-09237","","12/03/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("271","RS-420233","","12/03/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("272","RS-420233","","12/03/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("273","RS-822308","","12/03/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("274","RS-42363","","12/03/2018","cash","430","","430","","","0");





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
) ENGINE=InnoDB AUTO_INCREMENT=446 DEFAULT CHARSET=latin1;

INSERT INTO sales_order VALUES("63","RS-3326063","740","1","350","50","ama","a"," a ","350","","11/29/2018");
INSERT INTO sales_order VALUES("64","RS-3326063","740","1","350","50","ama","a"," a ","350","","11/29/2018");
INSERT INTO sales_order VALUES("65","RS-3326063","740","5","1750","250","ama","a"," a ","350","","11/29/2018");
INSERT INTO sales_order VALUES("72","RS-2933053","405","3","57","9","P-304922","SANDISK-8GB","","19","","11/29/2018");
INSERT INTO sales_order VALUES("73","RS-2933053","409","1","21","3","P-222222","TOSHIBA-16GB","","21","","11/29/2018");
INSERT INTO sales_order VALUES("74","RS-2933053","191","1","440","26","P-05023242","J2-Sam","Samsung","440","","11/29/2018");
INSERT INTO sales_order VALUES("75","RS-2933053","194","1","250","50","P-322333","ZTE-Zip","ZTE","250","","11/29/2018");
INSERT INTO sales_order VALUES("77","RS-2268022","665","2","440","46","P-6423630","A16","Itel","225","","11/30/2018");
INSERT INTO sales_order VALUES("79","RS-03335","407","1","25","4","P-303202","DUAL-8GB","","25","","11/30/2018");
INSERT INTO sales_order VALUES("80","RS-3093432","225","1","60","13","P-53323","X9-CC","Ciy Call ","60","","11/30/2018");
INSERT INTO sales_order VALUES("92","RS-2030308","222","1","240","25","P-323333","X6-Life-CC","Ciy Call ","240","","11/30/2018");
INSERT INTO sales_order VALUES("95","RS-322009","416","1","20","2","P-0302000","TF-4GB","","15","","11/30/2018");
INSERT INTO sales_order VALUES("96","RS-0370323","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","11/30/2018");
INSERT INTO sales_order VALUES("98","RS-2222302","414","1","20","3","P-2822070","TF-16GB","","19","","11/30/2018");
INSERT INTO sales_order VALUES("106","RS-90203","413","1","28","5","P-30003395","TF-32GB","","28","","11/30/2018");
INSERT INTO sales_order VALUES("107","RS-33324220","246","1","350","30","P-2200520","F3-Tecno","Tecno","350","","11/30/2018");
INSERT INTO sales_order VALUES("108","RS-988222","405","1","25","3","P-304922","SANDISK-8GB","","19","","11/30/2018");
INSERT INTO sales_order VALUES("109","RS-33300282","600","1","10","0","P-90282269","PHILIPS","PHONE ACCES","8","","11/30/2018");
INSERT INTO sales_order VALUES("110","RS-359563","665","1","220","23","P-6423630","A16","Itel","225","","11/30/2018");
INSERT INTO sales_order VALUES("111","RS-8222090","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","11/30/2018");
INSERT INTO sales_order VALUES("120","RS-4303","414","2","38","6","P-2822070","TF-16GB","","19","","11/30/2018");
INSERT INTO sales_order VALUES("121","RS-4303","405","1","19","3","P-304922","SANDISK-8GB","","19","","11/30/2018");
INSERT INTO sales_order VALUES("122","RS-4303","405","1","19","3","P-304922","SANDISK-8GB","","19","","11/30/2018");
INSERT INTO sales_order VALUES("123","RS-4303","617","2","4","2","P-423033","ROPE","PHONE ACCES","2","","11/30/2018");
INSERT INTO sales_order VALUES("130","RS-22800","641","1","250","28","P-062223","V13","XTIGI","250","","11/30/2018");
INSERT INTO sales_order VALUES("131","RS-3238326","609","1","160","12","P-22032238","LIFE-4.0","CITY CALL","160","","11/30/2018");
INSERT INTO sales_order VALUES("156","RS-322038","186","1","30","11","P-090203","A","A","30","","11/30/2018");
INSERT INTO sales_order VALUES("157","RS-3222000","186","1","30","11","P-090203","A","A","30","","11/30/2018");
INSERT INTO sales_order VALUES("158","RS-433335","416","10","150","20","P-0302000","TF-4GB","","15","","12/01/2018");
INSERT INTO sales_order VALUES("159","RS-433335","468","5","80","10","P-624239","TF-8GB","","16","","12/01/2018");
INSERT INTO sales_order VALUES("160","RS-433335","414","4","76","12","P-2822070","TF-16GB","","19","","12/01/2018");
INSERT INTO sales_order VALUES("161","RS-433335","413","3","84","15","P-30003395","TF-32GB","","28","","12/01/2018");
INSERT INTO sales_order VALUES("162","RS-433335","404","3","84","9","P-22322","DUAL-16GB","","28","","12/01/2018");
INSERT INTO sales_order VALUES("163","RS-433335","407","3","75","12","P-303202","DUAL-8GB","","25","","12/01/2018");
INSERT INTO sales_order VALUES("164","RS-433335","410","3","48","6","P-420233","GENX-4GB","","16","","12/01/2018");
INSERT INTO sales_order VALUES("165","RS-433335","412","1","45","5","P-9234232","DUAL-32GB","","45","","12/01/2018");
INSERT INTO sales_order VALUES("166","RS-433335","469","1","35","7","P-947203","SANDISK-32GB","","35","","12/01/2018");
INSERT INTO sales_order VALUES("167","RS-433335","665","1","211","23","P-6423630","A16","Itel","225","","12/01/2018");
INSERT INTO sales_order VALUES("168","RS-2270","334","1","20","4","P-233222","4.0-BLUETOOTH","","15","","12/01/2018");
INSERT INTO sales_order VALUES("169","RS-83028333","414","2","38","6","P-2822070","TF-16GB","","19","","12/01/2018");
INSERT INTO sales_order VALUES("170","RS-83028333","413","1","28","5","P-30003395","TF-32GB","","28","","12/01/2018");
INSERT INTO sales_order VALUES("171","RS-922203","415","1","15","3","P-4832200","TF-2GB","","14","","12/01/2018");
INSERT INTO sales_order VALUES("172","RS-372735","198","1","340","34","P-290202","S13-Itel","Itel","340","","12/01/2018");
INSERT INTO sales_order VALUES("173","RS-620200","649","1","270","30","P-27260","F1","TECNO","280","","12/01/2018");
INSERT INTO sales_order VALUES("174","RS-07063230","203","1","255","25","P-33030392","A15-Itel","Itel","255","","12/01/2018");
INSERT INTO sales_order VALUES("175","RS-23233","665","1","225","23","P-6423630","A16","Itel","225","","12/01/2018");
INSERT INTO sales_order VALUES("176","RS-029494","445","1","10","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/01/2018");
INSERT INTO sales_order VALUES("177","RS-8352428","665","1","225","23","P-6423630","A16","Itel","225","","12/01/2018");
INSERT INTO sales_order VALUES("178","RS-70202","404","2","56","6","P-22322","DUAL-16GB","","28","","12/01/2018");
INSERT INTO sales_order VALUES("179","RS-70202","634","1","35","5","P-320032","TOSHIBA-32GB","PHONE ACCES","35","","12/01/2018");
INSERT INTO sales_order VALUES("180","RS-70202","716","1","50","10","P-230233","32GB-GLIDE","GLIDE","50","","12/01/2018");
INSERT INTO sales_order VALUES("181","RS-70202","408","1","19","3","P-279723","TOSHIBA-8GB","","19","","12/01/2018");
INSERT INTO sales_order VALUES("182","RS-0333222","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/01/2018");
INSERT INTO sales_order VALUES("183","RS-38300203","227","1","65","10","P-62333","S400-XTIGI","XTIGI  ","65","","12/01/2018");
INSERT INTO sales_order VALUES("186","RS-230343","413","1","28","5","P-30003395","TF-32GB","","28","","12/01/2018");
INSERT INTO sales_order VALUES("187","RS-230343","414","1","19","3","P-2822070","TF-16GB","","19","","12/01/2018");
INSERT INTO sales_order VALUES("188","RS-230343","468","3","48","6","P-624239","TF-8GB","","16","","12/01/2018");
INSERT INTO sales_order VALUES("189","RS-230343","416","2","30","4","P-0302000","TF-4GB","","15","","12/01/2018");
INSERT INTO sales_order VALUES("190","RS-42202252","544","1","50","10","P-3293927","USB-MODEM","","50","","12/01/2018");
INSERT INTO sales_order VALUES("191","RS-372902","414","1","19","3","P-2822070","TF-16GB"," ","19","","12/01/2018");
INSERT INTO sales_order VALUES("192","RS-2332238","648","1","120","17","P-3323523","B310E","SAMSUNG","120","","12/01/2018");
INSERT INTO sales_order VALUES("193","RS-7700629","414","1","19","3","P-2822070","TF-16GB"," ","19","","12/01/2018");
INSERT INTO sales_order VALUES("194","RS-7700629","408","1","19","3","P-279723","TOSHIBA-8GB","","19","","12/01/2018");
INSERT INTO sales_order VALUES("195","RS-3238640","243","1","535","34","P-23200062","Hot-6-2Gb","Infinix","535","","12/01/2018");
INSERT INTO sales_order VALUES("196","RS-45633000","649","1","280","30","P-27260","F1","TECNO","280","","12/01/2018");
INSERT INTO sales_order VALUES("197","RS-336302","410","1","16","2","P-420233","GENX-4GB","","16","","12/01/2018");
INSERT INTO sales_order VALUES("198","RS-3522238","445","1","10","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/01/2018");
INSERT INTO sales_order VALUES("200","RS-6259042","186","1","35","11","P-090203","A","A","30","","12/01/2018");
INSERT INTO sales_order VALUES("201","RS-03253327","186","3","105","33","P-090203","A","A","30","","12/01/2018");
INSERT INTO sales_order VALUES("203","RS-78033","737","1","690","75","P-278620","CAMON-11","TECNO","690","","12/01/2018");
INSERT INTO sales_order VALUES("204","RS-62732","186","1","35","11","P-090203","A","A","30","","12/01/2018");
INSERT INTO sales_order VALUES("206","RS-60800","403","1","25","3","P-203375","KINGSTON-16GB","","23","","12/01/2018");
INSERT INTO sales_order VALUES("207","RS-0272333","437","10","160","20","P-02325332","DIGIRICH-4GB","","16","","12/01/2018");
INSERT INTO sales_order VALUES("208","RS-0272333","635","5","105","15","P-2333","SANDISK-16GB","PHONE ACCES","21","","12/01/2018");
INSERT INTO sales_order VALUES("209","RS-0272333","663","10","150","20","P-332330","2GB","DIGIRICH","15","","12/01/2018");
INSERT INTO sales_order VALUES("210","RS-0272333","468","15","240","30","P-624239","TF-8GB","","16","","12/01/2018");
INSERT INTO sales_order VALUES("211","RS-0272333","416","5","75","10","P-0302000","TF-4GB","","15","","12/01/2018");
INSERT INTO sales_order VALUES("212","RS-0272333","414","10","190","30","P-2822070","TF-16GB"," ","19","","12/01/2018");
INSERT INTO sales_order VALUES("213","RS-0272333","413","5","140","25","P-30003395","TF-32GB","","28","","12/01/2018");
INSERT INTO sales_order VALUES("214","RS-0272333","403","2","46","6","P-203375","KINGSTON-16GB","","23","","12/01/2018");
INSERT INTO sales_order VALUES("215","RS-8032322","416","1","15","2","P-0302000","TF-4GB","","15","","12/01/2018");
INSERT INTO sales_order VALUES("216","RS-8032322","414","1","19","3","P-2822070","TF-16GB"," ","19","","12/01/2018");
INSERT INTO sales_order VALUES("217","RS-8032322","721","1","850","100","P-892233","J4PLUS","SAMSUNG ","850","","12/01/2018");
INSERT INTO sales_order VALUES("218","RS-8032322","722","1","1100","185","P-22792","J6PLUS","SAMSUNG ","1100","","12/01/2018");
INSERT INTO sales_order VALUES("219","RS-8032322","630","2","80","0","P-332423","X-CHARGER","PHONE ACCES","40","","12/01/2018");
INSERT INTO sales_order VALUES("220","RS-8032322","649","1","280","30","P-27260","F1","TECNO","280","","12/01/2018");
INSERT INTO sales_order VALUES("221","RS-8032322","719","2","180","22","P-43223993","GT1207","SAMSUNG","95","","12/01/2018");
INSERT INTO sales_order VALUES("222","RS-8032322","599","2","40","6","P-2520323","UCOM DOUBLE","PHONE ACCES","20","","12/01/2018");
INSERT INTO sales_order VALUES("223","RS-8032322","685","1","610","50","P-32222320","HOT-6X","INFINIX ","640","","12/01/2018");
INSERT INTO sales_order VALUES("224","RS-3238433","413","2","56","10","P-30003395","TF-32GB","","28","","12/01/2018");
INSERT INTO sales_order VALUES("225","RS-739268","415","1","14","3","P-4832200","TF-2GB","","14","","12/01/2018");
INSERT INTO sales_order VALUES("226","RS-739268","468","2","32","4","P-624239","TF-8GB","","16","","12/01/2018");
INSERT INTO sales_order VALUES("227","RS-739268","414","1","19","3","P-2822070","TF-16GB"," ","19","","12/01/2018");
INSERT INTO sales_order VALUES("228","RS-006339","635","1","21","3","P-2333","SANDISK-16GB","PHONE ACCES","21","","12/01/2018");
INSERT INTO sales_order VALUES("229","RS-006339","437","1","16","2","P-02325332","DIGIRICH-4GB","","16","","12/01/2018");
INSERT INTO sales_order VALUES("230","RS-006339","416","1","15","2","P-0302000","TF-4GB","","15","","12/01/2018");
INSERT INTO sales_order VALUES("231","RS-35030209","242","1","480","44","P-300063","Hot-6-1Gb","Infinix","485","","12/01/2018");
INSERT INTO sales_order VALUES("232","RS-2033332","502","1","15","2","P-22358","INFINIX-FAST-CABLE","INFINIX","10","","12/01/2018");
INSERT INTO sales_order VALUES("233","RS-2033332","503","1","15","2","P-3230293","INFINIX-FAST-HEAD","INFINIX","10","","12/01/2018");
INSERT INTO sales_order VALUES("234","RS-20302272","522","1","460","25","P-7330028","GRAND-PRIME-PLUS","SAMSUMG","460","","12/01/2018");
INSERT INTO sales_order VALUES("236","RS-00203","737","1","690","75","P-278620","CAMON-11","TECNO","690","","12/01/2018");
INSERT INTO sales_order VALUES("237","RS-5204070","221","1","340","35","P-03933207","Power-9-CC","Ciy Call ","340","","12/01/2018");
INSERT INTO sales_order VALUES("238","RS-0252305","403","1","30","3","P-203375","KINGSTON-16GB","","23","","12/01/2018");
INSERT INTO sales_order VALUES("239","RS-0252305","617","1","1","1","P-423033","ROPE","PHONE ACCES","2","","12/01/2018");
INSERT INTO sales_order VALUES("240","RS-23336","416","1","15","2","P-0302000","TF-4GB","","15","","12/01/2018");
INSERT INTO sales_order VALUES("242","RS-034330","403","1","25","3","P-203375","KINGSTON-16GB","","23","","12/01/2018");
INSERT INTO sales_order VALUES("243","RS-034330","414","1","19","3","P-2822070","TF-16GB"," ","19","","12/01/2018");
INSERT INTO sales_order VALUES("244","RS-338022","403","1","25","3","P-203375","KINGSTON-16GB","","23","","12/01/2018");
INSERT INTO sales_order VALUES("245","RS-338022","502","1","10","2","P-22358","INFINIX-FAST-CABLE","INFINIX","10","","12/01/2018");
INSERT INTO sales_order VALUES("246","RS-338022","503","1","10","2","P-3230293","INFINIX-FAST-HEAD","INFINIX","10","","12/01/2018");
INSERT INTO sales_order VALUES("247","RS-237203","219","1","45","9","P-20722","M105-CC","Ciy Call ","45","","12/01/2018");
INSERT INTO sales_order VALUES("250","RS-74068622","685","1","620","50","P-32222320","HOT-6X","INFINIX ","640","","12/01/2018");
INSERT INTO sales_order VALUES("251","RS-05552","205","1","50","8","P-03900023","2180-Itel","Itel","50","","12/01/2018");
INSERT INTO sales_order VALUES("252","RS-322253","468","1","16","2","P-624239","TF-8GB","","16","","12/01/2018");
INSERT INTO sales_order VALUES("253","RS-30233","523","1","550","40","P-322302","GRAND-PRIME-PRO","SAMSUMG","580","","12/01/2018");
INSERT INTO sales_order VALUES("254","RS-023223","414","1","30","3","P-2822070","TF-16GB"," ","19","","12/01/2018");
INSERT INTO sales_order VALUES("255","RS-3353282","267","1","700","82","P-3323373","J4-Sam","Samsung","700","","12/01/2018");
INSERT INTO sales_order VALUES("256","RS-22322030","403","1","25","3","P-203375","KINGSTON-16GB","","23","","12/01/2018");
INSERT INTO sales_order VALUES("258","RS-043423","639","1","235","32","P-23353","V10","XTIGI","240","","12/01/2018");
INSERT INTO sales_order VALUES("259","RS-22233","413","1","28","5","P-30003395","TF-32GB","","28","","12/01/2018");
INSERT INTO sales_order VALUES("260","RS-082630","205","1","50","8","P-03900023","2180-Itel","Itel","50","","12/01/2018");
INSERT INTO sales_order VALUES("261","RS-5230520","649","1","280","30","P-27260","F1","TECNO","280","","12/01/2018");
INSERT INTO sales_order VALUES("262","RS-23232808","409","1","21","3","P-222222","TOSHIBA-16GB","","21","","12/01/2018");
INSERT INTO sales_order VALUES("263","RS-222020","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/01/2018");
INSERT INTO sales_order VALUES("264","RS-30303033","357","1","25","7","P-0222033","TRAVEL ADAPTOR","","25","","12/01/2018");
INSERT INTO sales_order VALUES("265","RS-330226","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/01/2018");
INSERT INTO sales_order VALUES("266","RS-38322292","357","1","10","7","P-0222033","TRAVEL ADAPTOR","","25","","12/01/2018");
INSERT INTO sales_order VALUES("267","RS-92530","502","1","15","2","P-22358","INFINIX-FAST-CABLE","INFINIX","10","","12/01/2018");
INSERT INTO sales_order VALUES("269","RS-92530","503","1","10","2","P-3230293","INFINIX-FAST-HEAD","INFINIX","10","","12/01/2018");
INSERT INTO sales_order VALUES("270","RS-2320","357","1","25","7","P-0222033","TRAVEL ADAPTOR","","25","","12/01/2018");
INSERT INTO sales_order VALUES("271","","609","1","150","12","P-22032238","LIFE-4.0","CITY CALL","160","","12/01/2018");
INSERT INTO sales_order VALUES("272","RS-302330","285","1","70","10","P-22339333","R538-ZTE","ZTE","70","","12/01/2018");
INSERT INTO sales_order VALUES("273","RS-53336","404","1","40","3","P-22322","DUAL-16GB","","28","","12/01/2018");
INSERT INTO sales_order VALUES("274","RS-2322247","684","1","30","5","P-22345633","ES16-CAR CHARGER","CAR CHARGER ","25","","12/01/2018");
INSERT INTO sales_order VALUES("275","RS-2033232","225","1","60","13","P-53323","X9-CC","Ciy Call ","60","","12/01/2018");
INSERT INTO sales_order VALUES("276","RS-9702342","719","1","95","11","P-43223993","GT1207","SAMSUNG","95","","12/02/2018");
INSERT INTO sales_order VALUES("277","RS-28023060","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/03/2018");
INSERT INTO sales_order VALUES("278","RS-3730304","414","2","50","6","P-2822070","TF-16GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("279","RS-3200043","217","1","480","33","P-232207","Spark-2-1Gb","Tecno","490","","12/03/2018");
INSERT INTO sales_order VALUES("280","RS-0337203","719","1","90","11","P-43223993","GT1207","SAMSUNG","95","","12/03/2018");
INSERT INTO sales_order VALUES("283","RS-582203","414","1","30","3","P-2822070","TF-16GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("284","RS-7022303","376","1","8","2","P-3233500","USB-SOUNDCARD","","8","","12/03/2018");
INSERT INTO sales_order VALUES("285","RS-332608","741","1","28","7","P-30003395","TF32GB","  ","25","","12/03/2018");
INSERT INTO sales_order VALUES("286","RS-332608","217","1","480","33","P-232207","Spark-2-1Gb","Tecno","490","","12/03/2018");
INSERT INTO sales_order VALUES("287","RS-332608","416","1","20","2","P-0302000","TF-4GB"," ","14","","12/03/2018");
INSERT INTO sales_order VALUES("288","RS-332608","198","1","340","34","P-290202","S13-Itel","Itel","340","","12/03/2018");
INSERT INTO sales_order VALUES("289","RS-332608","414","1","19","3","P-2822070","TF-16GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("290","RS-332608","409","1","21","3","P-222222","TOSHIBA-16GB"," ","20","","12/03/2018");
INSERT INTO sales_order VALUES("291","RS-332608","205","1","50","8","P-03900023","2180-Itel","Itel","50","","12/03/2018");
INSERT INTO sales_order VALUES("292","RS-332608","547","1","70","10","P-073233","64GB-GLIDE","","85","","12/03/2018");
INSERT INTO sales_order VALUES("293","RS-332608","281","1","620","69","P-33343333","3.1Nokia","Nokia","670","","12/03/2018");
INSERT INTO sales_order VALUES("294","RS-332608","416","1","20","2","P-0302000","TF-4GB"," ","14","","12/03/2018");
INSERT INTO sales_order VALUES("295","RS-92333337","706","1","85","10","P-30322","S37","XTIGI","85","","12/03/2018");
INSERT INTO sales_order VALUES("296","RS-5030303","417","1","75","10","P-2822028","TF-64GB"," ","70","","12/03/2018");
INSERT INTO sales_order VALUES("299","RS-5030303","635","1","25","3","P-2333","SANDISK-16GB","PHONE ACCES ","20","","12/03/2018");
INSERT INTO sales_order VALUES("300","RS-3338822","522","1","460","25","P-7330028","GRAND-PRIME-PLUS","SAMSUMG","460","","12/03/2018");
INSERT INTO sales_order VALUES("301","RS-332927","502","1","10","2","P-22358","INFINIX-FAST-CABLE","INFINIX","10","","12/03/2018");
INSERT INTO sales_order VALUES("302","RS-332927","503","1","10","2","P-3230293","INFINIX-FAST-HEAD","INFINIX","10","","12/03/2018");
INSERT INTO sales_order VALUES("303","RS-332927","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/03/2018");
INSERT INTO sales_order VALUES("304","RS-2653857","512","1","470","34","P-3320203","POUVOIR-1","TECNO","470","","12/03/2018");
INSERT INTO sales_order VALUES("305","RS-6022227","649","1","280","30","P-27260","F1","TECNO ","280","","12/03/2018");
INSERT INTO sales_order VALUES("308","RS-0823323","217","1","480","33","P-232207","Spark-2-1Gb","Tecno ","490","","12/03/2018");
INSERT INTO sales_order VALUES("309","RS-2233333","719","1","90","11","P-43223993","GT1207","SAMSUNG","95","","12/03/2018");
INSERT INTO sales_order VALUES("310","RS-22000","236","1","540","41","P-733002","Smart-2-pro ","Infinix","540","","12/03/2018");
INSERT INTO sales_order VALUES("311","RS-24360300","437","2","30","4","P-02325332","DIGIRICH-4GB"," ","15","","12/03/2018");
INSERT INTO sales_order VALUES("312","RS-24360300","414","1","17","3","P-2822070","TF-16GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("313","RS-24360300","408","2","36","6","P-279723","TOSHIBA-8GB"," ","18","","12/03/2018");
INSERT INTO sales_order VALUES("314","RS-24360300","468","2","30","4","P-624239","TF-8GB"," ","15","","12/03/2018");
INSERT INTO sales_order VALUES("315","RS-24360300","416","2","28","4","P-0302000","TF-4GB"," ","14","","12/03/2018");
INSERT INTO sales_order VALUES("316","RS-2326222","202","1","175","22","P-4092329","A14-Itel","Itel","175","","12/03/2018");
INSERT INTO sales_order VALUES("317","RS-232262","468","1","15","2","P-624239","TF-8GB"," ","15","","12/03/2018");
INSERT INTO sales_order VALUES("318","RS-277932","437","1","15","2","P-02325332","DIGIRICH-4GB"," ","15","","12/03/2018");
INSERT INTO sales_order VALUES("319","RS-277932","401","1","17","13","P-420502","DIGIWICH-8GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("320","RS-323032","237","1","620","50","P-3322223","Hot-6-pro","Infinix","620","","12/03/2018");
INSERT INTO sales_order VALUES("321","RS-03002333","251","1","60","10","P-2020423","T349","Tecno","60","","12/03/2018");
INSERT INTO sales_order VALUES("322","RS-3323322","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/03/2018");
INSERT INTO sales_order VALUES("323","RS-3323322","404","1","30","3","P-22322","DUAL-16GB"," ","27","","12/03/2018");
INSERT INTO sales_order VALUES("324","RS-22200","737","1","660","75","P-278620","CAMON-11","TECNO","690","","12/03/2018");
INSERT INTO sales_order VALUES("326","RS-0260320","242","2","950","88","P-300063","Hot-6-1Gb","Infinix","485","","12/03/2018");
INSERT INTO sales_order VALUES("327","RS-23042439","737","1","680","75","P-278620","CAMON-11","TECNO","690","","12/03/2018");
INSERT INTO sales_order VALUES("328","RS-267232","405","1","18","3","P-304922","SANDISK-8GB"," ","18","","12/03/2018");
INSERT INTO sales_order VALUES("329","RS-035762","719","1","95","11","P-43223993","GT1207","SAMSUNG","95","","12/03/2018");
INSERT INTO sales_order VALUES("332","RS-50232427","407","1","25","4","P-303202","DUAL-8GB"," ","23","","12/03/2018");
INSERT INTO sales_order VALUES("333","RS-22323222","685","1","600","50","P-32222320","HOT-6X","INFINIX  ","640","","12/03/2018");
INSERT INTO sales_order VALUES("334","RS-5224606","665","1","215","23","P-6423630","A16","Itel","225","","12/03/2018");
INSERT INTO sales_order VALUES("335","RS-5224606","202","1","170","22","P-4092329","A14-Itel","Itel","175","","12/03/2018");
INSERT INTO sales_order VALUES("336","RS-5224606","206","1","50","11","P-8533533","2160-Itel","Itel","50","","12/03/2018");
INSERT INTO sales_order VALUES("337","RS-33323","741","1","25","7","P-30003395","TF32GB","  ","25","","12/03/2018");
INSERT INTO sales_order VALUES("338","RS-33323","414","1","17","3","P-2822070","TF-16GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("339","RS-33323","468","3","45","6","P-624239","TF-8GB"," ","15","","12/03/2018");
INSERT INTO sales_order VALUES("340","RS-33323","401","1","17","13","P-420502","DIGIWICH-8GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("341","RS-353893","737","1","690","75","P-278620","CAMON-11","TECNO","690","","12/03/2018");
INSERT INTO sales_order VALUES("342","RS-3235","512","1","470","34","P-3320203","POUVOIR-1","TECNO","470","","12/03/2018");
INSERT INTO sales_order VALUES("343","RS-2328233","403","2","50","6","P-203375","KINGSTON-16GB"," ","25","","12/03/2018");
INSERT INTO sales_order VALUES("344","RS-3372032","403","1","25","3","P-203375","KINGSTON-16GB"," ","25","","12/03/2018");
INSERT INTO sales_order VALUES("345","RS-33333205","706","1","85","10","P-30322","S37","XTIGI","85","","12/03/2018");
INSERT INTO sales_order VALUES("346","RS-32409","432","1","400","30","P-23023833","TOSHIBA-2TB","","390","","12/03/2018");
INSERT INTO sales_order VALUES("348","RS-236238","197","1","200","15","P-0372","3310-Nokia","Nokia","200","","12/03/2018");
INSERT INTO sales_order VALUES("350","RS-430532","737","1","690","75","P-278620","CAMON-11","TECNO","690","","12/03/2018");
INSERT INTO sales_order VALUES("351","RS-2732230","416","2","30","4","P-0302000","TF-4GB"," ","14","","12/03/2018");
INSERT INTO sales_order VALUES("353","RS-2707379","416","1","14","2","P-0302000","TF-4GB"," ","14","","12/03/2018");
INSERT INTO sales_order VALUES("354","RS-2707379","414","1","17","3","P-2822070","TF-16GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("355","RS-332335","414","1","30","3","P-2822070","TF-16GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("356","RS-0030320","741","1","25","7","P-30003395","TF32GB","  ","25","","12/03/2018");
INSERT INTO sales_order VALUES("357","RS-0030320","404","1","30","3","P-22322","DUAL-16GB"," ","27","","12/03/2018");
INSERT INTO sales_order VALUES("358","RS-9032552","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/03/2018");
INSERT INTO sales_order VALUES("359","RS-9032552","404","1","30","3","P-22322","DUAL-16GB"," ","27","","12/03/2018");
INSERT INTO sales_order VALUES("360","RS-9032552","741","1","25","7","P-30003395","TF32GB","  ","25","","12/03/2018");
INSERT INTO sales_order VALUES("362","RS-9032552","617","1","1","1","P-423033","ROPE","PHONE ACCES","2","","12/03/2018");
INSERT INTO sales_order VALUES("363","RS-283902","680","1","5","2","P-3033204","CARD READER","reader","5","","12/03/2018");
INSERT INTO sales_order VALUES("364","RS-02630","719","1","95","11","P-43223993","GT1207","SAMSUNG","95","","12/03/2018");
INSERT INTO sales_order VALUES("365","RS-932347","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/03/2018");
INSERT INTO sales_order VALUES("366","RS-2352037","267","1","680","82","P-3323373","J4-Sam","Samsung","700","","12/03/2018");
INSERT INTO sales_order VALUES("367","RS-364905","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/03/2018");
INSERT INTO sales_order VALUES("368","RS-0033","405","2","36","6","P-304922","SANDISK-8GB"," ","18","","12/03/2018");
INSERT INTO sales_order VALUES("369","RS-402309","635","2","40","6","P-2333","SANDISK-16GB","PHONE ACCES ","20","","12/03/2018");
INSERT INTO sales_order VALUES("370","RS-402309","403","2","50","6","P-203375","KINGSTON-16GB"," ","25","","12/03/2018");
INSERT INTO sales_order VALUES("371","RS-402309","405","2","36","6","P-304922","SANDISK-8GB"," ","18","","12/03/2018");
INSERT INTO sales_order VALUES("372","RS-402309","713","2","34","6","P-3320902","8GB-GENX","genx ","17","","12/03/2018");
INSERT INTO sales_order VALUES("373","RS-402309","415","10","120","30","P-4832200","TF-2GB"," ","12","","12/03/2018");
INSERT INTO sales_order VALUES("374","RS-402309","410","4","64","8","P-420233","GENX-4GB","","16","","12/03/2018");
INSERT INTO sales_order VALUES("375","RS-402309","416","5","70","10","P-0302000","TF-4GB"," ","14","","12/03/2018");
INSERT INTO sales_order VALUES("376","RS-2622202","469","3","120","21","P-947203","SANDISK-32GB"," ","33","","12/03/2018");
INSERT INTO sales_order VALUES("377","RS-05227930","416","2","28","4","P-0302000","TF-4GB"," ","14","","12/03/2018");
INSERT INTO sales_order VALUES("378","RS-200234","408","2","36","6","P-279723","TOSHIBA-8GB"," ","18","","12/03/2018");
INSERT INTO sales_order VALUES("379","RS-200234","409","2","40","6","P-222222","TOSHIBA-16GB"," ","20","","12/03/2018");
INSERT INTO sales_order VALUES("380","RS-3802222","408","1","18","3","P-279723","TOSHIBA-8GB"," ","18","","12/03/2018");
INSERT INTO sales_order VALUES("381","RS-30242078","219","1","45","9","P-20722","M105-CC","Ciy Call ","45","","12/03/2018");
INSERT INTO sales_order VALUES("382","RS-033222","415","10","120","30","P-4832200","TF-2GB"," ","12","","12/03/2018");
INSERT INTO sales_order VALUES("383","RS-2302023","468","1","18","2","P-624239","TF-8GB"," ","15","","12/03/2018");
INSERT INTO sales_order VALUES("384","RS-7043350","505","2","20","4","P-2022342","5D-GLASS","","10","","12/03/2018");
INSERT INTO sales_order VALUES("385","RS-0063793","414","1","30","3","P-2822070","TF-16GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("386","RS-70320522","522","1","450","25","P-7330028","GRAND-PRIME-PLUS","SAMSUMG","460","","12/03/2018");
INSERT INTO sales_order VALUES("388","RS-3793222","715","1","30","5","P-026007","16GB-GLIDE","GLIDE","30","","12/03/2018");
INSERT INTO sales_order VALUES("390","RS-235233","200","1","275","32","P-33930","A32F-Itel","Itel","290","","12/03/2018");
INSERT INTO sales_order VALUES("391","RS-235233","200","1","275","32","P-33930","A32F-Itel","Itel","290","","12/03/2018");
INSERT INTO sales_order VALUES("392","RS-3320200","719","1","95","11","P-43223993","GT1207","SAMSUNG","95","","12/03/2018");
INSERT INTO sales_order VALUES("393","RS-46345","741","1","25","7","P-30003395","TF32GB","  ","25","","12/03/2018");
INSERT INTO sales_order VALUES("394","RS-7303393","445","2","10","6","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/03/2018");
INSERT INTO sales_order VALUES("395","RS-2203903","407","1","30","4","P-303202","DUAL-8GB"," ","23","","12/03/2018");
INSERT INTO sales_order VALUES("396","RS-2203903","600","1","10","0","P-90282269","PHILIPS","PHONE ACCES","8","","12/03/2018");
INSERT INTO sales_order VALUES("397","RS-36532364","509","1","430","57","P-038323","SMART-2","INFINIX ","430","","12/03/2018");
INSERT INTO sales_order VALUES("398","RS-706339","403","1","30","3","P-203375","KINGSTON-16GB"," ","25","","12/03/2018");
INSERT INTO sales_order VALUES("400","RS-2332703","405","2","36","6","P-304922","SANDISK-8GB"," ","18","","12/03/2018");
INSERT INTO sales_order VALUES("401","RS-2332703","468","3","45","6","P-624239","TF-8GB"," ","15","","12/03/2018");
INSERT INTO sales_order VALUES("402","RS-320229","509","1","100","57","P-038323","SMART-2","INFINIX ","430","","12/03/2018");
INSERT INTO sales_order VALUES("403","RS-232982","680","1","3","2","P-3033204","CARD READER","reader","5","","12/03/2018");
INSERT INTO sales_order VALUES("404","RS-820223","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/03/2018");
INSERT INTO sales_order VALUES("405","RS-9302203","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/03/2018");
INSERT INTO sales_order VALUES("406","RS-302345","600","1","8","0","P-90282269","PHILIPS","PHONE ACCES","8","","12/03/2018");
INSERT INTO sales_order VALUES("407","RS-623223","737","1","690","75","P-278620","CAMON-11","TECNO","690","","12/03/2018");
INSERT INTO sales_order VALUES("408","RS-336263","414","1","25","3","P-2822070","TF-16GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("409","RS-84033009","241","1","1330","120","P-502350","Zero5 ","Infinix ","1350","","12/03/2018");
INSERT INTO sales_order VALUES("410","RS-388220","347","1","40","7","P-30202330","JABRA-L1-BT","","30","","12/03/2018");
INSERT INTO sales_order VALUES("411","RS-324","409","1","20","3","P-222222","TOSHIBA-16GB"," ","20","","12/03/2018");
INSERT INTO sales_order VALUES("412","RS-7332203","680","2","6","4","P-3033204","CARD READER","reader","5","","12/03/2018");
INSERT INTO sales_order VALUES("413","RS-3233223","352","1","70","11","P-33239","NK810","","50","","12/03/2018");
INSERT INTO sales_order VALUES("414","RS-63442020","408","2","36","6","P-279723","TOSHIBA-8GB"," ","18","","12/03/2018");
INSERT INTO sales_order VALUES("415","RS-33933363","408","1","18","3","P-279723","TOSHIBA-8GB"," ","18","","12/03/2018");
INSERT INTO sales_order VALUES("417","RS-00032","416","1","20","2","P-0302000","TF-4GB"," ","14","","12/03/2018");
INSERT INTO sales_order VALUES("418","RS-22242492","445","1","5","3","P-32522903","GLASS-PROTECTOR","GLASS","5","","12/03/2018");
INSERT INTO sales_order VALUES("419","RS-02802330","468","1","17","2","P-624239","TF-8GB"," ","15","","12/03/2018");
INSERT INTO sales_order VALUES("420","RS-9232003","193","1","950","92","P-9622327","J7-prime","Samsung","1000","","12/03/2018");
INSERT INTO sales_order VALUES("421","RS-33820332","217","1","470","33","P-232207","Spark-2-1Gb","Tecno ","490","","12/03/2018");
INSERT INTO sales_order VALUES("422","RS-0232","631","1","25","10","P-03830","TECNO CHARGER","PHONE ACCES","25","","12/03/2018");
INSERT INTO sales_order VALUES("423","RS-2338208","509","1","420","57","P-038323","SMART-2","INFINIX  ","430","","12/03/2018");
INSERT INTO sales_order VALUES("424","RS-259039","516","1","410","35","P-233507","F2-LITE","TECNO","410","","12/03/2018");
INSERT INTO sales_order VALUES("425","RS-025222","649","1","280","30","P-27260","F1","TECNO ","280","","12/03/2018");
INSERT INTO sales_order VALUES("426","RS-00090","242","1","485","44","P-300063","Hot-6-1Gb","Infinix","485","","12/03/2018");
INSERT INTO sales_order VALUES("427","RS-3232223","468","3","45","6","P-624239","TF-8GB"," ","15","","12/03/2018");
INSERT INTO sales_order VALUES("428","RS-32233304","414","1","25","3","P-2822070","TF-16GB","  ","17","","12/03/2018");
INSERT INTO sales_order VALUES("429","RS-332392","248","1","80","8","P-3240","T401 ","Tecno","80","","12/03/2018");
INSERT INTO sales_order VALUES("431","RS-320222","741","1","45","7","P-30003395","TF32GB","  ","25","","12/03/2018");
INSERT INTO sales_order VALUES("432","RS-2063032","407","1","30","4","P-303202","DUAL-8GB"," ","23","","12/03/2018");
INSERT INTO sales_order VALUES("433","RS-863023","336","1","10","2","P-3620300","OTG-CABLE","","5","","12/03/2018");
INSERT INTO sales_order VALUES("434","RS-863023","617","1","2","1","P-423033","ROPE","PHONE ACCES","2","","12/03/2018");
INSERT INTO sales_order VALUES("435","RS-026230","404","1","40","3","P-22322","DUAL-16GB"," ","27","","12/03/2018");
INSERT INTO sales_order VALUES("436","RS-3085920","409","1","20","3","P-222222","TOSHIBA-16GB"," ","20","","12/03/2018");
INSERT INTO sales_order VALUES("437","RS-2533330","217","1","470","33","P-232207","Spark-2-1Gb","Tecno ","490","","12/03/2018");
INSERT INTO sales_order VALUES("438","RS-2202235","376","5","40","10","P-3233500","USB-SOUNDCARD","","8","","12/03/2018");
INSERT INTO sales_order VALUES("439","RS-0034023","234","1","95","15","P-04250008","Run-6-CC","Ciy Call ","100","","12/03/2018");
INSERT INTO sales_order VALUES("440","RS-03837","544","2","100","20","P-3293927","USB-MODEM","","50","","12/03/2018");
INSERT INTO sales_order VALUES("441","RS-002003","411","2","30","4","P-4002536","GENX-2GB"," ","14","","12/03/2018");
INSERT INTO sales_order VALUES("442","RS-09237","408","1","25","3","P-279723","TOSHIBA-8GB"," ","18","","12/03/2018");
INSERT INTO sales_order VALUES("443","RS-420233","415","1","15","3","P-4832200","TF-2GB"," ","12","","12/03/2018");
INSERT INTO sales_order VALUES("444","RS-822308","416","1","15","2","P-0302000","TF-4GB"," ","14","","12/03/2018");
INSERT INTO sales_order VALUES("445","RS-42363","509","1","430","57","P-038323","SMART-2","INFINIX  ","430","","12/03/2018");





CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`suplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO supliers VALUES("2","oman","Kumasi Ghana","0542494320","0543245765","THIS IS GOOD");





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



