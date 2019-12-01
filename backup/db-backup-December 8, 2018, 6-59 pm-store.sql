

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(175) NOT NULL,
  `password` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime NOT NULL,
  `permissions` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO admin_users VALUES("1","Emmanuel Ekene","nwolisaemmanuel","$2y$10$O5949kgCJ4V7yH0V21Avp.j8hNAud/SKFPCWTjSZ6AcO0oYruzsp6","2017-10-02 17:30:28","2018-12-05 20:04:14","admin,sale");
INSERT INTO admin_users VALUES("10","emmanuel","emmanuel","$2y$10$VuE8wS5gfnSzEz/L7tdPI.6sr9w2dlLatapC7Ka.DCM//0udhnuhC","2018-12-05 19:06:19","2018-12-05 20:14:47","admin,sale");
INSERT INTO admin_users VALUES("11","admin","admin","$2y$10$yFyWhbg.v6Q/D723TIp.FuLBm1gWOe9FfcPswPtI9GOjU3Bqv8G/2","2018-12-05 19:15:20","2018-12-07 17:34:55","admin,sale");
INSERT INTO admin_users VALUES("12","OMAN BERLYN","OMAN","$2y$10$KOo27h5hS5/zsTeUS/mrkuM2aFmC5CQ4nYGVaZ2wtrP97Tbg1.4PO","2018-12-06 07:40:20","2018-12-08 11:43:56","admin,sale");
INSERT INTO admin_users VALUES("13","STELLA BADU","STELLA BADU","$2y$10$xuSn2E7D.MhDFfo4r4I2tu2v/MP7qSFI0wiIOwp5k/d9bySouxoHa","2018-12-06 07:41:37","2018-12-08 18:59:10","sale");





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
  `gen_name` varchar(100) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=1644 DEFAULT CHARSET=latin1;

INSERT INTO products VALUES("780","P-206223","TRANSCEND","1TB-TRANSCEND","Per Pieces","240","275","xxxxx","5","Cam Batteries","","","35","","0","0","");
INSERT INTO products VALUES("781","P-03302","SEAGATE","2TB-SEAGATE","Per Pieces","350","395","xxxxx","4","Laptop Accessories","","","45","","0","0","");
INSERT INTO products VALUES("782","P-4003022","TOSHIBA","2TB-TOSHIBA","Per Pieces","350","395","xxxxx","0","Laptop Accessories","","","45","","0","0","");
INSERT INTO products VALUES("783","P-06302040","WD","1TB-MY-PASSPORT","Per Pieces","240","275","xxxxx","2","Cam Batteries","","","35","","0","0","");
INSERT INTO products VALUES("784","P-222326","TOSHIBA","500GB-TOSHIBA","Per Pieces","200","220","xxxxx","13","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("785","P-02325332","WD","2TB-MY-PASSPORT","Per Pieces","370","400","xxxxx","3","Cam Batteries","","","30","","0","0","");
INSERT INTO products VALUES("786","P-30404632","OTG","DUAL-64GB","Per Pieces","70","75","xxxxx","11","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("787","P-0223332","OTG","DUAL-32GB","Per Pieces","37","43","xxxxx","35","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("788","P-6273023","OTG ","DUAL-16GB","Per Pieces","24","27","xxxxx","16","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("789","P-20327022","OTG ","DUAL-8GB","Per Pieces","21","23","xxxxx","14","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("790","P-22332233","SANDISK","CRUZER-GLID-16GB","Per Pieces","25","30","xxxxx","2","Phone","","","5","","0","0","");
INSERT INTO products VALUES("791","P-4330032","SANDISK","CRUZER-GLIDE-32GB","Per Pieces","40","45","xxxxx","13","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("792","P-2323423","SANDISK","CRUZER-GLIDE-64GB","Per Pieces","75","85","xxxxx","14","Laptop Accessories","","","10","","0","0","");
INSERT INTO products VALUES("793","P-3222333","SANDISK","ULTRA FIT 16GB","Per Pieces","35","40","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("794","P-03930","SANDISK","ULTRA FLAIR 16GB","Per Pieces","35","40","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("795","P-202372","SANDISK","32GB-ULTRA-FLAIR","Per Pieces","40","50","xxxxx","2","Laptop Accessories","","","10","","0","0","");
INSERT INTO products VALUES("796","P-339002","SANDISK","32GB-ULTRA-FIT","Per Pieces","40","50","xxxxx","4","Laptop Accessories","","","10","","0","0","");
INSERT INTO products VALUES("797","P-0233832","TWINMOS","SD 8GB","Per Pieces","25","35","xxxxx","17","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("798","P-802682","TWINMOS ","SD 2GB","Per Pieces","20","25","xxxxx","8","Camera Accessories","","","5","","0","0","");
INSERT INTO products VALUES("799","P-23334","TWINMOS","CF-16GB","Per Pieces","50","65","xxxxx","0","Camera Accessories","","","15","","0","0","");
INSERT INTO products VALUES("801","P-224322","TWINMOS","CF-4GB","Per Pieces","35","40","xxxxx","1","Camera Accessories","","","5","","0","0","");
INSERT INTO products VALUES("802","P-00222260","TWINMOS","CF-2GB","Per Pieces","28","35","xxxxx","1","Camera Accessories","","","7","","0","0","");
INSERT INTO products VALUES("806","P-222220","SANDISK","CRUZER-GLIDE-128GB","Per Pieces","160","180","xxxxx","3","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("807","P-75302","DIGIRICH","32GB-DIGIRICH","Per Pieces","27","33","xxxxx","20","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("809","P-063802","KINGSTON","8GB-KINGSTON","Per Pieces","18","23","xxxxx","15","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("810","P-7292363","SANDISK","32GB-SANDISK","Per Pieces","28","35","xxxxx","37","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("811","P-033333","HP","32GB-V178B ","Per Pieces","37","42","xxxxx","0","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("812","P-09022900","HP","32GB-V165W ","Per Pieces","37","42","xxxxx","4","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("813","P-603033","HP","32GB-V150W","Per Pieces","37","42","xxxxx","0","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("814","P-32049003","HP","32GB-V222W","Per Pieces","35","42","xxxxx","1","Laptop Accessories","","","7","","0","0","");
INSERT INTO products VALUES("815","P-32049003","HP","32GB-V222W","Per Pieces","35","42","xxxxx","1","Laptop Accessories","","","7","","0","0","");
INSERT INTO products VALUES("816","P-209623","HP","8GB-V178B","Per Pieces","21","24","xxxxx","7","Laptop Accessories","","","3","","0","0","");
INSERT INTO products VALUES("817","P-5220092","HP","8GB-V2450","Per Pieces","19","24","xxxxx","3","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("818","P-20230333","HP","8GB-V22W","Per Pieces","19","24","xxxxx","0","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("819","P-32238202","APPLE","EARPOD","Per Pieces","17","22","xxxxx","5","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("827","P-600373","SANDISK","128GB TF","Select Product ","150","170","xxxxx","1","Laptop Accessories","","","20","","0","0","");
INSERT INTO products VALUES("834","P-63082232","SAMSUNG","GRAND-PRIME-PRO","Select Product ","540","580","xxxxx","2","Cam Batteries","","","40","","0","0","");
INSERT INTO products VALUES("837","P-94533","SAMSUNG ","J2","Select Product ","410","440","xxxxx","4","Cam Batteries","","","30","","0","0","");
INSERT INTO products VALUES("838","P-270033","SAMSUNG","GRAND-PRIME-PLUS","Select Product ","455","460","xxxxx","2","Cam Batteries","","","25","","0","0","");
INSERT INTO products VALUES("839","P-03232272","NOKIA","NOKIA 2.1","Select Product ","410","470","xxxxx","0","Cam Batteries","","","60","","0","0","");
INSERT INTO products VALUES("840","P-250232","TECHNO","F2-LTE","Select Product ","365","410","xxxxx","4","Cam Batteries","","","45","","0","0","");
INSERT INTO products VALUES("841","P-020320","TECHNO","POP1 PRO","Select Product ","365","410","xxxxx","1","Cam Batteries","","","45","","0","0","");
INSERT INTO products VALUES("843","P-3232234","CITY-CALL","RUN-8","Select Product ","65","80","xxxxx","1","Phone","","","15","","0","0","");
INSERT INTO products VALUES("845","P-3206022","SAMSUNG","TAB-A6-10-INCHES","Select Product ","1290","1350","xxxxx","1","Phone","","","60","","0","0","");
INSERT INTO products VALUES("846","P-273322","SAMSUNG","TAB-S-PEN","Select Product ","1500","1600","xxxxx","0","Phone","","","100","","0","0","");
INSERT INTO products VALUES("847","P-22722","SAMSUNG","TAB-E","Select Product ","813","850","xxxxx","1","Cam Batteries","","","67","","0","0","");
INSERT INTO products VALUES("848","P-3543700","XTIGI","JOY-10-XTIGI","Select Product ","490","540","xxxxx","0","Cam Batteries","","","50","","0","0","");
INSERT INTO products VALUES("850","P-56220022","XTIGI","JOY-10-PRO-XTIGI","Select Product ","513","565","xxxxx","1","Cam Batteries","","","52","","0","0","");
INSERT INTO products VALUES("851","P-3022932","NOKIA ","NOKIA-3310","Select Product ","185","200","xxxxx","2","Cam Batteries","","","15","","0","0","");
INSERT INTO products VALUES("852","P-323034","XTIGI","G35-XTIGI","Select Product ","77","90","xxxxx","1","Cam Batteries","","","13","","0","0","");
INSERT INTO products VALUES("854","P-2330042","ZTE","ZTE-ZIP","Select Product ","200","250","xxxxx","1","Phone","","","50","","0","0","");
INSERT INTO products VALUES("856","P-8200062","MNET","PURE-S","Select Product ","350","400","xxxxx","1","Phone","","","50","","0","0","");
INSERT INTO products VALUES("857","P-02023","XTIGI","P11-XTIGI","Select Product ","223","250","xxxxx","0","Cam Batteries","","","27","","0","0","");
INSERT INTO products VALUES("858","P-23072","XTIGI","P11-LITE","Select Product ","337","380","xxxxx","0","Cam Batteries","","","33","","0","0","");
INSERT INTO products VALUES("860","P-392309","ITEL ","A16","Select Product ","202","225","xxxxx","1","Cam Batteries","","","23","","0","0","");
INSERT INTO products VALUES("862","P-2222232","ITEL ","S13","Select Product ","306","340","xxxxx","9","Phone","","","34","","0","0","");
INSERT INTO products VALUES("863","P-350233","HUAWEI","Y3-4G-HUAWEI","Select Product ","399","450","xxxxx","1","Phone","","","51","","0","0","");
INSERT INTO products VALUES("864","P-332300","TECNO ","T401","Select Product ","67","80","xxxxx","4","Phone","","","13","","0","0","");
INSERT INTO products VALUES("866","P-222322","TECNO  ","T484","Select Product ","95","110","xxxxx","5","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("867","P-43326392","ITEL","5613","Select Product ","60","75","xxxxx","1","Cam Batteries","","","15","","0","0","");
INSERT INTO products VALUES("869","P-027220","TECNO","T660","Select Product ","102","110","xxxxx","5","Cam Batteries","","","18","","0","0","");
INSERT INTO products VALUES("870","P-222222","ITEL  ","A14","Select Product ","153","175","xxxxx","3","Cam Batteries","","","22","","0","0","");
INSERT INTO products VALUES("871","P-0303230","HUAWEI","Y6 PRIME 2018","Select Product ","573","650","xxxxx","1","Cam Batteries","","","77","","0","0","");
INSERT INTO products VALUES("872","P-320302","ITEL ","5616","Select Product ","64","80","xxxxx","4","Cam Batteries","","","11","","0","0","");
INSERT INTO products VALUES("873","P-230202","ITEL ","2090","Select Product ","41","50","xxxxx","18","Cam Batteries","","","9","","0","0","");
INSERT INTO products VALUES("874","P-92323330","HUAWEI","MATE10-LITE-HUAWEI","Select Product ","1096","1250","xxxxx","0","Cam Batteries","","","154","","0","0","");
INSERT INTO products VALUES("875","P-633730","TECNO","T371","Select Product ","70","80","xxxxx","2","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("876","P-8022263","HUAWEI","T3-7INCHES-HUAWEI","Select Product ","440","490","xxxxx","1","Phone","","","50","","0","0","");
INSERT INTO products VALUES("877","P-5276623","XTIGI ","G12-XTIGI","Select Product ","63","75","xxxxx","4","Cam Batteries","","","12","","0","0","");
INSERT INTO products VALUES("878","P-2230280","NOKIA","NOKIA 105","Select Product ","67","75","xxxxx","8","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("879","P-330903","SAMSUNG","J5-PRO-SAMSUNG","Select Product ","830","950","xxxxx","0","Phone","","","120","","0","0","");
INSERT INTO products VALUES("880","P-373038","SAMSUNG","J7-NEO-SAMSUNG","Select Product ","730","780","xxxxx","0","Cam Batteries","","","50","","0","0","");
INSERT INTO products VALUES("882","P-9202303","Fone_com","F07","Select Product ","27","35","xxxxx","3","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("883","P-4233232","SAMSUNG","J7-DUO-SAMSUNG","Select Product ","1150","1300","xxxxx","2","Cam Batteries","","","150","","0","0","");
INSERT INTO products VALUES("884","P-533273","NOKIA ","105-Duos-NOKIA","Select Product ","71","80","xxxxx","7","Cam Batteries","","","9","","0","0","");
INSERT INTO products VALUES("885","P-3332202","NOKIA","NOKIA 150 DUAL","Select Product ","118","140","xxxxx","0","Cam Batteries","","","22","","0","0","");
INSERT INTO products VALUES("887","P-2572003","Infinix","NOTE5-STYLUS-INFINIX","Select Product ","1040","1140","xxxxx","1","Phone","","","100","","0","0","");
INSERT INTO products VALUES("888","P-3822322","ITEL ","Prime-IV","Select Product ","350","395","xxxxx","3","Phone","","","45","","0","0","");
INSERT INTO products VALUES("889","P-3822300","XTIGI ","G28","Select Product ","79","90","xxxxx","1","Cam Batteries","","","11","","0","0","");
INSERT INTO products VALUES("890","P-2203220","TECHNO","CX-TECHNO","Select Product ","670","710","xxxxx","0","Cam Batteries","","","40","","0","0","");
INSERT INTO products VALUES("891","P-2262372","XTIGI","G16","Select Product ","77","90","xxxxx","2","Phone","","","13","","0","0","");
INSERT INTO products VALUES("892","P-3703333","XTIGI ","G15","Select Product ","70","80","xxxxx","1","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("893","P-23035626","TECHNO ","Y2-TECHNO","Select Product ","192","220","xxxxx","5","Cam Batteries","","","28","","0","0","");
INSERT INTO products VALUES("894","P-23042","XTIGI","G10+","Select Product ","70","80","xxxxx","2","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("895","P-233233","XTIGI","G39","Select Product ","75","85","xxxxx","3","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("897","P-0420309","TECHNO  ","SPARK2-TECHNO","Select Product ","447","480","xxxxx","4","Cam Batteries","","","33","","0","0","");
INSERT INTO products VALUES("898","P-53223","XTIGI","S400","Select Product ","55","65","xxxxx","2","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("900","P-03282222","INFINIX ","SMART-2","Select Product ","395","425","xxxxx","3","Cam Batteries","","","30","","0","0","");
INSERT INTO products VALUES("901","P-0333237","INFINIX","HOT-4-PRO","Select Product ","544","570","xxxxx","1","Phone","","","41","","0","0","");
INSERT INTO products VALUES("902","P-2023935","XTIGI","B310-XTIGI","Select Product ","40","50","xxxxx","3","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("903","P-20803262","TECNO ","T349","Select Product ","50","60","xxxxx","10","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("905","P-232982","CITY_CALL ","RUN-6","Select Product ","83","100","xxxxx","1","Cam Batteries","","","17","","0","0","");
INSERT INTO products VALUES("906","P-862322","SAMSUNG","B310E-SAMSUNG","Select Product ","105","120","xxxxx","5","Cam Batteries","","","15","","0","0","");
INSERT INTO products VALUES("907","P-35870608","INFINIX ","HOT-6-PRO","Select Product ","575","620","xxxxx","1","Phone","","","45","","0","0","");
INSERT INTO products VALUES("908","P-230033","ITEL","1408-ITEL","Select Product ","186","208","xxxxx","0","Phone","","","22","","0","0","");
INSERT INTO products VALUES("909","P-800906","INFINIX","SMART","Select Product ","375","400","xxxxx","0","Phone","","","25","","0","0","");
INSERT INTO products VALUES("910","P-304322","ITEL  ","A15-ITEL","Select Product ","230","255","xxxxx","14","Cam Batteries","","","25","","0","0","");
INSERT INTO products VALUES("911","P-00003830","INFINIX","HOT-S-3","Select Product ","690","740","xxxxx","0","Cam Batteries","","","50","","0","0","");
INSERT INTO products VALUES("912","P-222033","INFINIX","NOTE-4","Select Product ","659","704","xxxxx","1","Phone","","","46","","0","0","");
INSERT INTO products VALUES("913","P-0963328","ITEL ","5080-ITEL","Select Product ","50","60","xxxxx","4","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("914","P-3403","ITEL  ","A31","Select Product ","250","275","xxxxx","3","Phone","","","25","","0","0","");
INSERT INTO products VALUES("915","P-2222233","ITEL","A32F-ITEL","Select Product ","258","290","xxxxx","12","Cam Batteries","","","32","","0","0","");
INSERT INTO products VALUES("916","P-03928","INFINIX ","HOT-6-1GB","Select Product ","457","485","xxxxx","2","Cam Batteries","","","33","","0","0","");
INSERT INTO products VALUES("917","P-4202009","ITEL","2180-ITEL","Select Product ","42","50","xxxxx","12","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("918","P-265260","ITEL ","P32","Select Product ","332","370","xxxxx","6","Cam Batteries","","","38","","0","0","");
INSERT INTO products VALUES("919","P-220372","CITYCALL","M87-CITYCALL","Select Product ","50","60","xxxxx","2","Phone","","","10","","0","0","");
INSERT INTO products VALUES("920","P-0322062","ITEL ","P13","Select Product ","248","280","xxxxx","4","Cam Batteries","","","32","","0","0","");
INSERT INTO products VALUES("921","P-303033","CITYCALL","M105+-CITYCALL","Select Product ","36","45","xxxxx","5","Cam Batteries","","","9","","0","0","");
INSERT INTO products VALUES("922","P-22003","NOKIA","NOKIA 1","Select Product ","295","330","xxxxx","1","Cam Batteries","","","35","","0","0","");
INSERT INTO products VALUES("923","P-322730","NOKIA","NOKIA 2","Select Product ","380","420","xxxxx","2","Cam Batteries","","","40","","0","0","");
INSERT INTO products VALUES("925","P-330220","SAMSUNG","J7-PRIME","Select Product ","910","1000","xxxxx","2","Phone","","","90","","0","0","");
INSERT INTO products VALUES("928","P-7008222","CITYCALL","X1-CITYCALL","Select Product ","36","45","xxxxx","0","Phone","","","9","","0","0","");
INSERT INTO products VALUES("929","P-52233","SAMSUNG","J1-mini-PRIME","Select Product ","299","330","xxxxx","2","Phone","","","31","","0","0","");
INSERT INTO products VALUES("930","P-33702533","CITYCALL","X9-CITYCALL","Select Product ","47","60","xxxxx","2","Phone","","","13","","0","0","");
INSERT INTO products VALUES("931","P-3280330","XTIGI","JOY-7-Max","Select Product ","316","350","xxxxx","3","Cam Batteries","","","34","","0","0","");
INSERT INTO products VALUES("932","P-32206390","XTIGI","JOY-7-TV","Select Product ","340","400","xxxxx","0","Cam Batteries","","","40","","0","0","");
INSERT INTO products VALUES("933","P-2829227","XTIGI","P15","Select Product ","450","495","xxxxx","2","Cam Batteries","","","45","","0","0","");
INSERT INTO products VALUES("934","P-652607","SAMSUNG","TAB-A6-7-INCHES","Select Product ","590","650","xxxxx","1","Phone","","","60","","0","0","");
INSERT INTO products VALUES("935","P-33363328","INFINIX","HOT-5-2GB","Select Product ","478","530","xxxxx","2","Phone","","","37","","0","0","");
INSERT INTO products VALUES("936","P-25200822","TECNO ","POP1/F3","Select Product ","320","350","xxxxx","3","Cam Batteries","","","30","","0","0","");
INSERT INTO products VALUES("937","P-2330833","INFINIX","SMART-2-PRO","Select Product ","505","540","xxxxx","2","Cam Batteries","","","45","","0","0","");
INSERT INTO products VALUES("938","P-2928325","INFINIX","HOT-6-2GB","Select Product ","508","535","xxxxx","2","Cam Batteries","","","32","","0","0","");
INSERT INTO products VALUES("939","P-0200202","INFINIX","NOTE-5","Select Product ","737","795","xxxxx","1","Cam Batteries","","","58","","0","0","");
INSERT INTO products VALUES("940","P-3009033","TECNO","7D","Select Product ","365","400","xxxxx","2","Phone","","","35","","0","0","");
INSERT INTO products VALUES("941","P-23330023","SONY","NP-F570-BATTERY","Select Product ","42","50","xxxxx","4","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("942","P-003002","SONY ","NP-FM50-BATTERY","Select Product ","34","40","xxxxx","3","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("943","P-03660","CANON ","BP-809-BATTERY","Select Product ","34","40","xxxxx","3","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("944","P-3036200","CANON","NB-9L-BATTERY","Select Product ","20","25","xxxxx","2","Cam Batteries","2018-10-21","","5","20","0","0","");
INSERT INTO products VALUES("945","P-23032530","CANON ","BP-808-BATTERY","Select Product ","42","50","xxxxx","5","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("946","P-32032","CANON ","LP-E5-BATTERY","Select Product ","42","50","xxxxx","5","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("947","P-052768324567","PANASONY","VW-VBG260E-BETTERY","Select Product ","50","60","xxxxx","4","Cam Batteries","2018-10-21","","10","50","0","0","");
INSERT INTO products VALUES("948","P-23633322","SONY ","NP-QM91D-BATTERY","Select Product ","65","80","xxxxx","10","Cam Batteries","","","15","","0","0","");
INSERT INTO products VALUES("949","P-48052","SAMSUNG","SLB-10A-BATTERY","Select Product ","20","25","xxxxx","16","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("950","P-223084","KODAK","KLIC-7006BATTERY","Select Product ","20","25","xxxxx","12","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("951","P-336220","PANASONY","VW-BG130E-BATTERY","Select Product ","50","60","xxxxx","5","Cam Batteries","2018-10-21","","10","50","0","0","");
INSERT INTO products VALUES("952","P-33623003","KODAK","KLIC-7004BATTERY","Select Product ","20","25","xxxxx","12","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("953","P-456996","SONY","NP-FH70BATTERY","Select Product ","42","50","xxxxx","4","Cam Batteries","","","8","42","0","0","");
INSERT INTO products VALUES("954","P-24","CANON ","LP-E8BATTERY","Select Product ","42","50","xxxxx","7","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("955","P-55282743","CANON","BP-930BATTERY","Select Product ","65","70","xxxxx","1","Cam Batteries","","","5","65","0","0","");
INSERT INTO products VALUES("956","P-33232505","CANON ","LP-E10BATTERY","Select Product ","42","50","xxxxx","1","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("957","P-3233382","CANON","BP-535BATTERY","Select Product ","85","100","xxxxx","4","Cam Batteries","","","15","85","0","0","");
INSERT INTO products VALUES("958","P-04000","CANON","BP-945BATTERY","Select Product ","85","100","xxxxx","2","Cam Batteries","","","15","85","0","0","");
INSERT INTO products VALUES("959","P-4530083","CANON ","NB-2LHBATTERY","Select Product ","34","40","xxxxx","3","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("960","P-220223","JVC","BNV4218UBATTERY","Select Product ","85","100","xxxxx","8","Cam Batteries","","","15","85","0","0","");
INSERT INTO products VALUES("961","P-24233","CANON ","NB-6LBATTERY","Select Product ","20","25","xxxxx","12","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("962","P-36230","CANON ","NB-8LBATTERY","Select Product ","20","25","xxxxx","3","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("963","P-3233333","JVC","BN-VF733UBATTERY","Select Product ","85","100","xxxxx","0","Cam Batteries","","","15","85","0","0","");
INSERT INTO products VALUES("964","P-33330324","CANON ","NB-11LBATTERY","Select Product ","20","25","xxxxx","9","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("965","P-2398224","JVC","BN-V416UBATTERY","Select Product ","65","70","xxxxx","1","Cam Batteries","","","5","65","0","0","");
INSERT INTO products VALUES("966","P-03485000","CANON","BP-511ABATTERY","Select Product ","42","50","xxxxx","1","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("967","P-532264","CANON","BP-512ABATTERY","Select Product ","42","50","xxxxx","3","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("968","P-3222733","JVC","BN-VF815BATTERY","Select Product ","65","70","xxxxx","4","Cam Batteries","","","5","65","0","0","");
INSERT INTO products VALUES("969","P-5277032","CANON","NB-5LBATTERY","Select Product ","20","25","xxxxx","9","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("970","P-0382","CANON","NB-4LBATTERY","Select Product ","20","25","xxxxx","15","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("971","P-26839220","JVC","BN-VF714U","Select Product ","65","70","xxxxx","4","Cam Batteries","","","5","65","0","0","");
INSERT INTO products VALUES("972","P-326323","CANON","NB-12LBATTERY","Select Product ","34","40","xxxxx","1","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("973","P-343633","JVC ","BN-VF808BATTERY","Select Product ","35","40","xxxxx","1","Cam Batteries","","","5","35","0","0","");
INSERT INTO products VALUES("974","P-020332","JVC ","BN-VF823BATTERY","Select Product ","85","100","xxxxx","5","Cam Batteries","","","15","85","0","0","");
INSERT INTO products VALUES("975","P-303423","CANON","NB-2L14BATTERY","Select Product ","60","70","xxxxx","7","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("976","P-0233202","CANON ","NB-7LBATTERY","Select Product ","34","40","xxxxx","3","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("977","P-33332352","SONY","NP-FR1BATTERY","Select Product ","20","25","xxxxx","2","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("978","P-5333827","CANON ","NB-10LBATTERY","Select Product ","34","40","xxxxx","9","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("979","P-0232243","SONY","NP-FT1BATTERY","Select Product ","20","25","xxxxx","5","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("980","P-02222","SONY","NP-FP90BATTERY","Select Product ","65","80","xxxxx","3","Cam Batteries","","","15","65","0","0","");
INSERT INTO products VALUES("981","P-2360283","SONY","NP-FP90BATTERY","Select Product ","20","25","xxxxx","3","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("982","P-333030","SONY","NP-FP70","Select Product ","42","60","xxxxx","1","Cam Batteries","","","18","42","0","0","");
INSERT INTO products VALUES("983","P-730223","CANON","BP-522BATTERY","Select Product ","60","70","xxxxx","3","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("984","P-2222254","SONY ","NP-FP50BATTERY","Select Product ","34","40","xxxxx","0","Cam Batteries","","","6","35","0","0","");
INSERT INTO products VALUES("985","P-5332436","CANON ","NB-3LBATTERY","Select Product ","20","25","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("986","P-220300","JVC","BN-VF707UBATTERY","Select Product ","34","40","xxxxx","4","Cam Batteries","","","6","34","0","0","");
INSERT INTO products VALUES("987","P-83633","JVC","BN-V4084BATTERY","Select Product ","34","40","xxxxx","2","Cam Batteries","","","6","34","0","0","");
INSERT INTO products VALUES("988","P-322202","SONY","NP-FM500BATTERY","Select Product ","42","50","xxxxx","1","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("989","P-07002227","SONY ","NP-FH50BATTERY","Select Product ","34","40","xxxxx","9","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("990","P-572503","KD","KLIC-5001BATTERY","Select Product ","25","30","xxxxx","7","Cam Batteries","","","5","24","0","0","");
INSERT INTO products VALUES("991","P-3730325","SONY","NP-FV50BATTERY","Select Product ","34","40","xxxxx","6","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("992","P-22023","CANON","BP-718BATTERY","Select Product ","65","70","xxxxx","4","Cam Batteries","","","5","65","0","0","");
INSERT INTO products VALUES("993","P-20223092","SONY","NP-BX1BATTERY","Select Product ","42","60","xxxxx","5","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("994","P-02230002","CANON","LP-E12BATTERY","Select Product ","42","50","xxxxx","1","Cam Batteries","","","8","42","0","0","");
INSERT INTO products VALUES("995","P-033232","PANASONIC","CGA-D54sBATTERY","Select Product ","100","120","xxxxx","3","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("996","P-3930232","CANON","LP-E17BATTERY","Select Product ","65","80","xxxxx","15","Cam Batteries","","","15","65","0","0","");
INSERT INTO products VALUES("997","P-82702233","SONY ","NP-FW50BATTERY","Select Product ","42","50","xxxxx","7","Cam Batteries","","","8","42","0","0","");
INSERT INTO products VALUES("998","P-3225020","SONY","FC10/FC11BATTERY","Select Product ","20","25","xxxxx","5","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("999","P-3222632","SAMSUNG","SLB-0837BATTERY","Select Product ","20","25","xxxxx","3","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1000","P-04323533","OLYMPUS","BLM-1BATTERY","Select Product ","42","50","xxxxx","3","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1001","P-226324","SAMSUNG","SCB-1137DBATTERY","Select Product ","20","25","xxxxx","4","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1002","P-3576262","OLYMPUS","BLS-1BATTERY","Select Product ","42","50","xxxxx","5","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1003","P-022030","SAMSUNG","BP-85STBATTERY","Select Product ","35","40","xxxxx","11","Cam Batteries","","","5","35","0","0","");
INSERT INTO products VALUES("1004","P-28930239","OLYMPUS","BLM-5BATTERY","Select Product ","42","50","xxxxx","3","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1005","P-28930239","OLYMPUS","BLM-5BATTERY","Select Product ","42","50","xxxxx","3","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1006","P-52384623","SONY","NP-BG1BATTERY","Select Product ","20","25","xxxxx","7","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1007","P-32830529","SAMSUNG","SLB-0937BATTERY","Select Product ","20","25","xxxxx","9","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1008","P-330333","SONY","NP-BN1BATTERY","Select Product ","20","25","xxxxx","0","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1009","P-0350002","SAMSUNG","BP105RBATTERY","Select Product ","45","50","xxxxx","8","Cam Batteries","","","5","45","0","0","");
INSERT INTO products VALUES("1010","P-2053223","SONY","NP-BK1BATTERY","Select Product ","20","25","xxxxx","7","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1011","P-38222008","SAMSUNG","BP-1310BATTERY","Select Product ","45","50","xxxxx","5","Cam Batteries","","","5","45","0","0","");
INSERT INTO products VALUES("1012","P-222825","KD","KLIC-7001","Select Product ","20","25","xxxxx","4","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1013","P-202232","OLYMPUS","L1-50BBATTERY","Select Product ","20","25","xxxxx","3","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1014","P-263303","KD","KLIC-7005BATTERY","Select Product ","20","25","xxxxx","4","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1015","P-235230","CASIO","CNP-20BATTERY","Select Product ","20","25","xxxxx","8","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1016","P-27682333","KD","KLIC-7002","Select Product ","20","25","xxxxx","2","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1017","P-22329222","CASIO","CNP-40BATTERY","Select Product ","20","25","xxxxx","5","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1018","P-22329222","CASIO","CNP-40BATTERY","Select Product ","20","25","xxxxx","5","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1019","P-2326372","OLYNPUS ","LI42BBATTERY","Select Product ","20","25","xxxxx","10","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1020","P-25833","CASIO","CNP-60BATTERY","Select Product ","20","25","xxxxx","5","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1021","P-2223337","CASIO","CNP-110BATTERY","Select Product ","20","25","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1022","P-3600420","SANYO","DB-L80ABATTERY","Select Product ","20","25","xxxxx","7","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1023","P-05230","JVC","BN-VG107BATTERY","Select Product ","60","70","xxxxx","3","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1024","P-0666233","SANYO","DB-L20ABATTERY","Select Product ","20","25","xxxxx","6","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1025","P-022322","JVC","BN-VG114BATTERY","Select Product ","60","70","xxxxx","2","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1026","P-326346","JVC ","BN-VG138BATTERY","Select Product ","100","120","xxxxx","3","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("1027","P-33320833","FUJI","FNP-45BATTERY","Select Product ","20","25","xxxxx","5","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1028","P-0533423","CASIO","CNP-70BATTERY","Select Product ","20","25","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1029","P-02227222","FUJI","FNP120BATTERY","Select Product ","25","30","xxxxx","1","Cam Batteries","","","5","25","0","0","");
INSERT INTO products VALUES("1030","P-0020803","SAMSUNG","BP-80WBATTERY","Select Product ","42","50","xxxxx","3","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1031","P-2322223","FUJI","FNP-140BATTERY","Select Product ","25","30","xxxxx","4","Cam Batteries","","","5","25","0","0","");
INSERT INTO products VALUES("1032","P-850862","FUJI","FNP-50BATTERY","Select Product ","20","25","xxxxx","3","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1033","P-33223","PANASONIC","DMW-BCF10BATTERY","Select Product ","20","25","xxxxx","12","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1034","P-2230204","FUJI","FNP-85BATTERY","Select Product ","25","30","xxxxx","3","Cam Batteries","","","5","25","0","0","");
INSERT INTO products VALUES("1035","P-2326222","OLYMPUS","L110BBATTERY","Select Product ","20","25","xxxxx","7","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1036","P-2522082","FUJI","FNP-70BATTERY","Select Product ","20","25","xxxxx","1","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1037","P-5024220","FUJI","LI80B","Select Product ","20","25","xxxxx","1","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1038","P-247432","FUJI","FNP-40BATTERY","Select Product ","20","25","xxxxx","4","Cam Batteries","","","5","20","0","0","");
INSERT INTO products VALUES("1039","P-30923","PANASONIC","DMW-BCJ13BATTERY","Select Product ","20","25","xxxxx","2","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1040","P-03602","PANASONIC","DMW-BLB13BATTERY","Select Product ","25","30","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1041","P-0400823","SAMSUNG","BP-210EBATTERY","Select Product ","45","50","xxxxx","4","Cam Batteries","","","5","45","0","0","");
INSERT INTO products VALUES("1042","P-202224","PANASONIC","DMW-BCM13BATTERY","Select Product ","25","30","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1043","P-0222930","SAMSUNG","NP-FV100BATTERY","Select Product ","65","70","xxxxx","5","Cam Batteries","","","5","65","0","0","");
INSERT INTO products VALUES("1044","P-0005622","SONY","NP-FV70BATTERY","Select Product ","45","50","xxxxx","5","Cam Batteries","","","5","45","0","0","");
INSERT INTO products VALUES("1045","P-02032223","PANASONIC","DMW-BLC12BATTERY","Select Product ","42","50","xxxxx","9","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1046","P-27320333","PANASONIC ","DMW-BCG10BATTERY","Select Product ","20","25","xxxxx","5","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1047","P-4427823","PANASONIC","DMW-BMB9BATTERY","Select Product ","34","40","xxxxx","4","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("1048","P-733332","SAMSUNG","SB-LSM160BATTERY","Select Product ","45","50","xxxxx","1","Cam Batteries","","","5","45","0","0","");
INSERT INTO products VALUES("1049","P-23330","PANASONIC","DMW-BLD10BATTERY","Select Product ","60","70","xxxxx","8","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1050","P-0033032","SAMSUNG","LSM160BATTERY","Select Product ","45","50","xxxxx","1","Cam Batteries","","","5","45","0","0","");
INSERT INTO products VALUES("1051","P-332232","SAMSUNG","LSM320BATTERY","Select Product ","75","80","xxxxx","2","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1052","P-00203032","PANASONIC","DMW-BLE9EBATTERY","Select Product ","25","30","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1053","P-83203","SAMSUNG","LSM80","Select Product ","35","40","xxxxx","2","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1054","P-0800738","PANASONIC ","DMW-BCK7EBATTERY","Select Product ","20","25","xxxxx","3","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1055","P-2223222","SAMSUNG","SB-L220BATTERY","Select Product ","55","60","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1056","P-803320","FUJI","FNP-100BATTERY","Select Product ","20","25","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1058","P-276878","PANASONIC","DMW-BCH7EBATTERY","Select Product ","20","25","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1059","P-20022","SONY","NP-FS11","Select Product ","20","25","xxxxx","3","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1060","P-0228390","PANASONIC","DMW-BCL7EBATTERY","Select Product ","20","25","xxxxx","3","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1061","P-0037522","PANASONY","CGA-S001BATTERY","Select Product ","20","25","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1062","P-0393732","JVC","BN-V107UBATTERY","Select Product ","35","40","xxxxx","2","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1063","P-2220320","PANASONIC","VW-VBK360BATTERY","Select Product ","70","80","xxxxx","4","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1064","P-073022","NIKON","EN-EL2BATTERY","Select Product ","20","25","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1065","P-2326","PANASONIC","VW-VBN130BATTERY","Select Product ","50","60","xxxxx","1","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1066","P-325332","GAME","NDS-LITEBATTERY","Select Product ","10","15","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1067","P-0333220","CANON","BP-2L24HBATTERY","Select Product ","85","100","xxxxx","4","Cam Batteries","","","15","","0","0","");
INSERT INTO products VALUES("1068","P-9362023","GAME","SPBATTERY","Select Product ","5","10","xxxxx","9","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1069","P-820052","GAME","3DSBATTERY","Select Product ","15","20","xxxxx","8","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1070","P-235233","CASIO","CNP-120","Select Product ","20","25","xxxxx","2","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1071","P-3009033","PANASONIC","CR-V3BATTERY","Select Product ","20","25","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1072","P-2332233","CANON","W904-810BATTERY","Select Product ","200","250","xxxxx","3","Cam Batteries","","","50","","0","0","");
INSERT INTO products VALUES("1073","P-97722230","PANASONIC","CGA-S007BATTERY","Select Product ","20","25","xxxxx","9","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1074","P-389490","SAMSUNG","BP-85ABATTERY","Select Product ","20","25","xxxxx","5","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1075","P-202030","PANASONIC","CGA-S002BATTERY","Select Product ","20","25","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1076","P-003332","SAMSUNG","BP-88BBATTERY","Select Product ","20","25","xxxxx","9","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1077","P-73322020","SAMSUNG","BP-70ABATTERY","Select Product ","20","25","xxxxx","36","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1078","P-003002","PANASONIC","CGA-S004BATTERY","Select Product ","20","25","xxxxx","7","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1079","P-3233432","SAMSUNG","BP-125ABATTERY","Select Product ","25","30","xxxxx","0","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1080","P-3633330","PANASONY","VW-VBK180BATTERY","Select Product ","50","60","xxxxx","2","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1081","P-2335308","NIKON","EN-EL10BATTERY","Select Product ","20","25","xxxxx","3","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1082","P-04053033","PANASONIC ","CGA-DU21BATTERY","Select Product ","60","70","xxxxx","4","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1083","P-52960","NIKON","EN-EL19BATTERY","Select Product ","20","25","xxxxx","17","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1085","P-3353200","PANASONIC","CGR-D28sBATTERY","Select Product ","70","80","xxxxx","7","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1086","P-473323","NIKON","EN-EL20BATTERY","Select Product ","30","40","xxxxx","1","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1087","P-000720","NIKON","EN-EL14BATTERY","Select Product ","50","60","xxxxx","18","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1088","P-2272323","PANASONIC ","DMW-BCE10BATTERY","Select Product ","20","25","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1089","P-32062236","CANON","NB-5HBATTERY","Select Product ","40","50","xxxxx","2","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1090","P-2223333","PANASONIC","CGA-S006BATTERY","Select Product ","34","40","xxxxx","7","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("1091","P-77520932","PANASONIC","CGR-D085BATTERY","Select Product ","45","50","xxxxx","2","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1092","P-3522238","NIKON","EN-EL9BATTERY","Select Product ","40","50","xxxxx","25","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1093","P-0307222","PANASONIC","CGA-S005BATTERY","Select Product ","20","25","xxxxx","6","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1094","P-233362","NIKON","EN-EL3aBATTERY","Select Product ","40","50","xxxxx","7","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1095","P-0326325","PANASONIC","CGA-DU07BATTERY","Select Product ","32","40","xxxxx","6","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1096","P-380","NIKON","EN-EL3eBATTERY","Select Product ","40","50","xxxxx","0","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1097","P-229603","NIKON","EN-EL15BATTERY","Select Product ","50","60","xxxxx","1","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1098","P-2033289","NIKON","EN-EL1","Select Product ","25","30","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1099","P-255230","NIKON","EN-EL11BATTERY","Select Product ","20","25","xxxxx","3","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1100","P-2062903","NIKON","EN-EL8BATTERY","Select Product ","20","25","xxxxx","3","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1101","P-2025033","NIKON","EN-EL12BATTERY","Select Product ","20","25","xxxxx","5","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1102","P-224202","CANON","LP-10ORIGINAL-CHARGER","Select Product ","30","40","xxxxx","4","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1103","P-3020","CANON","LP-8ORIGINAL-CHARGER","Select Product ","30","40","xxxxx","4","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1104","P-3230232","CANON","LP-E6ORIGINAL-CHARGER","Select Product ","30","40","xxxxx","13","Cam Chargers","","","10","","0","0","");
INSERT INTO products VALUES("1105","P-0302522","CANON","LP-8ORIGINAL-CHARGER","Select Product ","30","40","xxxxx","10","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1106","P-6303204","NIKON","EN-EL9ORIGINAL-CHARGER","Select Product ","30","40","xxxxx","8","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1107","P-39467002","KODAK","K7004CHARGERS","Select Product ","10","15","xxxxx","14","Cam Chargers","","","5","20","0","0","");
INSERT INTO products VALUES("1108","P-324330","NIKON","EN-EL14ORIGINAL-CHARGER","Select Product ","30","40","xxxxx","13","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1109","P-223280","NIKON","EN-EL3ORIGINAL-CHARGER","Select Product ","30","40","xxxxx","4","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1110","P-33200233","KODAK","K7004CHARGER","Select Product ","10","15","xxxxx","6","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1111","P-233532","NIKON","EN-EL15ORIGINAL-CHARGER","Select Product ","30","40","xxxxx","3","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1112","P-233352","CASIO","CNP-40CHARGER","Select Product ","10","15","xxxxx","2","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1113","P-220023","CANON","LP-E17ORIGINAL-CHARGER","Select Product ","30","40","xxxxx","6","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1114","P-3933307","CANON","LP-E5ORIGINAL-CHARGER","Select Product ","30","40","xxxxx","0","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1115","P-2239207","FUJIFILM","FNP-60CHARGER","Select Product ","10","15","xxxxx","8","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1116","P-302232","SONY","NP-F960 ORIGINAL-CHARGER","Select Product ","20","30","xxxxx","6","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1117","P-35029","SONY","BG1ORIGINAL-CHARGER","Select Product ","10","20","xxxxx","12","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1118","P-53536","SAMSUNG","BP-70ACHARGER","Select Product ","10","15","xxxxx","4","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1119","P-33233090","OLYMPUS","LI-80BCHARGER","Select Product ","10","15","xxxxx","4","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1120","P-932347","CANON","NB-4LORIGINAL-CHARGER","Select Product ","10","20","xxxxx","3","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1121","P-3330233","CANON","NB-5LORIGINAL-CHARGER","Select Product ","10","20","xxxxx","4","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1122","P-3232534","PANASONY ","DU21ORIGINAL-CHARGER","Select Product ","10","20","xxxxx","5","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1123","P-38032","PANASONY","VBK180-CHARGER","Select Product ","10","15","xxxxx","9","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1124","P-52382220","SONY","NP-BG1-CHARGER","Select Product ","10","15","xxxxx","15","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1125","P-0233306","SONY","NP-FC11CHARGER","Select Product ","10","15","xxxxx","4","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1126","P-25304","FUJI","NP-700-CHARGER","Select Product ","10","15","xxxxx","6","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1127","P-9633280","SAMSUNG","IA-BP210CHARGER","Select Product ","10","15","xxxxx","2","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1128","P-3300033","FUJI","CNP-100-CHARGER","Select Product ","10","15","xxxxx","0","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1129","P-2300623","SONY","NP-FC11CHARGER","Select Product ","10","15","xxxxx","4","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1130","P-22305330","SONY","NP-FS11CHARGER","Select Product ","10","15","xxxxx","1","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1131","P-32228","FUJI","CNP-50-CHARGER","Select Product ","10","15","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1132","P-60420302","SONY","NP-FW50-CHARGER","Select Product ","10","15","xxxxx","0","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1133","P-0229332","CASIO","CNP-130-CHARGER","Select Product ","10","15","xxxxx","2","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1134","P-22023033","CASIO","NP-30-CHARGER","Select Product ","10","15","xxxxx","6","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1135","P-2402223","SONY ","NP-BN1CHARGER","Select Product ","10","15","xxxxx","23","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1136","P-0326","CASIO","NP-900-CHARGER","Select Product ","10","15","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1137","P-3520379","SONY","NP-FH100CHARGER","Select Product ","10","15","xxxxx","8","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1138","P-230370","FUJI","NP-150-CHARGER","Select Product ","10","15","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1139","P-3232328","SONY","F-970CHARGER","Select Product ","10","15","xxxxx","1","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1140","P-238330","","K8000-CHARGER","Select Product ","10","15","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1141","P-899253","NIKON","EN-EL14CHARGER","Select Product ","10","15","xxxxx","30","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1142","P-393038","","CNP110-CHARGER","Select Product ","10","15","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1143","P-223206","","CNP-70-CHARGER","Select Product ","10","15","xxxxx","6","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1144","P-2305","NIKON","EN-EL9CHARGER","Select Product ","10","15","xxxxx","1","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1145","P-203223","","CNP-120-CHARGER","Select Product ","10","15","xxxxx","7","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1146","P-233433","NIKON","EN-EL19CHARGER","Select Product ","10","15","xxxxx","15","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1148","P-232632","  ","NB-2LH-CHARGER","Select Product ","10","15","xxxxx","24","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1149","P-2303420","NIKON","EN-EL5CHARGER","Select Product ","10","15","xxxxx","11","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1150","P-33203","","BP-511A-CHARGER","Select Product ","10","15","xxxxx","6","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1151","P-35223","NIKON","EN-EL12CHARGER","Select Product ","10","15","xxxxx","8","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1152","P-0333222","","LP-E10-CHARGER","Select Product ","10","15","xxxxx","6","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1153","P-33002532","NIKON","EN-EL8CHARGER","Select Product ","10","15","xxxxx","5","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1154","P-9200203","","LP-E5-CHARGER","Select Product ","10","15","xxxxx","5","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1155","P-2050332","NIKON","EN-EL2CHARGER","Select Product ","10","15","xxxxx","4","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1156","P-590423","","LP-E8-CHARGER","Select Product ","10","15","xxxxx","0","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1157","P-2230833","NIKON","EN-EL1CHARGER","Select Product ","10","15","xxxxx","6","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1158","P-03002933","","LP-E6-CHARGER","Select Product ","10","15","xxxxx","19","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1159","P-64228","","BP-125A-CHARGER","Select Product ","10","15","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1160","P-023389","","BP-208-CHARGER","Select Product ","10","15","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1161","P-206022","","NB-12L-CHARGER","Select Product ","10","15","xxxxx","5","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1162","P-02323822","NIKON","EN-EL3evCHARGER","Select Product ","10","15","xxxxx","3","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1163","P-23373","","EN-EL15CHARGER","Select Product ","10","15","xxxxx","5","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1164","P-3822230","","NB-1LH-CHARGER","Select Product ","10","15","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1165","P-602363","","NB-3L-CHARGER","Select Product ","10","15","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1166","P-39230030","","V107UCHARGER","Select Product ","10","15","xxxxx","12","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1167","P-322783","","BP-945-CHARGER","Select Product ","10","15","xxxxx","14","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1170","P-03060","","NB-11L-CHARGER","Select Product ","10","15","xxxxx","6","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1171","P-22334320","","NB-4L-CHARGER","Select Product ","10","15","xxxxx","13","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1172","P-30329238","","NB-6L-CHARGER","Select Product ","10","15","xxxxx","16","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1173","P-00330","JVC","V408UCHARGER","Select Product ","10","15","xxxxx","7","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1174","P-03237","","BLM1-CHARGER","Select Product ","10","15","xxxxx","2","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1175","P-960433","","S002eCHARGER","Select Product ","10","15","xxxxx","9","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1176","P-2024420","","LI40B-CHARGER","Select Product ","10","15","xxxxx","3","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1177","P-32433032","","S007eCHARGER","Select Product ","10","15","xxxxx","0","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1178","P-02036329","","FNP-85-CHARGER","Select Product ","10","15","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1179","P-07323","PANASONIC ","BCF10CHARGER","Select Product ","10","15","xxxxx","12","Camera Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1180","P-45332232","","PS-BLS1-CHARGER","Select Product ","10","15","xxxxx","3","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1181","P-928307","","D28SCHARGER","Select Product ","10","15","xxxxx","23","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1182","P-3393030","","LI10B--CHARGER","Select Product ","10","15","xxxxx","9","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1183","P-8439283","","DM10-BCL7ECHARGER","Select Product ","10","15","xxxxx","1","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1184","P-0733","","DMW-BLC12CHARGER","Select Product ","10","15","xxxxx","3","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1185","P-3253","","SB-L320CHARGER","Select Product ","10","15","xxxxx","2","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1186","P-0352302","NIKON","50MM-1.8D-NIKON","Select Product ","490","550","xxxxx","1","Cam Batteries","","","60","","0","0","");
INSERT INTO products VALUES("1187","P-36342303","","SM80CHARGER","Select Product ","10","15","xxxxx","10","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1188","P-533323","CANON","50MM-1.8D-CANON","Select Product ","490","550","xxxxx","3","Cam Batteries","","","60","","0","0","");
INSERT INTO products VALUES("1189","P-63332428","","BP88BCHARGER","Select Product ","10","15","xxxxx","4","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1190","P-2233220","","BP88ACHARGER","Select Product ","10","15","xxxxx","1","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1191","P-00323263","CANON","75-300MM-CANON","Select Product ","550","700","xxxxx","3","Camera Accessories","","","150","","0","0","");
INSERT INTO products VALUES("1192","P-28329","SAMSUNG","SLB0937BCHARGER","Select Product ","10","15","xxxxx","3","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1193","P-9223732","","18-140MM-NIKON","Select Product ","1300","1500","xxxxx","1","Cam Batteries","","","200","","0","0","");
INSERT INTO products VALUES("1194","P-3903","SAMSUNG","SLB093CHARGER","Select Product ","10","15","xxxxx","4","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1195","P-0632039","","YN560-III-FLASH","Select Product ","250","350","xxxxx","6","Cam Batteries","","","100","","0","0","");
INSERT INTO products VALUES("1196","P-0233206","","YN560-IV-FLASH","Select Product ","380","450","xxxxx","0","Cam Batteries","","","70","","0","0","");
INSERT INTO products VALUES("1197","P-2333307","SAMSUNG","BP-1030CHARGER","Select Product ","10","15","xxxxx","6","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1198","P-020293","","YN565-EX-II-FLASH","Select Product ","380","500","xxxxx","0","Cam Batteries","","","120","","0","0","");
INSERT INTO products VALUES("1199","P-42503","","BP-1310CHARGER","Select Product ","10","15","xxxxx","8","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1200","P-3423430","NIKON","D5600-NIKON","Select Product ","2200","3000","xxxxx","1","Cam Batteries","","","300","","0","0","");
INSERT INTO products VALUES("1201","P-2902026","","BP-80WCHARGER","Select Product ","10","15","xxxxx","0","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1202","P-034233","CANON","1300D-CANON","Select Product ","1450","1750","xxxxx","1","Cam Batteries","","","300","","0","0","");
INSERT INTO products VALUES("1203","P-22223623","SAMSUNG","SLB-1237CHARGER","Select Product ","10","15","xxxxx","1","Cam Chargers","","","5","","0","0","");
INSERT INTO products VALUES("1204","P-30202","CANON","650D","Select Product ","1800","2000","xxxxx","1","Cam Batteries","","","300","","0","0","");
INSERT INTO products VALUES("1205","P-202822","CANON","750D-CANON","Select Product ","2400","3000","xxxxx","0","Cam Batteries","","","500","","0","0","");
INSERT INTO products VALUES("1206","P-0222639","NIKON","D3400-NIKON","Select Product ","1700","2000","xxxxx","0","Cam Batteries","","","300","","0","0","");
INSERT INTO products VALUES("1207","P-423336","","CANON-LENS-18-55MM","Select Product ","510","600","xxxxx","0","Cam Batteries","","","90","","0","0","");
INSERT INTO products VALUES("1208","P-73053227","","BY-WM8-MIKE","Select Product ","800","1000","xxxxx","2","Camera Accessories","","","200","","0","0","");
INSERT INTO products VALUES("1209","P-2920223","LED LIGHT","LED-187A","Select Product ","280","350","xxxxx","0","Camera Accessories","","","70","","0","0","");
INSERT INTO products VALUES("1210","P-37963726","","CHINA-CHARGER","Select Product ","10","15","xxxxx","107","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1211","P-62205","LED LIGHT","LED-5001","Select Product ","300","350","xxxxx","6","Cam Batteries","","","50","","0","0","");
INSERT INTO products VALUES("1212","P-0329620","","OLYMPUS-CABLE","Select Product ","11","15","xxxxx","7","Laptop Accessories","","","4","","0","0","");
INSERT INTO products VALUES("1213","P-22423203","","GRIP-BETTERY","Select Product ","150","200","xxxxx","15","Camera Accessories","","","50","","0","0","");
INSERT INTO products VALUES("1214","P-0253732","","YELLOW-CABLE","Select Product ","10","15","xxxxx","23","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1215","P-2223033","","SONY-MP4-CABLE","Select Product ","10","15","xxxxx","37","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1216","P-4905323","SONY","ICD-BX140-RECORDER","Select Product ","180","220","xxxxx","3","Cam Batteries","","","40","","0","0","");
INSERT INTO products VALUES("1217","P-330000","","UNIVERSAL-CABLE","Select Product ","6","10","xxxxx","28","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1218","P-023","SONY","ICD-PX470-RECORDER","Select Product ","280","350","xxxxx","0","Cam Batteries","","","70","","0","0","");
INSERT INTO products VALUES("1219","P-23993232","","TRIGGER","Select Product ","160","200","xxxxx","3","Camera Accessories","","","40","","0","0","");
INSERT INTO products VALUES("1220","P-08223833","","SHUFFLE-CABLE","Select Product ","10","15","xxxxx","10","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1221","P-3432323","","AIRTEL-4G-WIFI","Select Product ","140","170","xxxxx","6","Cam Batteries","","","30","","0","0","");
INSERT INTO products VALUES("1222","P-2323633","","SMART-WATCH","Select Product ","50","70","xxxxx","13","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("1223","P-4039333","","360-WIRE-PAD","Select Product ","38","45","xxxxx","297","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1224","P-300042","SAMSUNG","SAMSUNG-MP4-CABLE","Select Product ","15","20","xxxxx","6","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1225","P-6388329","PAD","UCOM-SINGLE","Select Product ","11","12","xxxxx","181","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1226","P-22738","PAD","UCOM-DOUBLE","Select Product ","18","20","xxxxx","86","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1227","P-04236022","","360-PAD-MOUTH","Select Product ","10","15","xxxxx","13","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1228","P-0832022","","PS3-PAD-NEW","Select Product ","25","29","xxxxx","12","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1229","P-83022","","ZUNE-CABLE","Select Product ","10","15","xxxxx","13","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1230","P-4253332","PS2 PAD ","DUAL-SHOCK-SHINNING","Select Product ","10","15","xxxxx","50","Game Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1231","P-330052","XBOX 360","XBOX-LIVE-PAD-NEW","Select Product ","16","20","xxxxx","31","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1232","P-2263373","","OTG CABLE","Select Product ","2","3","xxxxx","0","Cam Batteries","","","1","","0","0","");
INSERT INTO products VALUES("1235","P-23092323","","DELL-BIG-PIN-19.5V","Select Product ","23","28","xxxxx","10","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1236","P-3342","","PSP-BATTERY-BACK","Select Product ","5","7","xxxxx","241","Game Accessories","","","2","","0","0","");
INSERT INTO products VALUES("1237","P-33662330","","TOSHIBA-19V","Select Product ","16","20","xxxxx","12","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1238","P-322072","HP","HP-BIG-PIN-19V","Select Product ","18","22","xxxxx","7","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1239","P-25230007","","SAMSUNG-19V","Select Product ","16","20","xxxxx","52","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1240","P-9358257","","SAMSUNG-CASE-2.0","Select Product ","15","20","xxxxx","18","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1241","P-3823320","","DELL-SMALL-PIN-19.5V","Select Product ","40","50","xxxxx","3","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1242","P-2233279"," ","WD-CASE-3.0","Select Product ","25","30","xxxxx","90","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1243","P-2263300","","HP-SMALL-PIN-18.5","Select Product ","16","20","xxxxx","63","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1244","P-73223293","","HP-MINI-19V","Select Product ","16","20","xxxxx","50","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1245","P-383232","","ACCER-19V","Select Product ","16","20","xxxxx","5","Laptop Accessories","","","4","","0","0","");
INSERT INTO products VALUES("1246","P-03257","","WIRED-KEYBOARD","Select Product ","15","20","xxxxx","17","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1247","P-2070433","","HP-BLUE-19.5V","Select Product ","24","30","xxxxx","19","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("1248","P-233330","","SONY-19.5V","Select Product ","18","22","xxxxx","7","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1250","P-333530","","INFINIX-CHARGER","Select Product ","18","20","xxxxx","45","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1251","P-035385","","ASUS-SMALL-PIN-19V","Select Product ","16","20","xxxxx","21","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1252","P-0423232","","TECHNO-CHARGER","Select Product ","18","20","xxxxx","46","Phone Accessories","","","2","","0","0","");
INSERT INTO products VALUES("1253","P-2350235","","LENOVO-SMALL-PIN-20V","Select Product ","50","60","xxxxx","5","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("1254","P-02242820","","TRAVEL-ADAPTER","Select Product ","18","25","xxxxx","21","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1255","P-3020050","","LAPTOP POWER CORD USED","Select Product ","7","10","xxxxx","40","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1256","P-0339923","","LAPTOP POWER CORD NEW","Select Product ","3","4","xxxxx","7","Cam Batteries","","","1","","0","0","");
INSERT INTO products VALUES("1257","P-26330","","BLACKBERRY-CHARGER","Select Product ","15","20","xxxxx","7","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1258","P-2022350","","GEAR-RUBBER-ASH","Select Product ","28","35","xxxxx","61","Game Accessories","","","7","","0","0","");
INSERT INTO products VALUES("1259","P-250420","","GEAR-BLACK","Select Product ","21","24","xxxxx","1","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1260","P-3232942"," ","SOUNDCARD","Select Product ","5","8","xxxxx","20","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1261","P-383392","","GEAR-COLOUR","Select Product ","25","28","xxxxx","70","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1262","P-33032"," ","BLUTOOTH-2.0","Select Product ","5","7","xxxxx","13","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1263","P-7364","","GEAR-WHITE-USED","Select Product ","25","30","xxxxx","150","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1264","P-2203223","","GEAR-BOARD","Select Product ","45","53","xxxxx","38","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1265","P-0023305","MOUSE","WIRE-MOUSE","Select Product ","7","8","xxxxx","193","Cam Batteries","","","1","","0","0","");
INSERT INTO products VALUES("1266","P-9392338","","OTA-CABLE","Select Product ","2","3","xxxxx","58","Phone Accessories","","","1","","0","0","");
INSERT INTO products VALUES("1267","P-283422","","HAMA-CLEANER","Select Product ","10","15","xxxxx","14","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1268","P-232200","HDMI","HDMI-1.5M","Select Product ","7","10","xxxxx","78","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1270","P-022022","","M5-CAR-MP3","Select Product ","9","12","xxxxx","39","Laptop Accessories","","","4","","0","0","");
INSERT INTO products VALUES("1271","P-03302320","","XBOX1-CONVERTER","Select Product ","80","100","xxxxx","11","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("1272","P-2008332","","M101BT-CAR-MP3","Select Product ","40","50","xxxxx","5","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1273","P-9020333","NEW YORK ","N11 CAR MP3","Select Product ","18","25","xxxxx","0","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1274","P-354242","","VITA-CHARGER","Select Product ","30","40","xxxxx","1","Game Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1275","P-332322","","CARD-READER-SINGLE","Select Product ","1","2","xxxxx","11","Cam Batteries","","","1","","0","0","");
INSERT INTO products VALUES("1276","P-9024022","PS4 PAD ","PS4-PAD BLACK","Select Product ","190","230","xxxxx","4","Cam Batteries","","","40","","0","0","");
INSERT INTO products VALUES("1277","P-2023332","","360-CONVERTER","Select Product ","45","55","xxxxx","10","Game Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1278","P-622053","","XBOX1-PAD","Select Product ","210","250","xxxxx","2","Cam Batteries","","","40","","0","0","");
INSERT INTO products VALUES("1279","P-0322304","XBOX 360","XBOX-360-WIRELESS-PAD","Select Product ","70","90","xxxxx","15","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("1282","P-262320"," ","PS2-CONVERTER","Select Product ","9","10","xxxxx","0","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1283","P-2283302","","A3-POWER-BANK","Select Product ","70","50","xxxxx","5","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1284","P-200225","","C5-POWER-BANK","Select Product ","45","50","xxxxx","0","Phone Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1285","P-24823333","HDMI","HDMI-TO-VGA-CABLE","Select Product ","15","20","xxxxx","6","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1286","P-02225","","NK819-BLUETOOTH","Select Product ","30","40","xxxxx","3","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1287","P-22323","","450BT-BLUETOOTH","Select Product ","40","50","xxxxx","1","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1288","P-0053923","CATRIDGE","GAMEBOY-CATRIDGE","Select Product ","7","10","xxxxx","199","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1289","P-3333930","","MS-770BT","Select Product ","30","40","xxxxx","1","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1290","P-232323","","ADVANCE-CATRIDGE","Select Product ","8","10","xxxxx","45","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1291","P-2923520","","NK910-BT","Select Product ","30","40","xxxxx","1","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1292","P-33339","","MS-790BT","Select Product ","30","40","xxxxx","0","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1293","P-322002","","P35-HEADSET","Select Product ","45","55","xxxxx","1","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1294","P-263203","","W2-BT","Select Product ","35","45","xxxxx","3","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1295","P-00906","BLUTOOTH","JD 28 BT","Select Product ","30","40","xxxxx","2","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1296","P-5330220","","CG368-BT","Select Product ","30","40","xxxxx","2","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1297","P-529428","","SAMSUNG-LEVEL-ACTIVE-BT","Select Product ","50","60","xxxxx","0","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1298","P-20728007","","ITEL-EARPIECE","Select Product ","5","7","xxxxx","14","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1299","P-233332"," ","PHILIPS-EARPIECE","Select Product ","6","8","xxxxx","48","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1300","P-203020","","TECNO-EARPIC","Select Product ","5","7","xxxxx","54","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1301","P-3083303","","PS3-CONVERTER","Select Product ","18","25","xxxxx","15","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1302","P-303305","HDMI","HDMI-3MM","Select Product ","11","15","xxxxx","8","Laptop Accessories","","","4","","0","0","");
INSERT INTO products VALUES("1303","P-2023034","HDMI","HDMI-5M","Select Product ","23","30","xxxxx","5","Laptop Accessories","","","7","","0","0","");
INSERT INTO products VALUES("1304","P-38300","","XBOX-360-RECEIVER","Select Product ","32","40","xxxxx","2","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1305","P-52226220","","PSP-VITA-CABLE","Select Product ","15","20","xxxxx","1","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1306","P-222","","PSP-GO-CABLE","Select Product ","11","15","xxxxx","0","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1307","P-23336283","","XBOX-360-POWER-CONVERTER-1-PIN","Select Product ","18","25","xxxxx","3","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1308","P-230234","SAMSUNG","HDD CASE 2.0","Select Product ","15","20","xxxxx","50","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1309","P-02209","","TDK-EARPINS","Select Product ","17","20","xxxxx","28","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1310","P-3002403","","S4-COMPUTER-SPEAKER","Select Product ","13","15","xxxxx","4","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1311","P-3300","BLUTOOTH","S400-BT","Select Product ","40","50","xxxxx","1","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1312","P-392002","","IPHONE-X-CHARGER","Select Product ","25","30","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1313","P-242323","","ISMART-READER","Select Product ","28","35","xxxxx","1","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1314","P-2020273","","PSP-GO-CHARGER","Select Product ","18","25","xxxxx","3","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1315","P-3304723","","TYPE-C-OTG","Select Product ","9","15","xxxxx","19","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("1316","P-3833523","HP","WIRELESS-MOUSE","Select Product ","11","15","xxxxx","18","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1317","P-5232320","","PSP-3000-BETTERY","Select Product ","9","15","xxxxx","9","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("1318","P-0935763","PSP","PSP-CHARGER","Select Product ","6","9","xxxxx","30","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1319","P-80033","","ANDROID-CABLE","Select Product ","6","10","xxxxx","39","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1320","P-7323332","HDMI","HDML-2MM","Select Product ","10","13","xxxxx","17","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1321","P-30200","","MULTI-CARD-READER","Select Product ","2","3","xxxxx","0","Cam Batteries","","","1","","0","0","");
INSERT INTO products VALUES("1322","P-2303232","","BLUTOOTH-4.0","Select Product ","11","15","xxxxx","9","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1323","P-203253","","PHANTOM-CHARGER","Select Product ","20","30","xxxxx","4","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1324","P-32232","","S8-CHARGER","Select Product ","20","30","xxxxx","1","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1326","P-234230","","IPHONE4-CABLE","Select Product ","7","10","xxxxx","37","Phone Accessories","","","3","","0","0","");
INSERT INTO products VALUES("1327","P-303223","","IPHONE5-USED-CABLE","Select Product ","18","25","xxxxx","7","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1328","P-23023","","IPHONE5-NEW-CABLE","Select Product ","7","10","xxxxx","4","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1330","P-03322623","AA","A-A","Select Product ","120","140","xxxxx","130","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("1331","P-0322302","PSP  ","PSP BATTERY","Select Product ","10","15","xxxxx","7","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1332","P-7383822","CASIO","CNP-20 CHARGER","Select Product ","10","15","xxxxx","0","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1334","P-2372205","","GAME","Select Product ","100","180","xxxxx","6","Cam Batteries","","","80","","0","0","");
INSERT INTO products VALUES("1336","P-4022234","CITY-CALL ","M25+-CITYCALL","Select Product ","37","45","xxxxx","2","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1338","P-807022","NIKON","ENEL 14 CHARGER","Select Product ","10","15","xxxxx","26","Camera Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1339","P-7222345","HUAWEI","Y7 PRIME 2018","Select Product ","743","850","xxxxx","2","Cam Batteries","","","107","","0","0","");
INSERT INTO products VALUES("1340","P-379322","LUMIX","LUMIX CAMERA GT-2","Select Product ","500","700","xxxxx","1","Cam Batteries","","","200","","0","0","");
INSERT INTO products VALUES("1341","P-5222302","KODAK","KODAK CAMERA","Select Product ","500","700","xxxxx","1","Camera Accessories","","","200","","0","0","");
INSERT INTO products VALUES("1342","P-303363","PENTAX","PENTAX CAMERA","Select Product ","500","700","xxxxx","1","Camera Accessories","","","200","","0","0","");
INSERT INTO products VALUES("1343","P-43300400","NIKON","NIKON CAMERA","Select Product ","400","700","xxxxx","3","Cam Batteries","","","300","","0","0","");
INSERT INTO products VALUES("1344","P-0032333","LED LIGT","LED VL001B LIGHT","Select Product ","190","300","xxxxx","1","Camera Accessories","","","110","","0","0","");
INSERT INTO products VALUES("1345","P-203302","PS4 CD","VIKINGS PS4 CD","Select Product ","100","150","xxxxx","1","Game Accessories","","","50","","0","0","");
INSERT INTO products VALUES("1346","P-322302","PS4 CD","DEAD ISLAND PS4 CD","Select Product ","100","150","xxxxx","1","Game Accessories","","","50","","0","0","");
INSERT INTO products VALUES("1347","P-2223323","PS4 CD","SNIPER ELITE III CD","Select Product ","120","150","xxxxx","2","Game Accessories","","","30","","0","0","");
INSERT INTO products VALUES("1348","P-54029323","PS4 CD","DEUS EX CD","Select Product ","80","120","xxxxx","1","Game Accessories","","","40","","0","0","");
INSERT INTO products VALUES("1349","P-05276832","PS4 CD","CALL-OF-DUTY-WWII-CD","Select Product ","90","150","xxxxx","4","Game Accessories","","","60","","0","0","");
INSERT INTO products VALUES("1350","P-340327","PS4 CD","FIFA 14 CD PS3","Select Product ","70","100","xxxxx","1","Game Accessories","","","30","","0","0","");
INSERT INTO products VALUES("1351","P-392723","PS4 CD","PES 2017 PS3","Select Product ","80","100","xxxxx","1","Game Accessories","","","20","","0","0","");
INSERT INTO products VALUES("1352","P-29703922","PS4 CD","FIFA 17 CD","Select Product ","100","130","xxxxx","1","Game Accessories","","","30","","0","0","");
INSERT INTO products VALUES("1353","P-220663","PS4 CD","SHADOW OF COLOSSUS CD","Select Product ","100","150","xxxxx","2","Game Accessories","","","50","","0","0","");
INSERT INTO products VALUES("1354","P-3733226","PS4 CD","PES 14 CD","Select Product ","70","100","xxxxx","1","Cam Batteries","","","30","","0","0","");
INSERT INTO products VALUES("1355","P-40272239","PS4 CD","SHADOW OF WAR CD","Select Product ","100","150","xxxxx","1","Cam Batteries","","","50","","0","0","");
INSERT INTO products VALUES("1356","P-0232","PS4 CD","FIFA 19 CD","Select Product ","200","350","xxxxx","5","Game Accessories","","","150","","0","0","");
INSERT INTO products VALUES("1357","P-37377242","PS4 CD","ASSASINS-CREED(ODYSSEY)CD","Select Product ","100","180","xxxxx","1","Game Accessories","","","80","","0","0","");
INSERT INTO products VALUES("1358","P-73252964","PS4 CD","SNIPER ELITE 4 CD","Select Product ","100","180","xxxxx","1","Game Accessories","","","80","","0","0","");
INSERT INTO products VALUES("1359","P-34030","PS4 CD","GTA 5 CD","Select Product ","80","220","xxxxx","2","Camera Accessories","","","140","","0","0","");
INSERT INTO products VALUES("1360","P-329292","PS4 CD","METAL GEAR SOLID CD","Select Product ","70","150","xxxxx","1","Game Accessories","","","80","","0","0","");
INSERT INTO products VALUES("1361","P-6893542","PS4 CD","SHADOW OF WORRIOR CD","Select Product ","100","170","xxxxx","1","Game Accessories","","","70","","0","0","");
INSERT INTO products VALUES("1362","P-200302","PS4 CD","TEKEN CD","Select Product ","80","140","xxxxx","1","Cam Batteries","","","60","","0","0","");
INSERT INTO products VALUES("1363","P-54029323","PS4 CD","PAY DAY 2 CD","Select Product ","60","140","xxxxx","2","Cam Batteries","","","80","","0","0","");
INSERT INTO products VALUES("1364","P-023322","PS4 CD","BATTELFIELD 1 CD","Select Product ","80","170","xxxxx","1","Cam Batteries","","","90","","0","0","");
INSERT INTO products VALUES("1365","P-20692","PS4 CD","PES 19 CD","Select Product ","200","300","xxxxx","2","Cam Batteries","","","100","","0","0","");
INSERT INTO products VALUES("1366","P-9228433","PS4 CD","SPIDERMAN CD","Select Product ","200","350","xxxxx","2","Cam Batteries","","","150","","0","0","");
INSERT INTO products VALUES("1367","P-02202","PS4 CD","FIFA 15 CD","Select Product ","70","100","xxxxx","1","Game Accessories","","","30","","0","0","");
INSERT INTO products VALUES("1368","P-0000000","PS4 CD","SNIPER 3(GHOST WORRIOR)-CD","Select Product ","80","150","xxxxx","1","Cam Batteries","","","70","","0","0","");
INSERT INTO products VALUES("1369","P-032962","PS4 CD","MAD MAX","Select Product ","100","170","xxxxx","1","Game Accessories","","","70","","0","0","");
INSERT INTO products VALUES("1370","P-33237323","PS4 CD","THE SURGE CD","Select Product ","80","130","xxxxx","1","Game Accessories","","","50","","0","0","");
INSERT INTO products VALUES("1371","P-033322","PS4 CD","DOOM CD","Select Product ","50","70","xxxxx","1","Game Accessories","","","20","","0","0","");
INSERT INTO products VALUES("1372","P-0220203","PS4 CD","HITMAN CD","Select Product ","90","150","xxxxx","1","Game Accessories","","","60","","0","0","");
INSERT INTO products VALUES("1373","P-330204","PS4 CD","W2K 19 CD","Select Product ","200","330","xxxxx","1","Game Accessories","","","130","","0","0","");
INSERT INTO products VALUES("1374","P-3723982","PS4 CD","RUGBY 15 CD","Select Product ","70","120","xxxxx","1","Game Accessories","","","50","","0","0","");
INSERT INTO products VALUES("1375","P-223233","XBOX ONE CD","DESTINY CD","Select Product ","90","150","xxxxx","1","Game Accessories","","","60","","0","0","");
INSERT INTO products VALUES("1376","P-33762303","XBOX ONE CD","EVOLVE CD","Select Product ","50","70","xxxxx","1","Game Accessories","","","20","","0","0","");
INSERT INTO products VALUES("1377","P-202973","XBOX ONE CD","W2K 18 CD","Select Product ","170","200","xxxxx","2","Game Accessories","","","30","","0","0","");
INSERT INTO products VALUES("1378","P-202533","XBOX ONE CD","TITANFALL CD","Select Product ","80","120","xxxxx","1","Game Accessories","","","40","","0","0","");
INSERT INTO products VALUES("1379","P-967203","XBOX ONE CD","CALL-OF-DUTY(INFINITY WARFARE)","Select Product ","100","180","xxxxx","1","Game Accessories","","","80","","0","0","");
INSERT INTO products VALUES("1380","P-0023332","XBOX ONE CD","METAL GEAR(SURVIVE)","Select Product ","100","150","xxxxx","2","Game Accessories","","","50","","0","0","");
INSERT INTO products VALUES("1381","P-330302","XBOX ONE CD","RESIDENT EVIL CD","Select Product ","100","170","xxxxx","1","Game Accessories","","","70","","0","0","");
INSERT INTO products VALUES("1382","P-20823","PS3 PAD","PS3/PC PAD","Select Product ","15","28","xxxxx","0","Cam Batteries","","","13","","0","0","");
INSERT INTO products VALUES("1383","P-3330095","NIKON","A100-COOLPIX-CAMERA","Select Product ","300","500","xxxxx","0","Camera Accessories","","","200","","0","0","");
INSERT INTO products VALUES("1384","P-32023723","CANON","IXUS 185 CAMERA","Select Product ","300","500","xxxxx","1","Camera Accessories","","","200","","0","0","");
INSERT INTO products VALUES("1385","P-27336203","SPEAKER ","JT024","Select Product ","15","25","xxxxx","6","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1386","P-232422","SONY","W800 CAMERA","Select Product ","300","500","xxxxx","1","Camera Accessories","","","200","","0","0","");
INSERT INTO products VALUES("1387","P-233334","MEMORY ","TF 32GB","Select Product ","18","25","xxxxx","54","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1388","P-3403722","SAMSUNG","J6","Select Product ","950","1000","xxxxx","1","Cam Batteries","","","150","","0","0","");
INSERT INTO products VALUES("1389","P-39306","MEMORY","TF 16GB","Select Product ","15","17","xxxxx","110","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1390","P-23020233","MEMORY","TF 2GB","Select Product ","10","12","xxxxx","19","Cam Batteries","","","1","","0","0","");
INSERT INTO products VALUES("1391","P-20490032","MEMORY  ","TF 8GB","Select Product ","13","15","xxxxx","194","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1392","P-3302223","MEMORY  ","TF 4GB","Select Product ","11","14","xxxxx","95","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1393","P-580323","MEMORY","TF 64GB","Select Product ","65","75","xxxxx","0","Phone","","","10","","0","0","");
INSERT INTO products VALUES("1394","P-08290023","TOSHIBA","TOSHIBA 8GB","Select Product ","15","18","xxxxx","0","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1395","P-39323","TOSHIBA ","TOSHIBA 16GB","Select Product ","18","20","xxxxx","0","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1396","P-220350","TOSHIBA","TOSHIBA 32GB","Select Product ","28","33","xxxxx","2","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1397","P-920302","DIGIRICH","8GB","Select Product ","15","17","xxxxx","1","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1398","P-0332532","SANDISK","ULTRA 64GB","Select Product ","100","130","xxxxx","5","Camera Accessories","","","20","","0","0","");
INSERT INTO products VALUES("1399","P-6323403","SANDISK","ULTRA 32GB","Select Product ","55","70","xxxxx","18","Camera Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1400","P-923623","SANDISK","ULTRA 16GB","Select Product ","35","50","xxxxx","31","Camera Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1401","P-05030","SAMSUNG","BP 70A","Select Product ","15","25","xxxxx","40","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1402","P-236073","DURACELL","DURACELL BATTERY","Select Product ","7","15","xxxxx","13","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1403","P-02323","DUREACELL","RECHARGERABLE BATTERY","Select Product ","7","20","xxxxx","13","Cam Batteries","","","13","","0","0","");
INSERT INTO products VALUES("1404","P-742433","MODEM","3G/4G MODEM","Select Product ","35","50","xxxxx","34","Cam Batteries","","","15","","0","0","");
INSERT INTO products VALUES("1405","P-222032","SANDISK","SANDISK 16GB","Select Product ","18","20","xxxxx","72","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1406","P-63329","SANDISK","8GB","Select Product ","16","18","xxxxx","13","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1407","P-33342","DIGIRICH","2GB","Select Product ","13","15","xxxxx","7","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1409","P-202333","DIGIRICH ","4GB-DIGIRICH","Select Product ","14","15","xxxxx","6","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1410","P-75209322","protector ","glass","Select Product ","2","5","xxxxx","96","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1411","P-25597322","THREAD","THREAD","Select Product ","1","2","xxxxx","6","Phone Accessories","","","1","","0","0","");
INSERT INTO products VALUES("1412","P-254500","CANON","5OMM","Select Product ","490","550","xxxxx","3","Camera Accessories","","","60","","0","0","");
INSERT INTO products VALUES("1413","P-3333333","PS4 PAD ","PAD COLOR","Select Product ","190","250","xxxxx","7","Game Accessories","","","60","","0","0","");
INSERT INTO products VALUES("1414","P-0403030","XBOX ONE CD","XBOX FIFA 19 CD","Select Product ","190","350","xxxxx","2","Game Accessories","","","160","","0","0","");
INSERT INTO products VALUES("1415","P-242330","KIDS TAB","ITOUCH","Select Product ","120","180","xxxxx","2","Cam Batteries","","","60","","0","0","");
INSERT INTO products VALUES("1416","P-3232939","BOYA MIKE","BY-PVM1000L MIKE","Select Product ","300","350","xxxxx","1","Cam Batteries","","","50","","0","0","");
INSERT INTO products VALUES("1417","P-20039","CAR FAST CHARGER","ES-16 CHARGER","Select Product ","18","25","xxxxx","13","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1419","P-333703","XBOX 360","2PINS CONVERTER","Select Product ","15","20","xxxxx","20","Game Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1420","P-032023","XBOX 360","1PIN CONVERTER","Select Product ","15","30","xxxxx","20","Game Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1421","P-520360","KEYBOARD","WIRELESS KEYBOARD","Select Product ","30","40","xxxxx","6","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1422","P-30324","ASUS","ASUS-TAB-CHARGER","Select Product ","40","60","xxxxx","5","Laptop Accessories","","","20","","0","0","");
INSERT INTO products VALUES("1423","P-2023","ADAPTER","ADAPTER-24V","Select Product ","30","35","xxxxx","5","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1424","P-6333902","ADAPTER","SONY 12V","Select Product ","18","20","xxxxx","5","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1425","P-030369","ADAPTER","TOSHIBA 20V","Select Product ","18","20","xxxxx","25","Laptop Accessories","","","2","","0","0","");
INSERT INTO products VALUES("1426","P-0300023","ADAPTER","HP NEW TYPE","Select Product ","25","30","xxxxx","61","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1427","P-024732","PAD","FLAT LONG","Select Product ","38","45","xxxxx","114","Cam Batteries","","","","","0","0","");
INSERT INTO products VALUES("1428","P-333320","PAD","FLAT SHORT","Select Product ","22","32","xxxxx","732","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1429","P-223033","HOOD","HOOD 67MM","Select Product ","18","35","xxxxx","16","Cam Batteries","","","17","","0","0","");
INSERT INTO products VALUES("1430","P-3225223","HOOD","HOOD 62MM","Select Product ","15","30","xxxxx","22","Camera Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1431","P-0443273","HOOD","HOOD 77MM","Select Product ","15","40","xxxxx","1","Camera Accessories","","","25","","0","0","");
INSERT INTO products VALUES("1432","P-43238335","HOOD","HOOD 52MM","Select Product ","13","20","xxxxx","9","Camera Accessories","","","7","","0","0","");
INSERT INTO products VALUES("1433","P-7323743","HOOD","HOOD 55MM","Select Product ","12","25","xxxxx","1","Camera Accessories","","","13","","0","0","");
INSERT INTO products VALUES("1434","P-3322809","HOOD","HOOD 82MM","Select Product ","20","40","xxxxx","2","Camera Accessories","","","20","","0","0","");
INSERT INTO products VALUES("1435","P-28203","COVER","LENS COVER  52MM NIKON","Select Product ","5","10","xxxxx","12","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1436","P-0302522","COVER","LENS COVER 58MM NIKON","Select Product ","10","15","xxxxx","12","Camera Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1437","P-0008223","NIKON","LENS COVER 82MM","Select Product ","20","30","xxxxx","5","Camera Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1438","P-003333","NIKON","LENS COVER 55MM","Select Product ","10","15","xxxxx","1","Camera Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1439","P-99808202","NIKON","LENS COVER 67MM","Select Product ","20","35","xxxxx","0","Camera Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1440","P-22350354","NIKON","NIKON LENS 77MM","Select Product ","20","35","xxxxx","2","Camera Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1441","P-2302322","NIKON","LENS COVER 77MM","Select Product ","20","35","xxxxx","2","Camera Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1442","P-226320","CANON","LENS COVER 67MM","Select Product ","20","35","xxxxx","3","Camera Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1443","P-200803","CANON","LENS COVER 62MM","Select Product ","20","35","xxxxx","16","Camera Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1444","P-2280983","CANON","LENS COVER 58MM","Select Product ","9","15","xxxxx","5","Camera Accessories","","","6","","0","0","");
INSERT INTO products VALUES("1445","P-323263","FILTER","FILTER 77MM","Select Product ","20","30","xxxxx","3","Camera Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1446","P-63303","LENS FILTER","FILTER 52MM","Select Product ","15","20","xxxxx","10","Camera Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1447","P-46345","LENS FILTER","FILTER 82MM","Select Product ","15","25","xxxxx","5","Camera Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1448","P-52933303","XBOX 360","360-WIRELESS-USED-PAD","Select Product ","50","100","xxxxx","11","Game Accessories","","","50","","0","0","");
INSERT INTO products VALUES("1449","P-0302232","LENS FILTER","FILTER 55MM","Select Product ","10","15","xxxxx","11","Camera Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1450","P-5033082","LENS FILTER","FILTER 58MM","Select Product ","10","15","xxxxx","1","Camera Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1451","P-2323750","CANON","FILTER 67MM","Select Product ","15","20","xxxxx","0","Camera Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1452","P-232038","SAMSUNG","IA BP 85ST CHARGER","Select Product ","9","15","xxxxx","4","Cam Chargers","","","6","","0","0","");
INSERT INTO products VALUES("1453","P-2745","PS","PS2 CONSOLE COMPLETE","Select Product ","100","180","xxxxx","4","Cam Batteries","","","80","","0","0","");
INSERT INTO products VALUES("1454","P-3226324","SAMSUNG","GT1205Y","Select Product ","79","90","xxxxx","0","Phone","","","-653","","0","0","");
INSERT INTO products VALUES("1455","P-3342483","HOOD","HOOD 58MM","Select Product ","10","25","xxxxx","12","Cam Batteries","","","15","","0","0","");
INSERT INTO products VALUES("1456","P-02722029","XBOX 360 ","360 PAD NEW WIRE","Select Product ","35","45","xxxxx","62","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1457","P-9463","PS4 CONSOLE","PS4 SLIM 1TB","Select Product ","1500","1850","xxxxx","1","Game Accessories","","","350","","0","0","");
INSERT INTO products VALUES("1458","P-0622003","PS4 CONSOLE","PS4 PRO 1TB 4K","Select Product ","1700","2300","xxxxx","1","Cam Batteries","","","600","","0","0","");
INSERT INTO products VALUES("1459","P-3399083","ADAPTER","PSP ADAPTER","Select Product ","5","7","xxxxx","42","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1460","P-233022","LED LIGHT","LED 1800","Select Product ","150","300","xxxxx","4","Cam Batteries","","","150","","0","0","");
INSERT INTO products VALUES("1461","P-57030","NIKON","D5100","Select Product ","1300","2100","xxxxx","1","Camera Accessories","","","800","","0","0","");
INSERT INTO products VALUES("1462","P-9303803","NIKON","D5300","Select Product ","1800","2400","xxxxx","0","Camera Accessories","","","600","","0","0","");
INSERT INTO products VALUES("1463","P-32353207","LENOVOL","80T7 DUAL CORE 500GB LENOVOL","Select Product ","950","1400","xxxxx","1","Cam Batteries","","","450","","0","0","");
INSERT INTO products VALUES("1464","P-0302939","DELL","P80G CORE I3 128GB DELL","Select Product ","1000","1700","xxxxx","0","Cam Batteries","","","700","","0","0","");
INSERT INTO products VALUES("1465","P-0236360","DELL","P75F001 CORE I3 128GB DELL","Select Product ","1000","1700","xxxxx","0","Laptop","","","700","","0","0","");
INSERT INTO products VALUES("1466","P-03773936","LENOVOL","PFORIV80 DUAL CORE 1TB LENOVOL","Select Product ","1100","1500","xxxxx","0","Laptop","","","400","","0","0","");
INSERT INTO products VALUES("1467","P-29304","HP","5CD8022YG1 DUAL CORE 500GB HP","Select Product ","1100","1400","xxxxx","0","Cam Batteries","","","300","","0","0","");
INSERT INTO products VALUES("1468","P-3700000","HP","5CD8021YGY DUAL CORE 500GB HP","Select Product ","1100","1400","xxxxx","0","Cam Batteries","","","300","","0","0","");
INSERT INTO products VALUES("1469","P-43273030","IPHONE","2954 I5S 16GB","Select Product ","500","650","xxxxx","0","Phone","","","150","","0","0","");
INSERT INTO products VALUES("1470","P-933232","IPHONE","9139 I6 64GB","Select Product ","800","1300","xxxxx","0","Phone","","","500","","0","0","");
INSERT INTO products VALUES("1471","P-322222","IPHONE","7553 I6PLUS 64GB","Select Product ","1100","1800","xxxxx","0","Cam Batteries","","","700","","0","0","");
INSERT INTO products VALUES("1472","P-3206539","IPHONE","6537 I6PLUS 16GB","Select Product ","1200","1500","xxxxx","0","Phone","","","300","","0","0","");
INSERT INTO products VALUES("1473","P-022233","IPHONE","2397 I6S 16S 16GB","Select Product ","1000","1300","xxxxx","1","Phone","","","300","","0","0","");
INSERT INTO products VALUES("1474","P-33202329","IPHONE","3780 I6S 64GB","Select Product ","1200","1600","xxxxx","0","Phone","","","400","","0","0","");
INSERT INTO products VALUES("1475","P-34220332","IPHONE","6752 I5S 16GB","Select Product ","500","650","xxxxx","0","Phone","","","150","","0","0","");
INSERT INTO products VALUES("1476","P-0202322","SAMSUNG ","J4","Select Product ","630","700","xxxxx","2","Cam Batteries","","","100","","0","0","");
INSERT INTO products VALUES("1477","P-03305","TECNO","POUVOIR 2","Select Product ","550","590","xxxxx","0","Cam Batteries","","","40","","0","0","");
INSERT INTO products VALUES("1479","P-2373033","XTIGI ","V11","Select Product ","320","350","xxxxx","1","Phone","","","30","","0","0","");
INSERT INTO products VALUES("1480","P-22032238","TECNO   ","F1","Select Product ","260","280","xxxxx","5","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("1481","P-7223260","PS2","PS2 ADAPTER USED","Select Product ","18","30","xxxxx","6","Game Accessories","","","7","","0","0","");
INSERT INTO products VALUES("1482","P-43332239","GLASS","3D PROTECTOR","Select Product ","10","15","xxxxx","51","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1483","P-3400438","GLASS","TAB PROTECTOR","Select Product ","5","10","xxxxx","2","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1484","P-236022","GLASS","3D 3D PROTECTOR","Select Product ","10","20","xxxxx","6","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1485","P-3390353","SAMSUNG","J5 HANDSFREE","Select Product ","10","15","xxxxx","7","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1486","P-330204","BLUTOOTH","BT01 JABRA","Select Product ","15","25","xxxxx","2","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1487","P-423930","CAMERA","C CAMERA","Select Product ","250","400","xxxxx","2","Camera Accessories","","","150","","0","0","");
INSERT INTO products VALUES("1488","P-3739202","CAMERA","I4 CAMERA","Select Product ","150","250","xxxxx","5","Camera Accessories","","","100","","0","0","");
INSERT INTO products VALUES("1489","P-092828","CAMERA","I2 CAMERA","Select Product ","100","150","xxxxx","3","Camera Accessories","","","50","","0","0","");
INSERT INTO products VALUES("1490","P-3383000","CAMERA","I1 CAMERA","Select Product ","50","100","xxxxx","3","Camera Accessories","","","50","","0","0","");
INSERT INTO products VALUES("1491","P-2020222","CAMERA","CANON CAMERA","Select Product ","500","650","xxxxx","1","Camera Accessories","","","150","","0","0","");
INSERT INTO products VALUES("1492","P-20230302","SPEAKER","S4 SPEAKER","Select Product ","10","15","xxxxx","5","Laptop Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1493","P-06022","BLUTOOTH","l4 JABRA","Select Product ","13","30","xxxxx","1","Laptop Accessories","","","17","","0","0","");
INSERT INTO products VALUES("1494","P-8233477","HANDSFREE","UFO HANDSFREE","Select Product ","5","6","xxxxx","12","Cam Batteries","","","1","","0","0","");
INSERT INTO products VALUES("1495","P-53300253","TECNO","WX3 P","Select Product ","325","350","xxxxx","0","Cam Batteries","","","25","","0","0","");
INSERT INTO products VALUES("1496","P-2309263","HANDSFREE","EP 20","Select Product ","4","6","xxxxx","10","Phone Accessories","","","2","","0","0","");
INSERT INTO products VALUES("1497","P-232343","NOKIA","NOKIA 7PLUS","Select Product ","1650","1750","xxxxx","1","Phone","","","100","","0","0","");
INSERT INTO products VALUES("1498","P-323032","NOKIA","NOKIA 3.1","Select Product ","595","670","xxxxx","1","Phone","","","75","","0","0","");
INSERT INTO products VALUES("1499","P-2423720","NOKIA","NOKIA 6.1","Select Product ","950","1100","xxxxx","1","Phone","","","150","","0","0","");
INSERT INTO products VALUES("1500","P-252232","CHARGER","IPHONE X CHARGER","Select Product ","25","30","xxxxx","7","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1501","P-363023","SPEAKER","C3","Select Product ","20","40","xxxxx","0","Laptop Accessories","","","20","","0","0","");
INSERT INTO products VALUES("1502","P-33003393","SPEAKER ","M030","Select Product ","15","30","xxxxx","5","Laptop Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1503","P-022903","SPEAKER","A11/12","Select Product ","13","30","xxxxx","1","Laptop Accessories","","","17","","0","0","");
INSERT INTO products VALUES("1504","P-2300023","SPEAKER","K100","Select Product ","15","25","xxxxx","1","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1505","P-2300232","SPEAKER","V03","Select Product ","15","25","xxxxx","4","Laptop Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1506","P-6023233","SPEAKER","WS-637","Select Product ","15","35","xxxxx","0","Laptop Accessories","","","20","","0","0","");
INSERT INTO products VALUES("1507","P-39322","SPEAKER ","MUSIC F","Select Product ","20","30","xxxxx","6","Laptop Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1508","P-0230330","HANDSFREE","EP 10","Select Product ","4","6","xxxxx","9","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1509","P-02254232","HANDSFREE","HANDSFREE 6","Select Product ","3","6","xxxxx","0","Phone Accessories","","","3","","0","0","");
INSERT INTO products VALUES("1510","P-238232","JABRA","LI JABRA","Select Product ","15","30","xxxxx","3","Phone Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1511","P-39234030","BLUTOOTH","L5 JABRA","Select Product ","15","25","xxxxx","1","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1512","P-222003","HDMI","HDMI 20 MM","Select Product ","50","90","xxxxx","4","Cam Batteries","","","40","","0","0","");
INSERT INTO products VALUES("1513","P-207293","protector","X PROTECTOR","Select Product ","15","20","xxxxx","12","Phone Accessories","","","5","","0","0","");
INSERT INTO products VALUES("1514","P-32323320","HEADSET","T203","Select Product ","13","20","xxxxx","9","Phone Accessories","","","7","","0","0","");
INSERT INTO products VALUES("1515","P-7252203","VGA","VGA-VGA CABLE","Select Product ","2.50","4","xxxxx","14","Cam Batteries","","","1.5","","0","0","");
INSERT INTO products VALUES("1516","P-2332009","SANDISK","ULTRA FLAIR 32GB","Select Product ","30","45","xxxxx","0","Phone Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1517","P-383260","TWINMOS","SD 4GB","Select Product ","13","27","xxxxx","7","Cam Batteries","","","14","","0","0","");
INSERT INTO products VALUES("1518","P-3204236","GENX ","4GB","Select Product ","13","15","xxxxx","42","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1519","P-70223233","GENX","2GB","Select Product ","12","14","xxxxx","15","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1520","P-385322","TOSHIBA","1TB","Select Product ","190","250","xxxxx","3","Cam Batteries","","","60","","0","0","");
INSERT INTO products VALUES("1521","P-99040530","SEAGATE","1TB","Select Product ","190","250","xxxxx","3","Cam Batteries","","","60","","0","0","");
INSERT INTO products VALUES("1522","P-3828532","ITEL","S12","Select Product ","352","360","xxxxx","2","Phone","","","8","","0","0","");
INSERT INTO products VALUES("1523","P-2033673","OLYMPUS","LI 42B BATTERY","Select Product ","18","25","xxxxx","5","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1524","P-202733","SONY","NP BKI CHARGER","Select Product ","9","15","xxxxx","3","Cam Chargers","","","6","","0","0","");
INSERT INTO products VALUES("1525","P-360870","TECNO","CAMON X 32GB","Select Product ","745","790","xxxxx","1","Phone","","","45","","0","0","");
INSERT INTO products VALUES("1526","P-3262200","SAMSUNG","A6+","Select Product ","1320","1500","xxxxx","0","Cam Batteries","","","65","","0","0","");
INSERT INTO products VALUES("1527","P-03082890","SAMSUNG ","J8","Select Product ","1150","1300","xxxxx","1","Cam Batteries","","","150","","0","0","");
INSERT INTO products VALUES("1529","P-5020","KODAK","7001 CHARGER","Select Product ","9","15","xxxxx","11","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("1530","P-080353","JVC","BN-VF808 CHARGER","Select Product ","9","15","xxxxx","19","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("1531","P-3200042","SONY","SONY MP3","Select Product ","10","15","xxxxx","31","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1532","P-403002","PSP ","PSP GEAR","Select Product ","3","5","xxxxx","273","Game Accessories","","","2","","0","0","");
INSERT INTO products VALUES("1533","P-23843334","PS4 CD","CALL OF DUTY(BLACK OPS)","Select Product ","200","350","xxxxx","1","Game Accessories","","","150","","0","0","");
INSERT INTO products VALUES("1534","P-33830020","NIKON","EN-EL5 BATTERY","Select Product ","15","25","xxxxx","6","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1535","P-303243","HEADSET","WL 908MV","Select Product ","10","20","xxxxx","23","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1536","P-8233362","BAG","CAMERA BAG","Select Product ","30","50","xxxxx","6","Camera Accessories","","","20","","0","0","");
INSERT INTO products VALUES("1537","P-00272033","ISMART","IS 944 SPEAKER","Select Product ","200","250","xxxxx","7","Cam Batteries","","","50","","0","0","");
INSERT INTO products VALUES("1538","P-5300722","NIKON","EN-EL20 CHARGER","Select Product ","9","15","xxxxx","1","Cam Chargers","","","6","","0","0","");
INSERT INTO products VALUES("1539","P-2385002","ITEL ","2160","Select Product ","35","50","xxxxx","3","Cam Batteries","","","15","","0","0","");
INSERT INTO products VALUES("1540","P-23803","AC","AC CORD","Select Product ","1","3","xxxxx","47","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1541","P-30039","JVC","BN-V428","Select Product ","60","100","xxxxx","6","Cam Batteries","","","40","","0","0","");
INSERT INTO products VALUES("1542","P-2228060","JVC ","BN-V408 ","Select Product ","9","15","xxxxx","14","Cam Chargers","","","6","","0","0","");
INSERT INTO products VALUES("1543","P-32230239","PS3","PS3 WITH GAMES(BLACK)","Select Product ","500","600","xxxxx","4","Cam Batteries","","","100","","0","0","");
INSERT INTO products VALUES("1544","P-90323","PS3","PS3 WITH GAMES(WHITE)","Select Product ","550","850","xxxxx","1","Game Accessories","","","300","","0","0","");
INSERT INTO products VALUES("1545","P-50030","SONY","NP-BD1 BATTERY","Select Product ","19","25","xxxxx","1","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("1546","P-872207","IPHONE","2732 I5S 16GB","Select Product ","450","650","xxxxx","0","Phone","","","150","","0","0","");
INSERT INTO products VALUES("1547","P-20032","SONY","NP-F960 CHARGER","Select Product ","9","15","xxxxx","10","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("1548","P-020242","SAMSUNG","BP-105R CHARGER","Select Product ","9","15","xxxxx","1","Cam Chargers","","","6","","0","0","");
INSERT INTO products VALUES("1549","P-37320223","DSI-CHARGER","DSI-CHARGER","Select Product ","10","15","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1550","P-280330","XTIGI","S37","Select Product ","75","85","xxxxx","0","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1551","P-6302","XTIGI","SQ/S18","Select Product ","75","85","xxxxx","0","Phone","","","10","","0","0","");
INSERT INTO products VALUES("1552","P-93303","SONY","NP-FH100 BATTERY","Select Product ","50","70","xxxxx","19","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("1553","P-28330239","JVC","VG 107U CHARGER","Select Product ","9","15","xxxxx","6","Cam Chargers","","","6","","0","0","");
INSERT INTO products VALUES("1554","P-5230300","IPHONE","5961 16GB I5S","Select Product ","500","650","xxxxx","0","Cam Batteries","","","150","","0","0","");
INSERT INTO products VALUES("1555","P-0232226","TRANSCEND","2TB","Select Product ","230","400","xxxxx","4","Cam Batteries","","","45","","0","0","");
INSERT INTO products VALUES("1556","P-2233223","PS4 CD","RED DEAD REDEMPTION II","Select Product ","200","350","xxxxx","3","Cam Batteries","","","150","","0","0","");
INSERT INTO products VALUES("1557","P-32373","BOYA MIKE","BY M1","Select Product ","60","120","xxxxx","3","Camera Accessories","","","60","","0","0","");
INSERT INTO products VALUES("1558","P-22240","SONY","ICD-PX370","Select Product ","200","300","xxxxx","3","Camera Accessories","","","100","","0","0","");
INSERT INTO products VALUES("1559","P-032225","GENX","8GB","Select Product ","15","17","xxxxx","70","Cam Batteries","","","4","","0","0","");
INSERT INTO products VALUES("1560","P-33000","CORD","RICE COOKER ","Select Product ","2","4","xxxxx","16","Laptop Accessories","","","2","","0","0","");
INSERT INTO products VALUES("1561","P-222203","HUAWEI  ","NOVA 3E","Select Product ","1150","1400","xxxxx","1","Phone","","","250","","0","0","");
INSERT INTO products VALUES("1562","P-0323428","NYORK","NYORK EARPOD","Select Product ","60","100","xxxxx","3","Phone Accessories","","","40","","0","0","");
INSERT INTO products VALUES("1563","P-302306","SAMSUNG","J4 PLUS","Select Product ","740","850","xxxxx","0","Cam Batteries","","","110","","0","0","");
INSERT INTO products VALUES("1564","P-23232","SAMSUNG","J6 PLUS","Select Product ","950","1100","xxxxx","1","Phone","","","150","","0","0","");
INSERT INTO products VALUES("1565","P-3362242","SAMSUNG","J2 CORE","Select Product ","460","480","xxxxx","2","Cam Batteries","","","40","","0","0","");
INSERT INTO products VALUES("1566","P-033303","SAMSUNG","A7 PLUS","Select Product ","1750","1700","xxxxx","0","Cam Batteries","","","150","","0","0","");
INSERT INTO products VALUES("1567","P-24740322","SAMSUNG ","GT 1207Y","Select Product ","80","95","xxxxx","0","Cam Batteries","","","15","","0","0","");
INSERT INTO products VALUES("1568","P-35323","FUJIFILM","FNP 60 BATTERY","Select Product ","19","25","xxxxx","5","Cam Batteries","","","6","","0","0","");
INSERT INTO products VALUES("1569","P-92090805","TECNO","CAMON CM","Select Product ","530","590","xxxxx","0","Phone","","","60","","0","0","");
INSERT INTO products VALUES("1570","P-43902332","HUAWEI","Y5 PRIME 2018","Select Product ","508","560","xxxxx","3","Phone","","","52","","0","0","");
INSERT INTO products VALUES("1571","P-793","SAMSUNG","POWER BANK  25000MAH","Select Product ","70","90","xxxxx","2","Phone Accessories","","","20","","0","0","");
INSERT INTO products VALUES("1572","P-2332003","SAMSUNG","POWER BANK 45000MAH","Select Product ","95","110","xxxxx","2","Phone Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1573","P-520407","SAMSUNG","POWER BANK 10000MAH","Select Product ","50","60","xxxxx","3","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1574","P-9335323","POWER BANK","P1 POWER BANK","Select Product ","80","100","xxxxx","1","Phone Accessories","","","20","","0","0","");
INSERT INTO products VALUES("1575","P-06233338","NYORK","NY106BT","Select Product ","45","55","xxxxx","4","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1576","P-4222258","NYORK","NY108BT","Select Product ","45","55","xxxxx","3","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1577","P-327204","BOYA","BY-VM190","Select Product ","250","350","xxxxx","1","Camera Accessories","","","100","","0","0","");
INSERT INTO products VALUES("1578","P-28542233","TWINMOS","CF 8GB","Select Product ","35","50","xxxxx","3","Camera Accessories","","","15","","0","0","");
INSERT INTO products VALUES("1579","P-204709","HP","2CDB HP CORE I3 1TB LAPTOP","Select Product ","1850","2100","xxxxx","1","Laptop","","","250","","0","0","");
INSERT INTO products VALUES("1580","P-4284","IPHONE","1751 I6 16GB","Select Product ","850","1000","xxxxx","0","Phone","","","150","","0","0","");
INSERT INTO products VALUES("1581","P-20020","CANON","400D CAMERA","Select Product ","500","750","xxxxx","1","Camera Accessories","","","250","","0","0","");
INSERT INTO products VALUES("1582","P-336334","JABRA","CLEAR BT","Select Product ","35","45","xxxxx","2","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1583","P-2207802","JBL BT","JD 19 BT","Select Product ","45","55","xxxxx","3","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1584","P-06332","HUAWEI","Y9 2019","Select Product ","965","1100","xxxxx","0","Cam Batteries","","","135","","0","0","");
INSERT INTO products VALUES("1585","P-323623","ps4","PS4 CONVERTER","Select Product ","80","120","xxxxx","33","Game Accessories","","","40","","0","0","");
INSERT INTO products VALUES("1586","P-23002403","IPHONE","6176 5S 16GB","Select Product ","450","650","xxxxx","0","Phone","","","200","","0","0","");
INSERT INTO products VALUES("1587","P-333027","PS2","PS2 MEMORY","Select Product ","8","10","xxxxx","1","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1588","P-0200000","TECNO","TECNO CHARGER","Select Product ","20","25","xxxxx","33","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1589","P-203220","SAMSUNG","BP-105R BATTERY","Select Product ","35","45","xxxxx","5","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1590","P-02273203","SONY","NP-F970 BATTERY","Select Product ","85","100","xxxxx","17","Cam Batteries","","","15","","0","0","");
INSERT INTO products VALUES("1591","P-37823500","V3 CABLE","V3 CABLE","Select Product ","8","10","xxxxx","93","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1592","P-362630","XBOX 360","360 CHARGE CABLE","Select Product ","9","15","xxxxx","0","Game Accessories","","","6","","0","0","");
INSERT INTO products VALUES("1593","P-23027783","G-TAB","Q7 CAR CHARGER","Select Product ","20","30","xxxxx","1","Phone Accessories","","","10","","0","0","");
INSERT INTO products VALUES("1595","P-826423","JVC","VF-707 CHARGER","Select Product ","9","15","xxxxx","3","Cam Chargers","","","6","","0","0","");
INSERT INTO products VALUES("1596","P-22333","PSP","PSP BATTERY USED","Select Product ","13","25","xxxxx","6","Game Accessories","","","12","","0","0","");
INSERT INTO products VALUES("1597","P-3330327","CANON","BP-808-CHARGER","Select Product ","9","15","xxxxx","9","Cam Chargers","","","6","","0","0","");
INSERT INTO products VALUES("1599","P-320233","NIKON","50MM 1,8G","Select Product ","900","1100","xxxxx","0","Cam Batteries","","","200","","0","0","");
INSERT INTO products VALUES("1600","P-00003","DIGIRICH","16GB","Select Product ","18","20","xxxxx","5","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1601","P-3433299","PS","TOMRAIDER-SWORD","Select Product ","250","300","xxxxx","2","Cam Batteries","","","50","","0","0","");
INSERT INTO products VALUES("1602","P-3433299","PS","TOMRAIDER-SWORD","Select Product ","250","300","xxxxx","2","Cam Batteries","","","50","","0","0","");
INSERT INTO products VALUES("1603","P-538222","IPHONE","used-handfree","Select Product ","18","25","xxxxx","20","Cam Batteries","","","7","","0","0","");
INSERT INTO products VALUES("1604","P-2334332","DELL","2118-I3-4GB-128SSD","Select Product ","1500","1700","xxxxx","0","Cam Batteries","","","200","","0","0","");
INSERT INTO products VALUES("1605","P-4332233","SQ ","SQ1000","Select Product ","105","120","xxxxx","5","Cam Batteries","","","15","","0","0","");
INSERT INTO products VALUES("1606","P-2903255","NIKON","EN-EL3-BATTERY","Select Product ","40","50","xxxxx","0","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1607","P-6043028","HP","HP-BIG-PIN 18\'5","Select Product ","17","20","xxxxx","37","Cam Batteries","","","3","","0","0","");
INSERT INTO products VALUES("1608","P-29022020","CANON","NB10L-CHARGER","Select Product ","10","15","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1609","P-2323037","CANON","NB7L-CHARGER","Select Product ","10","15","xxxxx","6","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1610","P-0404632","CANON","lp-e6-battery","Select Product ","50","60","xxxxx","4","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1611","P-3250303","SONY","np-f970-charger","Select Product ","10","15","xxxxx","18","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1612","P-53240","TECNO","T350","Select Product ","58","70","xxxxx","3","Cam Batteries","","","12","","0","0","");
INSERT INTO products VALUES("1613","P-33202303","HP","02WM-E2-4GB-500G","Select Product ","1500","1700","xxxxx","1","Cam Batteries","","","200","","0","0","");
INSERT INTO products VALUES("1614","P-33202303","HP","02WM-E2-4GB-500G","Select Product ","1500","1700","xxxxx","1","Cam Batteries","","","200","","0","0","");
INSERT INTO products VALUES("1615","P-23332002","CANON","NB2L24","Select Product ","90","100","xxxxx","0","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1616","P-4632733","ITEL","2171","Select Product ","37","45","xxxxx","4","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1617","P-73502230","ITEL ","2190","Select Product ","42","50","xxxxx","4","Cam Batteries","","","8","","0","0","");
INSERT INTO products VALUES("1618","P-23803","CANON","NB-7L-CHARGER","Select Product ","10","15","xxxxx","5","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1619","P-326032","SAMSUNG","SBL110-BATTERY","Select Product ","30","40","xxxxx","1","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1620","P-2333023","AC","AC-CORD","Select Product ","2","3","xxxxx","96","Cam Batteries","","","1","","0","0","");
INSERT INTO products VALUES("1621","P-0202283","olupus","li-50-battery","Select Product ","20","25","xxxxx","4","Cam Batteries","","","5","","0","0","");
INSERT INTO products VALUES("1622","P-20320920","NIKON","D3300","Select Product ","1500","1800","xxxxx","0","Cam Batteries","","","300","","0","0","");
INSERT INTO products VALUES("1623","P-20320920","NIKON","D3300","Select Product ","1500","1800","xxxxx","0","Cam Batteries","","","300","","0","0","");
INSERT INTO products VALUES("1624","P-233202","NIKON","55-200MM","Select Product ","800","1000","xxxxx","1","Cam Batteries","","","200","","0","0","");
INSERT INTO products VALUES("1625","P-233202","NIKON","55-200MM","Select Product ","800","1000","xxxxx","1","Cam Batteries","","","200","","0","0","");
INSERT INTO products VALUES("1626","P-2263220","TECNO","CAMON-11","Select Product ","615","690","xxxxx","0","Cam Batteries","","","75","","0","0","");
INSERT INTO products VALUES("1627","P-233044","kingston","16GB","Select Product ","21","25","xxxxx","20","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1628","P-52023232","SEAGATE","500GB","Select Product ","200","220","xxxxx","3","Cam Batteries","","","20","","0","0","");
INSERT INTO products VALUES("1629","P-2323023","BB ","EARPINS","Select Product ","5","7","xxxxx","30","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1630","P-734328","IPHONE","7620-5S","Select Product ","550","650","xxxxx","0","Cam Batteries","","","100","","0","0","");
INSERT INTO products VALUES("1631","P-0020223","IPHONE","8776-5S-16GB","Select Product ","550","650","xxxxx","0","Cam Batteries","","","100","","0","0","");
INSERT INTO products VALUES("1632","P-0306222","cable","AUX-CABLE","Select Product ","3","5","xxxxx","49","Cam Batteries","","","2","","0","0","");
INSERT INTO products VALUES("1633","P-3330234","CANON","50MM-1.4","Select Product ","1200","1400","xxxxx","0","Cam Batteries","","","200","","0","0","");
INSERT INTO products VALUES("1634","P-33333","CANON","4000D","Select Product ","1200","1500","xxxxx","1","Cam Batteries","","","300","","0","0","");
INSERT INTO products VALUES("1635","P-60220320","INFINIX ","HOT6X","Select Product ","560","605","xxxxx","1","Cam Batteries","","","45","","0","0","");
INSERT INTO products VALUES("1636","P-03022","LONOVO","5036-DUAL-4GB-1TB","Select Product ","1300","1500","xxxxx","1","Cam Batteries","","","200","","0","0","");
INSERT INTO products VALUES("1637","P-2693209","HP","014N-E1-4GB-500GB","Select Product ","1300","1500","xxxxx","1","Cam Batteries","","","200","","0","0","");
INSERT INTO products VALUES("1638","P-32000232","SON","NP-FS11-BATTTERY","Select Product ","30","40","xxxxx","3","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1639","P-302302","SONY","SONY-24V","Select Product ","30","40","xxxxx","4","Cam Batteries","","","10","","0","0","");
INSERT INTO products VALUES("1640","PS"," PS2 WHITE NEW","PS2 WHITE NEW","","12","13","","100","","","","1","","100","0","");
INSERT INTO products VALUES("1641",""," SLB 07A BATTERY","SLB 07A BATTERY","","20","25","","3","","","","5","","4","0","");
INSERT INTO products VALUES("1642",""," FNP-120 BATTERY","FNP-120 BATTERY","","25","30","","4","","","","5","","4","0","");
INSERT INTO products VALUES("1643",""," NB-1L-BATTERY","NB-1L-BATTERY","","25","30","","1","","","","5","","1","0","");





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
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=latin1;

INSERT INTO sales VALUES("1","RS-223322","","12/06/2018","cash","0","","280","","","0");
INSERT INTO sales VALUES("2","RS-022587","","12/06/2018","cash","340","","350","","","0");
INSERT INTO sales VALUES("3","RS-022587","","12/06/2018","cash","340","","350","","","0");
INSERT INTO sales VALUES("4","RS-22232","","12/06/2018","cash","64","10","70","","","0");
INSERT INTO sales VALUES("5","RS-30333","","12/06/2018","cash","115","24","115","","","0");
INSERT INTO sales VALUES("6","RS-0335956","","12/06/2018","cash","92","18","100","","","0");
INSERT INTO sales VALUES("7","RS-63332","","12/06/2018","cash","150","30","150","","","0");
INSERT INTO sales VALUES("8","","","12/06/2018","cash","97","19","100","","","0");
INSERT INTO sales VALUES("9","RS-3030333","","12/06/2018","cash","7","3","7","","","0");
INSERT INTO sales VALUES("10","RS-073332","","12/06/2018","cash","95","15","100","","","0");
INSERT INTO sales VALUES("11","RS-073332","","12/06/2018","cash","95","15","100","","","0");
INSERT INTO sales VALUES("12","RS-83332330","","12/06/2018","cash","290","50","290","","","0");
INSERT INTO sales VALUES("13","","","12/06/2018","cash","40","7","40","","","0");
INSERT INTO sales VALUES("14","RS-4022342","","12/06/2018","cash","95","15","100","","","0");
INSERT INTO sales VALUES("15","RS-36329","","12/06/2018","cash","15","2","20","","","0");
INSERT INTO sales VALUES("16","RS-32343","","12/06/2018","cash","60","","60","","","0");
INSERT INTO sales VALUES("17","RS-32343","","12/06/2018","cash","60","","60","","","0");
INSERT INTO sales VALUES("18","RS-332333","","12/06/2018","cash","350","","360","","","0");
INSERT INTO sales VALUES("19","RS-0233","","12/06/2018","cash","95","","100","","","0");
INSERT INTO sales VALUES("20","RS-8332033","","12/06/2018","cash","7","","20","","","0");
INSERT INTO sales VALUES("21","RS-02232","","12/06/2018","cash","36","","50","","","0");
INSERT INTO sales VALUES("22","RS-090200","","12/06/2018","cash","80","","80","","","0");
INSERT INTO sales VALUES("23","RS-50823627","","12/06/2018","cash","15","","20","","","0");
INSERT INTO sales VALUES("24","RS-26400","","12/06/2018","cash","70","","80","","","0");
INSERT INTO sales VALUES("25","RS-720332","","12/06/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("26","RS-93303","","12/06/2018","cash","30","","50","","","0");
INSERT INTO sales VALUES("27","RS-337280","","12/06/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("28","RS-320233","","12/06/2018","cash","100","","0","","","100");
INSERT INTO sales VALUES("29","RS-832202","","12/06/2018","cash","45","","50","","","0");
INSERT INTO sales VALUES("30","RS-393003","","12/06/2018","cash","35","","50","","","0");
INSERT INTO sales VALUES("31","RS-0229220","","12/06/2018","cash","75","","80","","","0");
INSERT INTO sales VALUES("32","RS-08022323","","12/06/2018","cash","35","","35","","","0");
INSERT INTO sales VALUES("33","RS-2233053","","12/06/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("34","RS-2323800","","12/06/2018","cash","578","","0","","","578");
INSERT INTO sales VALUES("35","RS-0000223","","12/06/2018","cash","690","","690","","","0");
INSERT INTO sales VALUES("36","RS-2902300","","12/06/2018","cash","18","","18","","","0");
INSERT INTO sales VALUES("37","RS-67204822","","12/06/2018","cash","80","","80","","","0");
INSERT INTO sales VALUES("38","RS-9700002","","12/06/2018","cash","14","3","15","","","0");
INSERT INTO sales VALUES("39","RS-00306","","12/06/2018","cash","200","","200","","","0");
INSERT INTO sales VALUES("40","RS-00306","","12/06/2018","cash","200","","200","","","0");
INSERT INTO sales VALUES("41","RS-22303","","12/06/2018","cash","35","","40","","","0");
INSERT INTO sales VALUES("42","RS-32247303","","12/06/2018","cash","690","","690","","","0");
INSERT INTO sales VALUES("43","RS-32247303","","12/06/2018","cash","690","","690","","","0");
INSERT INTO sales VALUES("44","RS-73380200","","12/06/2018","cash","13","","13","","","0");
INSERT INTO sales VALUES("45","RS-9742303","","12/06/2018","cash","10","","10","","","0");
INSERT INTO sales VALUES("46","RS-3259393","","12/06/2018","cash","280","","280","","","0");
INSERT INTO sales VALUES("47","RS-002038","","12/06/2018","cash","270","","270","","","0");
INSERT INTO sales VALUES("48","RS-3302325","","12/06/2018","cash","5","","20","","","0");
INSERT INTO sales VALUES("49","RS-0503308","","12/06/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("50","RS-20023053","","12/06/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("51","RS-32000","","12/06/2018","cash","220","","220","","","0");
INSERT INTO sales VALUES("52","RS-32000","","12/06/2018","cash","220","","220","","","0");
INSERT INTO sales VALUES("53","RS-303003","","12/06/2018","cash","0","","690","","","0");
INSERT INTO sales VALUES("54","RS-73053","","12/06/2018","cash","690","","690","","","0");
INSERT INTO sales VALUES("55","RS-223023","","12/06/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("56","RS-96762228","","12/06/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("57","RS-365293","","12/06/2018","cash","30","","45","","","0");
INSERT INTO sales VALUES("58","RS-365293","","12/06/2018","cash","30","","45","","","0");
INSERT INTO sales VALUES("59","RS-22233228","","12/06/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("60","RS-22233228","","12/06/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("61","RS-2500232","","12/06/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("62","RS-2500232","","12/06/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("63","RS-303305","","12/06/2018","cash","95","","95","","","0");
INSERT INTO sales VALUES("64","RS-3227330","","12/06/2018","cash","22","","30","","","0");
INSERT INTO sales VALUES("65","RS-287233","","12/06/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("66","RS-034423","","12/06/2018","cash","600","","600","","","0");
INSERT INTO sales VALUES("67","RS-260632","","12/06/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("68","RS-2032023","","12/06/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("69","RS-29420370","","12/06/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("70","RS-3282323","","12/06/2018","cash","95","","95","","","0");
INSERT INTO sales VALUES("71","RS-3282323","","12/06/2018","cash","95","","95","","","0");
INSERT INTO sales VALUES("72","RS-602722","","12/06/2018","cash","54","","60","","","0");
INSERT INTO sales VALUES("73","RS-0392322","","12/06/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("74","RS-0422202","","12/06/2018","cash","18","","20","","","0");
INSERT INTO sales VALUES("75","RS-2722235","","12/06/2018","cash","15","","20","","","0");
INSERT INTO sales VALUES("76","RS-2722235","","12/06/2018","cash","15","","20","","","0");
INSERT INTO sales VALUES("77","RS-2262320","","12/06/2018","cash","35","","40","","","0");
INSERT INTO sales VALUES("78","RS-232263","","12/06/2018","cash","28","","50","","","0");
INSERT INTO sales VALUES("79","RS-0302238","","12/06/2018","cash","110","","110","","","0");
INSERT INTO sales VALUES("80","RS-248233","","12/06/2018","cash","80","","80","","","0");
INSERT INTO sales VALUES("81","RS-20354300","","12/06/2018","cash","280","","280","","","0");
INSERT INTO sales VALUES("82","RS-20354300","","12/06/2018","cash","280","","280","","","0");
INSERT INTO sales VALUES("83","RS-80002","","12/06/2018","cash","45","","45","","","0");
INSERT INTO sales VALUES("84","RS-27432602","","12/06/2018","cash","75","","75","","","0");
INSERT INTO sales VALUES("85","RS-27432602","","12/06/2018","cash","75","","75","","","0");
INSERT INTO sales VALUES("86","RS-34322337","","12/06/2018","cash","45","","50","","","0");
INSERT INTO sales VALUES("87","RS-23302","","12/06/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("88","RS-3326802","","12/06/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("89","RS-402257","","12/06/2018","cash","54","","54","","","0");
INSERT INTO sales VALUES("90","RS-27223","","12/06/2018","cash","22","","50","","","0");
INSERT INTO sales VALUES("91","RS-27223","","12/06/2018","cash","22","","50","","","0");
INSERT INTO sales VALUES("92","RS-023733","","12/06/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("93","RS-0060003","","12/06/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("94","RS-02232233","","12/06/2018","cash","10","","50","","","0");
INSERT INTO sales VALUES("95","RS-20002323","","12/06/2018","cash","95","","100","","","0");
INSERT INTO sales VALUES("96","RS-223338","","12/06/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("97","RS-200423","","12/06/2018","cash","97","","97","","","0");
INSERT INTO sales VALUES("98","RS-3232922","","12/06/2018","cash","7","","10","","","0");
INSERT INTO sales VALUES("99","RS-73202233","","12/06/2018","cash","0","","15","","","0");
INSERT INTO sales VALUES("100","RS-400333","","12/06/2018","cash","70","","70","","","0");
INSERT INTO sales VALUES("101","RS-332939","","12/06/2018","cash","70","","100","","","0");
INSERT INTO sales VALUES("102","RS-332939","","12/06/2018","cash","70","","100","","","0");
INSERT INTO sales VALUES("103","RS-057372","","12/06/2018","cash","10","","10","","","0");
INSERT INTO sales VALUES("104","RS-057372","","12/06/2018","cash","10","","10","","","0");
INSERT INTO sales VALUES("105","RS-935353","","12/06/2018","cash","33","","33","","","0");
INSERT INTO sales VALUES("106","RS-3836320","","12/06/2018","cash","135","","135","","","0");
INSERT INTO sales VALUES("107","RS-3039372","","12/06/2018","cash","25","","40","","","0");
INSERT INTO sales VALUES("108","RS-3995095","","12/06/2018","cash","30","","50","","","0");
INSERT INTO sales VALUES("109","RS-0230286","","12/06/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("110","RS-6033","","12/06/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("111","RS-333030","","12/06/2018","cash","70","","70","","","0");
INSERT INTO sales VALUES("112","RS-333030","","12/06/2018","cash","70","","70","","","0");
INSERT INTO sales VALUES("113","RS-30333322","","12/06/2018","cash","0","","50","","","0");
INSERT INTO sales VALUES("114","RS-233332","","12/06/2018","cash","7","","7","","","0");
INSERT INTO sales VALUES("115","RS-233332","","12/06/2018","cash","7","","7","","","0");
INSERT INTO sales VALUES("116","RS-35030209","","12/06/2018","cash","280","","280","","","0");
INSERT INTO sales VALUES("117","RS-35030209","","12/06/2018","cash","280","","280","","","0");
INSERT INTO sales VALUES("118","RS-206927","","12/06/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("119","RS-0230373","","12/06/2018","cash","80","","80","","","0");
INSERT INTO sales VALUES("120","RS-30330232","","12/06/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("121","RS-33862239","","12/06/2018","cash","5","","5","","","0");
INSERT INTO sales VALUES("122","RS-36032002","","12/06/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("123","RS-305683","","12/06/2018","cash","80","","80","","","0");
INSERT INTO sales VALUES("124","RS-305683","","12/06/2018","cash","80","","80","","","0");
INSERT INTO sales VALUES("125","RS-00022","","12/07/2018","cash","375","","375","","","0");
INSERT INTO sales VALUES("126","RS-096220","","12/07/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("128","RS-3042360","","12/07/2018","cash","15","","50","","","0");
INSERT INTO sales VALUES("129","RS-23353","","12/07/2018","cash","25","","50","","","0");
INSERT INTO sales VALUES("130","RS-3263237","","12/07/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("131","RS-090330","","12/07/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("133","RS-30322","","12/07/2018","cash","462","","462","","","0");
INSERT INTO sales VALUES("135","RS-9233325","","12/07/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("137","RS-0902323","","12/07/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("138","RS-0230302","","12/07/2018","cash","18","","18","","","0");
INSERT INTO sales VALUES("139","RS-3203032","","12/07/2018","cash","8","","10","","","0");
INSERT INTO sales VALUES("140","RS-7363332","","12/07/2018","cash","30","","40","","","0");
INSERT INTO sales VALUES("141","RS-08322032","","12/07/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("142","RS-090402","","12/07/2018","cash","15","3","15","","","0");
INSERT INTO sales VALUES("143","RS-2533292","","12/07/2018","cash","16","2","20","","","0");
INSERT INTO sales VALUES("144","RS-203022","","12/07/2018","cash","80","15","80","","","0");
INSERT INTO sales VALUES("145","RS-65230","","12/07/2018","cash","78","13","80","","","0");
INSERT INTO sales VALUES("147","RS-302029","","12/07/2018","cash","18","4","50","","","0");
INSERT INTO sales VALUES("148","RS-332673","","12/07/2018","cash","8","2","20","","","0");
INSERT INTO sales VALUES("149","RS-3233662","","12/07/2018","cash","10","2","10","","","0");
INSERT INTO sales VALUES("150","RS-6323200","","12/07/2018","cash","40","6","50","","","0");
INSERT INTO sales VALUES("151","RS-4207833","","12/07/2018","cash","170","20","170","","","0");
INSERT INTO sales VALUES("152","RS-43223993","","12/07/2018","cash","25","7","25","","","0");
INSERT INTO sales VALUES("153","RS-23209","","12/07/2018","cash","90","0","90","","","0");
INSERT INTO sales VALUES("154","RS-3660","","12/07/2018","cash","33","6","40","","","0");
INSERT INTO sales VALUES("155","RS-80353","","12/07/2018","cash","15","5","20","","","0");
INSERT INTO sales VALUES("156","RS-303353","","12/07/2018","cash","140","20","140","","","0");
INSERT INTO sales VALUES("157","RS-02022","","12/07/2018","cash","17","3","20","","","0");
INSERT INTO sales VALUES("158","RS-00320","","12/07/2018","cash","70","14","70","","","0");
INSERT INTO sales VALUES("159","RS-8322320","","12/07/2018","cash","15","3","20","","","0");
INSERT INTO sales VALUES("160","RS-83028333","","12/07/2018","cash","37","3","40","","","0");
INSERT INTO sales VALUES("161","RS-2952522","","12/07/2018","cash","18","4","20","","","0");
INSERT INTO sales VALUES("162","RS-93232520","","12/07/2018","cash","120","25","130","","","0");
INSERT INTO sales VALUES("163","RS-23505","","12/07/2018","cash","20","4","20","","","0");
INSERT INTO sales VALUES("164","RS-3334220","","12/07/2018","cash","40","10","40","","","0");
INSERT INTO sales VALUES("165","RS-843333","","12/07/2018","cash","80","15","80","","","0");
INSERT INTO sales VALUES("166","RS-203220","","12/07/2018","cash","34","8","35","","","0");
INSERT INTO sales VALUES("167","RS-3536","","12/07/2018","cash","25","3","40","","","0");
INSERT INTO sales VALUES("168","RS-32325632","","12/07/2018","cash","15","5","20","","","0");
INSERT INTO sales VALUES("169","RS-3327903","","12/07/2018","cash","50","8","50","","","0");
INSERT INTO sales VALUES("170","RS-3023392","","12/07/2018","cash","159","24","160","","","0");
INSERT INTO sales VALUES("171","RS-3259092","","12/07/2018","cash","165","25","165","","","0");
INSERT INTO sales VALUES("172","RS-0322360","","12/07/2018","cash","492","66","492","","","0");
INSERT INTO sales VALUES("173","RS-206223","","12/07/2018","cash","25","15","25","","","0");
INSERT INTO sales VALUES("174","RS-0239203","","12/07/2018","cash","20","5","20","","","0");
INSERT INTO sales VALUES("175","RS-220332","","12/07/2018","cash","85","13","85","","","0");
INSERT INTO sales VALUES("176","RS-36225203","","12/07/2018","cash","140","21","140","","","0");
INSERT INTO sales VALUES("177","RS-302209","","12/07/2018","cash","40","10","40","","","0");
INSERT INTO sales VALUES("178","RS-330933","","12/07/2018","cash","80","15","0","","","80");
INSERT INTO sales VALUES("179","RS-4023020","","12/07/2018","cash","280","32","280","","","0");
INSERT INTO sales VALUES("180","RS-0332722","","12/07/2018","cash","25","5","25","","","0");
INSERT INTO sales VALUES("181","RS-30286422","","12/07/2018","cash","100","17","100","","","0");
INSERT INTO sales VALUES("182","RS-2923932","","12/07/2018","cash","75","15","80","","","0");
INSERT INTO sales VALUES("183","RS-3343733","","12/07/2018","cash","30","4","30","","","0");
INSERT INTO sales VALUES("184","RS-29362023","","12/07/2018","cash","20","4","20","","","0");
INSERT INTO sales VALUES("185","RS-3033723","","12/07/2018","cash","14","2","20","","","0");
INSERT INTO sales VALUES("186","RS-3385253","","12/07/2018","cash","6","1","20","","","0");
INSERT INTO sales VALUES("187","RS-4242","","12/07/2018","cash","45","0","45","","","0");
INSERT INTO sales VALUES("188","RS-2220300","","12/07/2018","cash","80","14","80","","","0");
INSERT INTO sales VALUES("189","RS-73380200","","12/07/2018","cash","8","2","20","","","0");
INSERT INTO sales VALUES("190","RS-22302","","12/07/2018","cash","16","2","20","","","0");
INSERT INTO sales VALUES("191","RS-0903303","","12/07/2018","cash","30","6","30","","","0");
INSERT INTO sales VALUES("192","RS-232373","","12/07/2018","cash","45","8","50","","","0");
INSERT INTO sales VALUES("193","RS-2025230","","12/07/2018","cash","15","5","20","","","0");
INSERT INTO sales VALUES("194","RS-23222242","","12/07/2018","cash","15","2","20","","","0");
INSERT INTO sales VALUES("195","RS-02043","","12/07/2018","cash","20","4","20","","","0");
INSERT INTO sales VALUES("196","RS-25032","","12/07/2018","cash","34","5","50","","","0");
INSERT INTO sales VALUES("197","RS-0023303","","12/07/2018","cash","80","15","100","","","0");
INSERT INTO sales VALUES("198","RS-32237032","","12/07/2018","cash","30","5","30","","","0");
INSERT INTO sales VALUES("199","RS-3332423","","12/07/2018","cash","15","5","15","","","0");
INSERT INTO sales VALUES("200","RS-2330236","","12/07/2018","cash","125","14","125","","","0");
INSERT INTO sales VALUES("201","RS-030663","","12/07/2018","cash","50","10","60","","","0");
INSERT INTO sales VALUES("202","RS-3070622","","12/07/2018","cash","50","8","60","","","0");
INSERT INTO sales VALUES("203","RS-323023","","12/07/2018","cash","15","5","30","","","0");
INSERT INTO sales VALUES("204","RS-3230207","","12/07/2018","cash","34","10","34","","","0");
INSERT INTO sales VALUES("205","RS-0309842","","12/07/2018","cash","70","10","70","","","0");
INSERT INTO sales VALUES("206","RS-29226","","12/07/2018","cash","175","22","175","","","0");
INSERT INTO sales VALUES("207","RS-2488838","","12/07/2018","cash","59","13","59","","","0");
INSERT INTO sales VALUES("208","RS-74326023","","12/07/2018","cash","28","5","50","","","0");
INSERT INTO sales VALUES("209","RS-3220780","","12/07/2018","cash","18","4","20","","","0");
INSERT INTO sales VALUES("210","RS-30422","","12/07/2018","cash","344","72","344","","","0");
INSERT INTO sales VALUES("211","RS-2236903","","12/07/2018","cash","30","8","30","","","0");
INSERT INTO sales VALUES("212","RS-3033","","12/07/2018","cash","154","21","154","","","0");
INSERT INTO sales VALUES("213","RS-9622043","","12/07/2018","cash","35","10","50","","","0");
INSERT INTO sales VALUES("214","RS-20234083","","12/07/2018","cash","10","3","10","","","0");
INSERT INTO sales VALUES("215","RS-23823230","","12/07/2018","cash","48","8","50","","","0");
INSERT INTO sales VALUES("216","RS-827523","","12/07/2018","cash","18","4","20","","","0");
INSERT INTO sales VALUES("217","RS-2559","","12/07/2018","cash","15","2","20","","","0");
INSERT INTO sales VALUES("218","RS-022223","","12/07/2018","cash","25","5","25","","","0");
INSERT INTO sales VALUES("219","RS-23732","","12/07/2018","cash","600","100","600","","","0");
INSERT INTO sales VALUES("220","RS-093932","","12/07/2018","cash","60","10","60","","","0");
INSERT INTO sales VALUES("221","RS-029223","","12/07/2018","cash","40","10","50","","","0");
INSERT INTO sales VALUES("222","RS-3359563","","12/07/2018","cash","47","22","47","","","0");
INSERT INTO sales VALUES("223","RS-3320423","","12/07/2018","cash","125","25","130","","","0");
INSERT INTO sales VALUES("224","RS-2932280","","12/07/2018","cash","10","2","20","","","0");
INSERT INTO sales VALUES("226","RS-24362","","12/07/2018","cash","10","1","20","","","0");
INSERT INTO sales VALUES("227","RS-30002222","","12/07/2018","cash","18","4","20","","","0");
INSERT INTO sales VALUES("228","RS-35030209","","12/07/2018","cash","20","5","20","","","0");
INSERT INTO sales VALUES("229","RS-22025230","","12/07/2018","cash","10","4","10","","","0");
INSERT INTO sales VALUES("230","RS-2380030","","12/07/2018","cash","3","1","5","","","0");
INSERT INTO sales VALUES("231","RS-333008","","12/07/2018","cash","15","5","50","","","0");
INSERT INTO sales VALUES("232","RS-2033755","","12/07/2018","cash","30","7","30","","","0");
INSERT INTO sales VALUES("233","RS-5322233","","12/07/2018","cash","300","40","300","","","0");
INSERT INTO sales VALUES("234","RS-23333338","","12/07/2018","cash","58","11","58","","","0");
INSERT INTO sales VALUES("235","RS-20230302","","12/07/2018","cash","166","34","166","","","0");
INSERT INTO sales VALUES("236","RS-3230222","","12/07/2018","cash","10","5","20","","","0");
INSERT INTO sales VALUES("237","RS-3392","","12/07/2018","cash","25","4","50","","","0");
INSERT INTO sales VALUES("238","RS-23092323","","12/07/2018","cash","50","10","50","","","0");
INSERT INTO sales VALUES("239","RS-2024232","","12/07/2018","cash","20","3","20","","","0");
INSERT INTO sales VALUES("240","RS-0438232","","12/07/2018","cash","12","2","20","","","0");
INSERT INTO sales VALUES("241","RS-2252250","","12/07/2018","cash","80","13","80","","","0");
INSERT INTO sales VALUES("242","RS-324303","","12/07/2018","cash","20","3","20","","","0");
INSERT INTO sales VALUES("243","RS-322363","","12/07/2018","cash","20","3","20","","","0");
INSERT INTO sales VALUES("244","RS-360923","","12/07/2018","cash","111","","111","","","0");
INSERT INTO sales VALUES("245","RS-3609245","","12/07/2018","cash","120","","120","","","0");
INSERT INTO sales VALUES("254","RS-62232032","","12/07/2018","cash","50","","151","","","0");
INSERT INTO sales VALUES("255","RS-330220","","12/07/2018","cash","515","","515","","","0");
INSERT INTO sales VALUES("256","RS-2252","","12/07/2018","cash","216","","216","","","0");
INSERT INTO sales VALUES("257","RS-33230","","12/08/2018","cash","34","","40","","","0");
INSERT INTO sales VALUES("258","RS-20330","","12/08/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("259","RS-3934823","","12/08/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("260","RS-00330","","12/08/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("261","RS-3333","","12/08/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("262","RS-333022","","12/08/2018","cash","25","","50","","","0");
INSERT INTO sales VALUES("263","RS-0225438","","12/08/2018","cash","56","11","60","","","0");
INSERT INTO sales VALUES("264","RS-733032","","12/08/2018","cash","38","","50","","","0");
INSERT INTO sales VALUES("265","RS-3820230","","12/08/2018","cash","580","","580","","","0");
INSERT INTO sales VALUES("266","RS-27033508","","12/08/2018","cash","17","","20","","","0");
INSERT INTO sales VALUES("267","RS-07542","","12/08/2018","cash","18","","50","","","0");
INSERT INTO sales VALUES("268","RS-020224","","12/08/2018","cash","154","","154","","","0");
INSERT INTO sales VALUES("269","RS-0900042","","12/08/2018","cash","80","","80","","","0");
INSERT INTO sales VALUES("270","RS-020032","","12/08/2018","cash","529","","529","","","0");
INSERT INTO sales VALUES("271","RS-328352","","12/08/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("272","RS-2323326","","12/08/2018","cash","8","","8","","","0");
INSERT INTO sales VALUES("273","RS-23043","","12/08/2018","cash","220","","220","","","0");
INSERT INTO sales VALUES("274","RS-03060230","","12/08/2018","cash","10","","10","","","0");
INSERT INTO sales VALUES("275","RS-202302","","12/08/2018","cash","28","","28","","","0");
INSERT INTO sales VALUES("276","RS-527223","","12/08/2018","cash","18","","20","","","0");
INSERT INTO sales VALUES("277","RS-3253333","","12/08/2018","cash","338","","340","","","0");
INSERT INTO sales VALUES("278","RS-03370253","","12/08/2018","cash","25","","30","","","0");
INSERT INTO sales VALUES("279","RS-83360362","","12/08/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("280","RS-623263","","12/08/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("281","RS-2352000","","12/08/2018","cash","190","","190","","","0");
INSERT INTO sales VALUES("282","RS-220322","","12/08/2018","cash","82","","85","","","0");
INSERT INTO sales VALUES("283","RS-22683922","","12/08/2018","cash","15","","20","","","0");
INSERT INTO sales VALUES("284","RS-222232","","12/08/2018","cash","18","","20","","","0");
INSERT INTO sales VALUES("285","RS-37432","","12/08/2018","cash","280","","280","","","0");
INSERT INTO sales VALUES("286","RS-236633","","12/08/2018","cash","95","","100","","","0");
INSERT INTO sales VALUES("287","RS-30956037","","12/08/2018","cash","45","","45","","","0");
INSERT INTO sales VALUES("288","RS-8232853","","12/08/2018","cash","140","","140","","","0");
INSERT INTO sales VALUES("289","RS-222","","12/08/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("290","RS-520028","","12/08/2018","cash","80","","80","","","0");
INSERT INTO sales VALUES("291","RS-2337","","12/08/2018","cash","590","","590","","","0");
INSERT INTO sales VALUES("292","RS-2293300","","12/08/2018","cash","129","","129","","","0");
INSERT INTO sales VALUES("293","RS-232083","","12/08/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("294","RS-233332","","12/08/2018","cash","215","","220","","","0");
INSERT INTO sales VALUES("295","RS-2337233","","12/08/2018","cash","300","","300","","","0");
INSERT INTO sales VALUES("296","RS-3237235","","12/08/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("297","RS-283023","","12/08/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("298","RS-7265322","","12/08/2018","cash","45","","45","","","0");
INSERT INTO sales VALUES("299","RS-0742333","","12/08/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("300","RS-32332387","","12/08/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("301","RS-65232203","","12/08/2018","cash","33","","33","","","0");
INSERT INTO sales VALUES("302","RS-70220408","","12/08/2018","cash","35","","35","","","0");
INSERT INTO sales VALUES("303","RS-22252","","12/08/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("304","RS-323333","","12/08/2018","cash","70","","70","","","0");
INSERT INTO sales VALUES("305","RS-373332","","12/08/2018","cash","380","","380","","","0");
INSERT INTO sales VALUES("306","RS-2322230","","12/08/2018","cash","105","","105","","","0");
INSERT INTO sales VALUES("307","RS-3230202","","12/08/2018","cash","14","","50","","","0");
INSERT INTO sales VALUES("308","RS-220202","","12/08/2018","cash","60","","60","","","0");
INSERT INTO sales VALUES("309","RS-3332222","","12/08/2018","cash","105","","105","","","0");
INSERT INTO sales VALUES("310","RS-0223553","","12/08/2018","cash","18","","20","","","0");
INSERT INTO sales VALUES("311","RS-023302","","12/08/2018","cash","180","","200","","","0");
INSERT INTO sales VALUES("312","RS-2203502","","12/08/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("313","RS-3853","","12/08/2018","cash","1450","","1450","","","0");
INSERT INTO sales VALUES("314","RS-39207350","","12/08/2018","cash","233","","233","","","0");
INSERT INTO sales VALUES("315","RS-2203353","","12/08/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("316","RS-2333202","","12/08/2018","cash","220","","220","","","0");
INSERT INTO sales VALUES("317","RS-2872332","","12/08/2018","cash","25","","50","","","0");
INSERT INTO sales VALUES("318","RS-20042422","","12/08/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("319","RS-29320238","","12/08/2018","cash","5","","10","","","0");
INSERT INTO sales VALUES("320","RS-26202092","","12/08/2018","cash","183","","183","","","0");
INSERT INTO sales VALUES("321","RS-2052030","","12/08/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("322","RS-233223","","12/08/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("323","RS-22360083","","12/08/2018","cash","28","","28","","","0");
INSERT INTO sales VALUES("324","RS-2833330","","12/08/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("325","RS-02223","","12/08/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("326","RS-232302","","12/08/2018","cash","180","","180","","","0");
INSERT INTO sales VALUES("327","RS-025000","","12/08/2018","cash","27","","50","","","0");
INSERT INTO sales VALUES("328","RS-02523","","12/08/2018","cash","40","","40","","","0");
INSERT INTO sales VALUES("329","RS-002323","","12/08/2018","cash","35","","35","","","0");
INSERT INTO sales VALUES("330","RS-7023200","","12/08/2018","cash","50","","60","","","0");
INSERT INTO sales VALUES("331","RS-20202","","12/08/2018","cash","15","","15","","","0");
INSERT INTO sales VALUES("332","RS-3307222","","12/08/2018","cash","25","","25","","","0");
INSERT INTO sales VALUES("333","RS-3336352","","12/08/2018","cash","115","","120","","","0");
INSERT INTO sales VALUES("334","RS-500223","","12/08/2018","cash","28","","28","","","0");
INSERT INTO sales VALUES("335","RS-20332","","12/08/2018","cash","130","","130","","","0");
INSERT INTO sales VALUES("336","RS-376302","","12/08/2018","cash","30","","30","","","0");
INSERT INTO sales VALUES("337","RS-3243382","","12/08/2018","cash","2","","2","","","0");
INSERT INTO sales VALUES("338","RS-2330393","","12/08/2018","cash","15","","20","","","0");
INSERT INTO sales VALUES("339","RS-42333328","","12/08/2018","cash","129","","130","","","0");
INSERT INTO sales VALUES("340","RS-0322233","","12/08/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("341","RS-87323333","","12/08/2018","cash","255","","255","","","0");
INSERT INTO sales VALUES("342","RS-3943332","","12/08/2018","cash","15","","20","","","0");
INSERT INTO sales VALUES("343","RS-020073","","12/08/2018","cash","42","","45","","","0");
INSERT INTO sales VALUES("344","RS-0232233","","12/08/2018","cash","50","","50","","","0");
INSERT INTO sales VALUES("345","RS-622333","","12/08/2018","cash","48","","50","","","0");
INSERT INTO sales VALUES("346","RS-32380","","12/08/2018","cash","196","","196","","","0");
INSERT INTO sales VALUES("347","RS-33833","","12/08/2018","cash","700","","700","","","0");
INSERT INTO sales VALUES("348","RS-4333","","12/08/2018","cash","3","","3","","","0");
INSERT INTO sales VALUES("349","RS-37623","","12/08/2018","cash","20","","20","","","0");
INSERT INTO sales VALUES("350","RS-3230302","","12/08/2018","cash","40","","50","","","0");
INSERT INTO sales VALUES("351","RS-3302203","","12/08/2018","cash","463","","463","","","0");
INSERT INTO sales VALUES("352","RS-022498","","12/08/2018","cash","10","","10","","","0");
INSERT INTO sales VALUES("353","RS-09220233","","12/08/2018","cash","13","","15","","","0");





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
) ENGINE=InnoDB AUTO_INCREMENT=618 DEFAULT CHARSET=latin1;

INSERT INTO sales_order VALUES("186","RS-30330232","1231","2","40","8","P-330052","XBOX-LIVE-PAD-NEW","XBOX 360","20","","12/06/2018");
INSERT INTO sales_order VALUES("187","RS-33862239","1321","1","5","1","P-30200","MULTI-CARD-READER","","3","","12/06/2018");
INSERT INTO sales_order VALUES("188","RS-36032002","1088","1","25","5","P-2272323","DMW-BCE10BATTERY","PANASONIC ","25","","12/06/2018");
INSERT INTO sales_order VALUES("189","RS-305683","1399","1","80","15","P-6323403","ULTRA 32GB","SANDISK","70","","12/06/2018");
INSERT INTO sales_order VALUES("190","RS-00022","1226","5","100","10","P-22738","UCOM-DOUBLE","PAD","20","","12/07/2018");
INSERT INTO sales_order VALUES("191","RS-00022","780","1","275","35","P-206223","1TB-TRANSCEND","TRANSCEND","275","","12/07/2018");
INSERT INTO sales_order VALUES("192","RS-096220","1247","1","30","6","P-2070433","HP-BLUE-19.5V","","30","","12/07/2018");
INSERT INTO sales_order VALUES("194","RS-3042360","1547","1","15","6","P-20032","NP-F960 CHARGER","SONY","15","","12/07/2018");
INSERT INTO sales_order VALUES("195","RS-23353","1394","1","25","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("196","RS-3263237","1254","1","30","7","P-02242820","TRAVEL-ADAPTER","","25","","12/07/2018");
INSERT INTO sales_order VALUES("200","RS-090330","1295","1","40","10","P-00906","JD 28 BT","BLUTOOTH","40","","12/07/2018");
INSERT INTO sales_order VALUES("202","RS-30322","1247","1","30","6","P-2070433","HP-BLUE-19.5V","","30","","12/07/2018");
INSERT INTO sales_order VALUES("205","RS-30322","1394","4","72","16","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("206","RS-30322","1082","1","70","10","P-04053033","CGA-DU21BATTERY","PANASONIC ","70","","12/07/2018");
INSERT INTO sales_order VALUES("208","RS-30322","1617","1","50","8","P-73502230","2190","ITEL","50","","12/07/2018");
INSERT INTO sales_order VALUES("210","RS-30322","1299","1","8","2","P-233332","PHILIPS-EARPIECE","","8","","12/07/2018");
INSERT INTO sales_order VALUES("211","RS-30322","1389","1","17","3","P-39306","TF 16GB","MEMORY","17","","12/07/2018");
INSERT INTO sales_order VALUES("213","RS-30322","810","1","35","7","P-7292363","32GB-SANDISK","SANDISK","35","","12/07/2018");
INSERT INTO sales_order VALUES("215","RS-30322","1427","3","135","0","P-024732","FLAT LONG","PAD","45","","12/07/2018");
INSERT INTO sales_order VALUES("216","RS-30322","1331","1","15","5","P-0322302","PSP BATTERY","PSP  ","15","","12/07/2018");
INSERT INTO sales_order VALUES("218","RS-30322","1226","1","20","2","P-22738","UCOM-DOUBLE","PAD","20","","12/07/2018");
INSERT INTO sales_order VALUES("220","RS-30322","1319","1","10","4","P-80033","ANDROID-CABLE","","10","","12/07/2018");
INSERT INTO sales_order VALUES("222","RS-9233325","1395","2","40","6","P-39323","TOSHIBA 16GB","TOSHIBA","20","","12/07/2018");
INSERT INTO sales_order VALUES("225","RS-0902323","1272","1","50","10","P-2008332","M101BT-CAR-MP3","","50","","12/07/2018");
INSERT INTO sales_order VALUES("226","RS-0230302","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("227","RS-3203032","1515","2","8","3","P-7252203","VGA-VGA CABLE","VGA","4","","12/07/2018");
INSERT INTO sales_order VALUES("228","RS-7363332","1254","1","30","7","P-02242820","TRAVEL-ADAPTER","","25","","12/07/2018");
INSERT INTO sales_order VALUES("229","RS-08322032","1548","1","20","6","P-020242","BP-105R CHARGER","SAMSUNG","15","","12/07/2018");
INSERT INTO sales_order VALUES("230","RS-090402","1391","1","15","3","P-20490032","TF 8GB","MEMORY  ","15","","12/07/2018");
INSERT INTO sales_order VALUES("231","RS-2533292","1518","1","16","2","P-3204236","4GB","GENX ","15","","12/07/2018");
INSERT INTO sales_order VALUES("232","RS-203022","948","1","80","15","P-23633322","NP-QM91D-BATTERY","SONY ","80","","12/07/2018");
INSERT INTO sales_order VALUES("233","RS-65230","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("234","RS-65230","1395","2","40","6","P-39323","TOSHIBA 16GB","TOSHIBA","20","","12/07/2018");
INSERT INTO sales_order VALUES("235","RS-65230","1395","1","20","3","P-39323","TOSHIBA 16GB","TOSHIBA","20","","12/07/2018");
INSERT INTO sales_order VALUES("238","RS-302029","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("239","RS-332673","1299","1","8","2","P-233332","PHILIPS-EARPIECE","","8","","12/07/2018");
INSERT INTO sales_order VALUES("240","RS-3233662","1591","1","10","2","P-37823500","V3 CABLE","V3 CABLE","10","","12/07/2018");
INSERT INTO sales_order VALUES("241","RS-6323200","1395","2","40","6","P-39323","TOSHIBA 16GB","TOSHIBA ","20","","12/07/2018");
INSERT INTO sales_order VALUES("242","RS-4207833","827","1","170","20","P-600373","128GB TF","SANDISK","170","","12/07/2018");
INSERT INTO sales_order VALUES("243","RS-43223993","1327","1","25","7","P-303223","IPHONE5-USED-CABLE","","25","","12/07/2018");
INSERT INTO sales_order VALUES("244","RS-23209","1427","2","90","0","P-024732","FLAT LONG","PAD","45","","12/07/2018");
INSERT INTO sales_order VALUES("245","RS-3660","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("246","RS-3660","1409","1","15","2","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/07/2018");
INSERT INTO sales_order VALUES("248","RS-80353","1115","1","15","5","P-2239207","FNP-60CHARGER","FUJIFILM","15","","12/07/2018");
INSERT INTO sales_order VALUES("249","RS-303353","1392","10","140","20","P-3302223","TF 4GB","MEMORY ","14","","12/07/2018");
INSERT INTO sales_order VALUES("250","RS-02022","1397","1","17","3","P-920302","8GB","DIGIRICH","17","","12/07/2018");
INSERT INTO sales_order VALUES("251","RS-00320","810","2","70","14","P-7292363","32GB-SANDISK","SANDISK","35","","12/07/2018");
INSERT INTO sales_order VALUES("253","RS-8322320","1391","1","15","3","P-20490032","TF 8GB","MEMORY  ","15","","12/07/2018");
INSERT INTO sales_order VALUES("254","RS-83028333","1627","1","35","2","P-233044","16GB","kingston","25","","12/07/2018");
INSERT INTO sales_order VALUES("255","RS-83028333","1411","1","2","1","P-25597322","THREAD","THREAD","2","","12/07/2018");
INSERT INTO sales_order VALUES("256","RS-2952522","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("257","RS-93232520","996","1","80","15","P-3930232","LP-E17BATTERY","CANON","80","","12/07/2018");
INSERT INTO sales_order VALUES("258","RS-93232520","1113","1","40","10","P-220023","LP-E17ORIGINAL-CHARGER","CANON","40","","12/07/2018");
INSERT INTO sales_order VALUES("259","RS-23505","1243","1","20","4","P-2263300","HP-SMALL-PIN-18.5","","20","","12/07/2018");
INSERT INTO sales_order VALUES("260","RS-3334220","1104","1","40","10","P-3230232","LP-E6ORIGINAL-CHARGER","CANON","40","","12/07/2018");
INSERT INTO sales_order VALUES("261","RS-843333","1399","1","80","15","P-6323403","ULTRA 32GB","SANDISK","70","","12/07/2018");
INSERT INTO sales_order VALUES("262","RS-203220","1559","2","34","8","P-032225","8GB","GENX","17","","12/07/2018");
INSERT INTO sales_order VALUES("263","RS-3536","1397","1","25","3","P-920302","8GB","DIGIRICH","17","","12/07/2018");
INSERT INTO sales_order VALUES("264","RS-32325632","1112","1","15","5","P-233352","CNP-40CHARGER","CASIO","15","","12/07/2018");
INSERT INTO sales_order VALUES("265","RS-3327903","1617","1","50","8","P-73502230","2190","ITEL","50","","12/07/2018");
INSERT INTO sales_order VALUES("271","RS-3023392","1264","3","159","24","P-2203223","GEAR-BOARD","","53","","12/07/2018");
INSERT INTO sales_order VALUES("272","RS-3259092","1390","2","24","2","P-23020233","TF 2GB","MEMORY","12","","12/07/2018");
INSERT INTO sales_order VALUES("273","RS-3259092","1391","1","15","3","P-20490032","TF 8GB","MEMORY  ","15","","12/07/2018");
INSERT INTO sales_order VALUES("274","RS-3259092","789","1","23","4","P-20327022","DUAL-8GB","OTG ","23","","12/07/2018");
INSERT INTO sales_order VALUES("275","RS-3259092","1627","1","25","2","P-233044","16GB","kingston","25","","12/07/2018");
INSERT INTO sales_order VALUES("276","RS-3259092","1559","1","17","4","P-032225","8GB","GENX","17","","12/07/2018");
INSERT INTO sales_order VALUES("277","RS-3259092","788","1","27","4","P-6273023","DUAL-16GB","OTG ","27","","12/07/2018");
INSERT INTO sales_order VALUES("278","RS-3259092","1389","2","34","6","P-39306","TF 16GB","MEMORY","17","","12/07/2018");
INSERT INTO sales_order VALUES("279","RS-0322360","1390","15","180","15","P-23020233","TF 2GB","MEMORY","12","","12/07/2018");
INSERT INTO sales_order VALUES("280","RS-0322360","1392","15","210","30","P-3302223","TF 4GB","MEMORY ","14","","12/07/2018");
INSERT INTO sales_order VALUES("281","RS-0322360","1409","2","30","4","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/07/2018");
INSERT INTO sales_order VALUES("282","RS-0322360","1518","2","30","4","P-3204236","4GB","GENX ","15","","12/07/2018");
INSERT INTO sales_order VALUES("283","RS-0322360","1389","1","17","3","P-39306","TF 16GB","MEMORY","17","","12/07/2018");
INSERT INTO sales_order VALUES("284","RS-0322360","1321","5","15","5","P-30200","MULTI-CARD-READER","","3","","12/07/2018");
INSERT INTO sales_order VALUES("285","RS-0322360","1275","5","10","5","P-332322","CARD-READER-SINGLE","","2","","12/07/2018");
INSERT INTO sales_order VALUES("288","RS-206223","1439","1","25","15","P-99808202","LENS COVER 67MM","NIKON","35","","12/07/2018");
INSERT INTO sales_order VALUES("289","RS-0239203","1588","1","20","5","P-0200000","TECNO CHARGER","TECNO","25","","12/07/2018");
INSERT INTO sales_order VALUES("291","RS-220332","1391","1","15","3","P-20490032","TF 8GB","MEMORY  ","15","","12/07/2018");
INSERT INTO sales_order VALUES("292","RS-220332","1392","5","70","10","P-3302223","TF 4GB","MEMORY ","14","","12/07/2018");
INSERT INTO sales_order VALUES("293","RS-36225203","1390","3","36","3","P-23020233","TF 2GB","MEMORY","12","","12/07/2018");
INSERT INTO sales_order VALUES("294","RS-36225203","1389","1","17","3","P-39306","TF 16GB","MEMORY","17","","12/07/2018");
INSERT INTO sales_order VALUES("295","RS-36225203","1392","3","42","6","P-3302223","TF 4GB","MEMORY ","14","","12/07/2018");
INSERT INTO sales_order VALUES("296","RS-36225203","1391","3","45","9","P-20490032","TF 8GB","MEMORY  ","15","","12/07/2018");
INSERT INTO sales_order VALUES("297","RS-302209","1103","1","40","10","P-3020","LP-8ORIGINAL-CHARGER","CANON","40","","12/07/2018");
INSERT INTO sales_order VALUES("298","RS-330933","980","1","80","15","P-02222","NP-FP90BATTERY","SONY","80","","12/07/2018");
INSERT INTO sales_order VALUES("299","RS-4023020","920","1","280","32","P-0322062","P13","ITEL","280","","12/07/2018");
INSERT INTO sales_order VALUES("300","RS-0332722","798","1","25","5","P-802682","SD 2GB","TWINMOS ","25","","12/07/2018");
INSERT INTO sales_order VALUES("301","RS-30286422","996","1","80","15","P-3930232","LP-E17BATTERY","CANON","80","","12/07/2018");
INSERT INTO sales_order VALUES("302","RS-30286422","1409","1","20","2","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/07/2018");
INSERT INTO sales_order VALUES("303","RS-2923932","867","1","75","15","P-43326392","5613","ITEL","75","","12/07/2018");
INSERT INTO sales_order VALUES("304","RS-3343733","1409","2","30","4","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/07/2018");
INSERT INTO sales_order VALUES("305","RS-29362023","1245","1","20","4","P-383232","ACCER-19V","","20","","12/07/2018");
INSERT INTO sales_order VALUES("306","RS-3033723","1392","1","14","2","P-3302223","TF 4GB","MEMORY ","14","","12/07/2018");
INSERT INTO sales_order VALUES("307","RS-3385253","1411","1","6","1","P-25597322","THREAD","THREAD","2","","12/07/2018");
INSERT INTO sales_order VALUES("308","RS-4242","1427","1","45","0","P-024732","FLAT LONG","PAD","45","","12/07/2018");
INSERT INTO sales_order VALUES("309","RS-2220300","1258","2","80","14","P-2022350","GEAR-RUBBER-ASH","","35","","12/07/2018");
INSERT INTO sales_order VALUES("310","RS-73380200","1299","1","8","2","P-233332","PHILIPS-EARPIECE","","8","","12/07/2018");
INSERT INTO sales_order VALUES("311","RS-22302","1265","2","16","2","P-0023305","WIRE-MOUSE","MOUSE","8","","12/07/2018");
INSERT INTO sales_order VALUES("313","RS-0903303","1391","2","30","6","P-20490032","TF 8GB","MEMORY  ","15","","12/07/2018");
INSERT INTO sales_order VALUES("314","RS-232373","1616","1","45","8","P-4632733","2171","ITEL","45","","12/07/2018");
INSERT INTO sales_order VALUES("315","RS-2025230","1482","1","15","5","P-43332239","3D PROTECTOR","GLASS","15","","12/07/2018");
INSERT INTO sales_order VALUES("316","RS-23222242","1236","1","15","2","P-3342","PSP-BATTERY-BACK","","7","","12/07/2018");
INSERT INTO sales_order VALUES("317","RS-02043","1302","1","20","4","P-303305","HDMI-3MM","HDMI","15","","12/07/2018");
INSERT INTO sales_order VALUES("318","RS-25032","1395","1","20","3","P-39323","TOSHIBA 16GB","TOSHIBA ","20","","12/07/2018");
INSERT INTO sales_order VALUES("319","RS-25032","1392","1","14","2","P-3302223","TF 4GB","MEMORY ","14","","12/07/2018");
INSERT INTO sales_order VALUES("320","RS-0023303","1399","1","80","15","P-6323403","ULTRA 32GB","SANDISK","70","","12/07/2018");
INSERT INTO sales_order VALUES("321","RS-32237032","1242","1","30","5","P-2233279","WD-CASE-3.0"," ","30","","12/07/2018");
INSERT INTO sales_order VALUES("322","RS-3332423","1331","1","15","5","P-0322302","PSP BATTERY","PSP  ","15","","12/07/2018");
INSERT INTO sales_order VALUES("323","RS-2330236","1258","2","80","14","P-2022350","GEAR-RUBBER-ASH","","35","","12/07/2018");
INSERT INTO sales_order VALUES("324","RS-2330236","1427","1","45","0","P-024732","FLAT LONG","PAD","45","","12/07/2018");
INSERT INTO sales_order VALUES("325","RS-030663","1092","1","50","10","P-3522238","EN-EL9BATTERY","NIKON","50","","12/07/2018");
INSERT INTO sales_order VALUES("326","RS-3070622","1000","1","50","8","P-04323533","BLM-1BATTERY","OLYMPUS","50","","12/07/2018");
INSERT INTO sales_order VALUES("329","RS-323023","1436","1","15","5","P-0302522","LENS COVER 58MM NIKON","COVER","15","","12/07/2018");
INSERT INTO sales_order VALUES("331","RS-3230207","1387","1","34","10","P-233334","TF 32GB","MEMORY ","25","","12/07/2018");
INSERT INTO sales_order VALUES("332","RS-0309842","1610","1","70","10","P-0404632","lp-e6-battery","CANON","60","","12/07/2018");
INSERT INTO sales_order VALUES("333","RS-29226","870","1","175","22","P-222222","A14","ITEL ","175","","12/07/2018");
INSERT INTO sales_order VALUES("334","RS-2488838","1327","1","25","7","P-303223","IPHONE5-USED-CABLE","","25","","12/07/2018");
INSERT INTO sales_order VALUES("335","RS-2488838","1397","2","34","6","P-920302","8GB","DIGIRICH","17","","12/07/2018");
INSERT INTO sales_order VALUES("336","RS-74326023","1235","1","28","5","P-23092323","DELL-BIG-PIN-19.5V","","28","","12/07/2018");
INSERT INTO sales_order VALUES("337","RS-3220780","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("338","RS-30422","1518","5","75","10","P-3204236","4GB","GENX ","15","","12/07/2018");
INSERT INTO sales_order VALUES("339","RS-30422","1559","5","85","20","P-032225","8GB","GENX","17","","12/07/2018");
INSERT INTO sales_order VALUES("340","RS-30422","1392","5","70","10","P-3302223","TF 4GB","MEMORY  ","14","","12/07/2018");
INSERT INTO sales_order VALUES("341","RS-30422","1238","2","44","8","P-322072","HP-BIG-PIN-19V","HP","22","","12/07/2018");
INSERT INTO sales_order VALUES("342","RS-30422","1243","1","20","4","P-2263300","HP-SMALL-PIN-18.5","","20","","12/07/2018");
INSERT INTO sales_order VALUES("343","RS-30422","1387","2","50","20","P-233334","TF 32GB","MEMORY ","25","","12/07/2018");
INSERT INTO sales_order VALUES("344","RS-2236903","1331","1","20","5","P-0322302","PSP BATTERY","PSP  ","15","","12/07/2018");
INSERT INTO sales_order VALUES("345","RS-2236903","1318","1","10","3","P-0935763","PSP-CHARGER","PSP","9","","12/07/2018");
INSERT INTO sales_order VALUES("346","RS-3033","1409","2","30","4","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/07/2018");
INSERT INTO sales_order VALUES("347","RS-3033","1394","2","36","8","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("348","RS-3033","1390","5","60","5","P-23020233","TF 2GB","MEMORY","12","","12/07/2018");
INSERT INTO sales_order VALUES("349","RS-3033","1392","2","28","4","P-3302223","TF 4GB","MEMORY  ","14","","12/07/2018");
INSERT INTO sales_order VALUES("350","RS-9622043","797","1","35","10","P-0233832","SD 8GB","TWINMOS","35","","12/07/2018");
INSERT INTO sales_order VALUES("351","RS-20234083","1255","1","10","3","P-3020050","LAPTOP POWER CORD USED","","10","","12/07/2018");
INSERT INTO sales_order VALUES("352","RS-23823230","1259","2","48","8","P-250420","GEAR-BLACK","","24","","12/07/2018");
INSERT INTO sales_order VALUES("353","RS-827523","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("354","RS-2559","1409","1","15","2","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/07/2018");
INSERT INTO sales_order VALUES("355","RS-022223","1285","1","25","5","P-24823333","HDMI-TO-VGA-CABLE","HDMI","20","","12/07/2018");
INSERT INTO sales_order VALUES("356","RS-23732","1631","1","600","100","P-0020223","8776-5S-16GB","IPHONE","650","","12/07/2018");
INSERT INTO sales_order VALUES("357","RS-093932","1087","1","60","10","P-000720","EN-EL14BATTERY","NIKON","60","","12/07/2018");
INSERT INTO sales_order VALUES("358","RS-029223","797","1","40","10","P-0233832","SD 8GB","TWINMOS","35","","12/07/2018");
INSERT INTO sales_order VALUES("359","RS-3359563","1459","1","7","2","P-3399083","PSP ADAPTER","ADAPTER","7","","12/07/2018");
INSERT INTO sales_order VALUES("360","RS-3359563","1422","1","40","20","P-30324","ASUS-TAB-CHARGER","ASUS","60","","12/07/2018");
INSERT INTO sales_order VALUES("363","RS-3320423","1103","1","45","10","P-3020","LP-8ORIGINAL-CHARGER","CANON","40","","12/07/2018");
INSERT INTO sales_order VALUES("364","RS-3320423","1399","1","80","15","P-6323403","ULTRA 32GB","SANDISK","70","","12/07/2018");
INSERT INTO sales_order VALUES("365","RS-2932280","1299","1","10","2","P-233332","PHILIPS-EARPIECE","","8","","12/07/2018");
INSERT INTO sales_order VALUES("367","RS-24362","1494","1","10","1","P-8233477","UFO HANDSFREE","HANDSFREE","6","","12/07/2018");
INSERT INTO sales_order VALUES("368","RS-30002222","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("369","RS-35030209","1118","1","20","5","P-53536","BP-70ACHARGER","SAMSUNG","15","","12/07/2018");
INSERT INTO sales_order VALUES("370","RS-22025230","1319","1","10","4","P-80033","ANDROID-CABLE","","10","","12/07/2018");
INSERT INTO sales_order VALUES("372","RS-2380030","1620","1","3","1","P-2333023","AC-CORD","AC","3","","12/07/2018");
INSERT INTO sales_order VALUES("373","RS-333008","1112","1","15","5","P-233352","CNP-40CHARGER","CASIO","15","","12/07/2018");
INSERT INTO sales_order VALUES("374","RS-2033755","1254","1","30","7","P-02242820","TRAVEL-ADAPTER","","25","","12/07/2018");
INSERT INTO sales_order VALUES("376","RS-5322233","1409","20","300","40","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/07/2018");
INSERT INTO sales_order VALUES("377","RS-23333338","1235","1","28","5","P-23092323","DELL-BIG-PIN-19.5V","","28","","12/07/2018");
INSERT INTO sales_order VALUES("378","RS-23333338","1247","1","30","6","P-2070433","HP-BLUE-19.5V","","30","","12/07/2018");
INSERT INTO sales_order VALUES("380","RS-20230302","948","1","80","15","P-23633322","NP-QM91D-BATTERY","SONY ","80","","12/07/2018");
INSERT INTO sales_order VALUES("381","RS-20230302","1124","2","26","10","P-52382220","NP-BG1-CHARGER","SONY","15","","12/07/2018");
INSERT INTO sales_order VALUES("384","RS-23092323","1092","1","50","10","P-3522238","EN-EL9BATTERY","NIKON","50","","12/07/2018");
INSERT INTO sales_order VALUES("385","RS-2024232","1391","1","20","3","P-20490032","TF 8GB","MEMORY  ","15","","12/07/2018");
INSERT INTO sales_order VALUES("386","RS-0438232","1225","1","12","2","P-6388329","UCOM-SINGLE","PAD","140","","12/07/2018");
INSERT INTO sales_order VALUES("388","RS-324303","1405","1","20","3","P-222032","SANDISK 16GB","SANDISK","20","","12/07/2018");
INSERT INTO sales_order VALUES("415","RS-62232032","1092","1","50","10","P-3522238","EN-EL9BATTERY","NIKON","50","","12/07/2018");
INSERT INTO sales_order VALUES("417","RS-330220","1392","9","126","18","P-3302223","TF 4GB","MEMORY  ","14","","12/07/2018");
INSERT INTO sales_order VALUES("421","RS-330220","1389","5","85","15","P-39306","TF 16GB","MEMORY","17","","12/07/2018");
INSERT INTO sales_order VALUES("422","RS-330220","1409","1","15","2","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/07/2018");
INSERT INTO sales_order VALUES("423","RS-330220","1518","1","155","2","P-3204236","4GB","GENX ","15","","12/07/2018");
INSERT INTO sales_order VALUES("424","RS-330220","1394","1","17","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/07/2018");
INSERT INTO sales_order VALUES("425","RS-330220","1559","1","93","4","P-032225","8GB","GENX","17","","12/07/2018");
INSERT INTO sales_order VALUES("426","RS-330220","1275","1","495","1","P-332322","CARD-READER-SINGLE","","2","","12/07/2018");
INSERT INTO sales_order VALUES("427","RS-2252","1389","1","17","3","P-39306","TF 16GB","MEMORY","17","","12/07/2018");
INSERT INTO sales_order VALUES("428","RS-2252","1392","1","14","2","P-3302223","TF 4GB","MEMORY  ","14","","12/07/2018");
INSERT INTO sales_order VALUES("429","RS-2252","1391","1","15","3","P-20490032","TF 8GB","MEMORY  ","15","","12/07/2018");
INSERT INTO sales_order VALUES("431","RS-2252","1119","1","15","5","P-33233090","LI-80BCHARGER","OLYMPUS","15","","12/07/2018");
INSERT INTO sales_order VALUES("432","RS-2252","1037","1","25","5","P-5024220","LI80B","FUJI","25","","12/07/2018");
INSERT INTO sales_order VALUES("433","RS-2252","1070","1","25","5","P-235233","CNP-120","CASIO","25","","12/07/2018");
INSERT INTO sales_order VALUES("434","RS-2252","1312","1","30","5","P-392002","IPHONE-X-CHARGER","","30","","12/07/2018");
INSERT INTO sales_order VALUES("435","RS-2252","1247","1","30","6","P-2070433","HP-BLUE-19.5V","","30","","12/07/2018");
INSERT INTO sales_order VALUES("436","RS-33230","1389","2","34","6","P-39306","TF 16GB","MEMORY","17","","12/08/2018");
INSERT INTO sales_order VALUES("437","RS-20330","1409","1","20","2","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/08/2018");
INSERT INTO sales_order VALUES("438","RS-3934823","1641","1","25","5","","SLB 07A BATTERY"," SLB 07A BATTERY","25","","12/08/2018");
INSERT INTO sales_order VALUES("439","RS-00330","1179","1","15","5","P-07323","BCF10CHARGER","PANASONIC ","15","","12/08/2018");
INSERT INTO sales_order VALUES("440","RS-3333","1607","1","20","3","P-6043028","HP-BIG-PIN 18\'5","HP","20","","12/08/2018");
INSERT INTO sales_order VALUES("441","RS-3333","1255","1","10","3","P-3020050","LAPTOP POWER CORD USED","","10","","12/08/2018");
INSERT INTO sales_order VALUES("442","RS-333022","1387","1","25","10","P-233334","TF 32GB","MEMORY ","25","","12/08/2018");
INSERT INTO sales_order VALUES("443","RS-0225438","1394","2","36","8","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/08/2018");
INSERT INTO sales_order VALUES("444","RS-0225438","1395","1","20","3","P-39323","TOSHIBA 16GB","TOSHIBA ","20","","12/08/2018");
INSERT INTO sales_order VALUES("446","RS-733032","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/08/2018");
INSERT INTO sales_order VALUES("447","RS-733032","1395","1","20","3","P-39323","TOSHIBA 16GB","TOSHIBA ","20","","12/08/2018");
INSERT INTO sales_order VALUES("448","RS-3820230","1399","1","80","15","P-6323403","ULTRA 32GB","SANDISK","70","","12/08/2018");
INSERT INTO sales_order VALUES("449","RS-3820230","1384","1","500","200","P-32023723","IXUS 185 CAMERA","CANON","500","","12/08/2018");
INSERT INTO sales_order VALUES("450","RS-27033508","1389","1","17","3","P-39306","TF 16GB","MEMORY","17","","12/08/2018");
INSERT INTO sales_order VALUES("451","RS-07542","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/08/2018");
INSERT INTO sales_order VALUES("452","RS-020224","1409","1","15","2","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/08/2018");
INSERT INTO sales_order VALUES("453","RS-020224","1405","1","20","3","P-222032","SANDISK 16GB","SANDISK","20","","12/08/2018");
INSERT INTO sales_order VALUES("454","RS-020224","1392","2","28","4","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("455","RS-020224","1390","3","36","3","P-23020233","TF 2GB","MEMORY","12","","12/08/2018");
INSERT INTO sales_order VALUES("456","RS-020224","789","1","23","4","P-20327022","DUAL-8GB","OTG ","23","","12/08/2018");
INSERT INTO sales_order VALUES("457","RS-020224","1391","1","15","3","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("458","RS-020224","1389","1","17","3","P-39306","TF 16GB","MEMORY","17","","12/08/2018");
INSERT INTO sales_order VALUES("471","RS-0900042","1399","1","80","15","P-6323403","ULTRA 32GB","SANDISK","70","","12/08/2018");
INSERT INTO sales_order VALUES("472","RS-020032","788","2","54","8","P-6273023","DUAL-16GB","OTG ","27","","12/08/2018");
INSERT INTO sales_order VALUES("473","RS-020032","789","2","46","8","P-20327022","DUAL-8GB","OTG ","23","","12/08/2018");
INSERT INTO sales_order VALUES("474","RS-020032","1409","4","60","8","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/08/2018");
INSERT INTO sales_order VALUES("475","RS-020032","1390","3","36","3","P-23020233","TF 2GB","MEMORY","12","","12/08/2018");
INSERT INTO sales_order VALUES("477","RS-020032","1389","4","68","12","P-39306","TF 16GB","MEMORY","17","","12/08/2018");
INSERT INTO sales_order VALUES("478","RS-020032","1395","5","100","15","P-39323","TOSHIBA 16GB","TOSHIBA ","20","","12/08/2018");
INSERT INTO sales_order VALUES("479","RS-020032","1391","5","75","15","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("480","RS-020032","1394","5","90","20","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/08/2018");
INSERT INTO sales_order VALUES("481","RS-328352","1392","1","20","2","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("482","RS-2323326","1265","1","8","1","P-0023305","WIRE-MOUSE","MOUSE","8","","12/08/2018");
INSERT INTO sales_order VALUES("483","RS-23043","860","1","220","23","P-392309","A16","ITEL ","225","","12/08/2018");
INSERT INTO sales_order VALUES("484","RS-03060230","1494","1","10","1","P-8233477","UFO HANDSFREE","HANDSFREE","6","","12/08/2018");
INSERT INTO sales_order VALUES("485","RS-202302","1392","2","28","4","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("486","RS-527223","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/08/2018");
INSERT INTO sales_order VALUES("487","RS-3253333","1405","2","40","6","P-222032","SANDISK 16GB","SANDISK","20","","12/08/2018");
INSERT INTO sales_order VALUES("488","RS-3253333","810","1","33","7","P-7292363","32GB-SANDISK","SANDISK","35","","12/08/2018");
INSERT INTO sales_order VALUES("489","RS-3253333","1115","1","15","5","P-2239207","FNP-60CHARGER","FUJIFILM","15","","12/08/2018");
INSERT INTO sales_order VALUES("490","RS-3253333","1537","1","250","50","P-00272033","IS 944 SPEAKER","ISMART","250","","12/08/2018");
INSERT INTO sales_order VALUES("491","RS-03370253","950","1","25","5","P-223084","KLIC-7006BATTERY","KODAK","25","","12/08/2018");
INSERT INTO sales_order VALUES("492","RS-83360362","1395","1","20","3","P-39323","TOSHIBA 16GB","TOSHIBA ","20","","12/08/2018");
INSERT INTO sales_order VALUES("493","RS-623263","788","1","40","4","P-6273023","DUAL-16GB","OTG ","27","","12/08/2018");
INSERT INTO sales_order VALUES("494","RS-2352000","1395","1","20","3","P-39323","TOSHIBA 16GB","TOSHIBA ","20","","12/08/2018");
INSERT INTO sales_order VALUES("495","RS-2352000","788","1","27","4","P-6273023","DUAL-16GB","OTG ","27","","12/08/2018");
INSERT INTO sales_order VALUES("496","RS-2352000","1394","2","36","8","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/08/2018");
INSERT INTO sales_order VALUES("497","RS-2352000","1409","2","30","4","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/08/2018");
INSERT INTO sales_order VALUES("498","RS-2352000","1390","4","48","4","P-23020233","TF 2GB","MEMORY","12","","12/08/2018");
INSERT INTO sales_order VALUES("499","RS-2352000","1391","1","15","3","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("500","RS-2352000","1392","1","14","2","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("501","RS-220322","1422","1","60","20","P-30324","ASUS-TAB-CHARGER","ASUS","60","","12/08/2018");
INSERT INTO sales_order VALUES("502","RS-220322","1238","1","22","4","P-322072","HP-BIG-PIN-19V","HP","22","","12/08/2018");
INSERT INTO sales_order VALUES("503","RS-22683922","1115","1","15","5","P-2239207","FNP-60CHARGER","FUJIFILM","15","","12/08/2018");
INSERT INTO sales_order VALUES("504","RS-222232","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/08/2018");
INSERT INTO sales_order VALUES("505","RS-37432","1392","20","280","40","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("507","RS-236633","1567","1","95","15","P-24740322","GT 1207Y","SAMSUNG ","95","","12/08/2018");
INSERT INTO sales_order VALUES("508","RS-30956037","1223","1","45","7","P-4039333","360-WIRE-PAD","","45","","12/08/2018");
INSERT INTO sales_order VALUES("509","RS-8232853","1394","5","90","20","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/08/2018");
INSERT INTO sales_order VALUES("510","RS-8232853","1391","2","30","6","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("511","RS-8232853","1395","1","20","3","P-39323","TOSHIBA 16GB","TOSHIBA ","20","","12/08/2018");
INSERT INTO sales_order VALUES("512","RS-222","1607","1","20","3","P-6043028","HP-BIG-PIN 18\'5","HP","20","","12/08/2018");
INSERT INTO sales_order VALUES("513","RS-520028","1506","1","40","20","P-6023233","WS-637","SPEAKER","35","","12/08/2018");
INSERT INTO sales_order VALUES("514","RS-520028","1559","2","40","8","P-032225","8GB","GENX","17","","12/08/2018");
INSERT INTO sales_order VALUES("515","RS-2337","1477","1","590","40","P-03305","POUVOIR 2","TECNO","590","","12/08/2018");
INSERT INTO sales_order VALUES("516","RS-2293300","1390","2","24","2","P-23020233","TF 2GB","MEMORY","12","","12/08/2018");
INSERT INTO sales_order VALUES("517","RS-2293300","1391","2","30","6","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("518","RS-2293300","1518","2","30","4","P-3204236","4GB","GENX ","15","","12/08/2018");
INSERT INTO sales_order VALUES("519","RS-2293300","1519","2","28","6","P-70223233","2GB","GENX","14","","12/08/2018");
INSERT INTO sales_order VALUES("520","RS-2293300","1559","1","17","4","P-032225","8GB","GENX","17","","12/08/2018");
INSERT INTO sales_order VALUES("521","RS-232083","1391","1","15","3","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("522","RS-233332","893","1","215","28","P-23035626","Y2-TECHNO","TECHNO ","220","","12/08/2018");
INSERT INTO sales_order VALUES("523","RS-2337233","1365","1","300","100","P-20692","PES 19 CD","PS4 CD","300","","12/08/2018");
INSERT INTO sales_order VALUES("524","RS-3237235","1394","1","25","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/08/2018");
INSERT INTO sales_order VALUES("525","RS-283023","1617","1","50","8","P-73502230","2190","ITEL ","50","","12/08/2018");
INSERT INTO sales_order VALUES("526","RS-7265322","1427","1","45","0","P-024732","FLAT LONG","PAD","45","","12/08/2018");
INSERT INTO sales_order VALUES("527","RS-0742333","1389","1","20","3","P-39306","TF 16GB","MEMORY","17","","12/08/2018");
INSERT INTO sales_order VALUES("528","RS-32332387","1518","1","15","2","P-3204236","4GB","GENX ","15","","12/08/2018");
INSERT INTO sales_order VALUES("529","RS-65232203","1391","1","15","3","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("530","RS-65232203","1394","1","18","4","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/08/2018");
INSERT INTO sales_order VALUES("531","RS-70220408","1245","1","25","4","P-383232","ACCER-19V","","20","","12/08/2018");
INSERT INTO sales_order VALUES("532","RS-70220408","1255","1","10","3","P-3020050","LAPTOP POWER CORD USED","","10","","12/08/2018");
INSERT INTO sales_order VALUES("533","RS-22252","1617","1","50","8","P-73502230","2190","ITEL ","50","","12/08/2018");
INSERT INTO sales_order VALUES("534","RS-323333","1392","5","70","10","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("535","RS-373332","936","1","345","30","P-25200822","POP1/F3","TECNO ","350","","12/08/2018");
INSERT INTO sales_order VALUES("536","RS-373332","1410","1","5","3","P-75209322","glass","protector ","5","","12/08/2018");
INSERT INTO sales_order VALUES("538","RS-373332","1389","1","30","3","P-39306","TF 16GB","MEMORY","17","","12/08/2018");
INSERT INTO sales_order VALUES("539","RS-2322230","866","1","105","10","P-222322","T484","TECNO  ","110","","12/08/2018");
INSERT INTO sales_order VALUES("540","RS-3230202","1392","1","14","2","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("541","RS-220202","1409","2","30","4","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/08/2018");
INSERT INTO sales_order VALUES("542","RS-220202","1518","2","30","4","P-3204236","4GB","GENX ","15","","12/08/2018");
INSERT INTO sales_order VALUES("543","RS-3332222","866","1","105","10","P-222322","T484","TECNO  ","110","","12/08/2018");
INSERT INTO sales_order VALUES("545","RS-0223553","1389","1","18","3","P-39306","TF 16GB","MEMORY","17","","12/08/2018");
INSERT INTO sales_order VALUES("546","RS-023302","1453","1","180","80","P-2745","PS2 CONSOLE COMPLETE","PS","180","","12/08/2018");
INSERT INTO sales_order VALUES("547","RS-2203502","1037","1","25","5","P-5024220","LI80B","FUJI","25","","12/08/2018");
INSERT INTO sales_order VALUES("548","RS-3853","1526","1","1450","65","P-3262200","A6+","SAMSUNG","1500","","12/08/2018");
INSERT INTO sales_order VALUES("549","RS-39207350","1260","2","16","6","P-3232942","SOUNDCARD"," ","8","","12/08/2018");
INSERT INTO sales_order VALUES("550","RS-39207350","1270","2","24","8","P-022022","M5-CAR-MP3","","12","","12/08/2018");
INSERT INTO sales_order VALUES("551","RS-39207350","1259","2","48","8","P-250420","GEAR-BLACK","","24","","12/08/2018");
INSERT INTO sales_order VALUES("552","RS-39207350","1390","6","72","6","P-23020233","TF 2GB","MEMORY","12","","12/08/2018");
INSERT INTO sales_order VALUES("553","RS-39207350","1392","2","28","4","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("554","RS-39207350","1409","2","30","4","P-202333","4GB-DIGIRICH","DIGIRICH ","15","","12/08/2018");
INSERT INTO sales_order VALUES("555","RS-39207350","1518","1","15","2","P-3204236","4GB","GENX ","15","","12/08/2018");
INSERT INTO sales_order VALUES("556","RS-2203353","1231","1","20","4","P-330052","XBOX-LIVE-PAD-NEW","XBOX 360","20","","12/08/2018");
INSERT INTO sales_order VALUES("557","RS-2333202","860","1","220","23","P-392309","A16","ITEL ","225","","12/08/2018");
INSERT INTO sales_order VALUES("558","RS-2872332","970","1","25","5","P-0382","NB-4LBATTERY","CANON","25","","12/08/2018");
INSERT INTO sales_order VALUES("559","RS-20042422","1154","1","15","5","P-9200203","LP-E5-CHARGER","","15","","12/08/2018");
INSERT INTO sales_order VALUES("560","RS-29320238","1410","1","5","3","P-75209322","glass","protector ","5","","12/08/2018");
INSERT INTO sales_order VALUES("561","RS-26202092","1394","6","108","24","P-08290023","TOSHIBA 8GB","TOSHIBA","18","","12/08/2018");
INSERT INTO sales_order VALUES("562","RS-26202092","1518","5","75","10","P-3204236","4GB","GENX ","15","","12/08/2018");
INSERT INTO sales_order VALUES("563","RS-2052030","1405","2","40","6","P-222032","SANDISK 16GB","SANDISK","20","","12/08/2018");
INSERT INTO sales_order VALUES("564","RS-233223","1171","1","15","5","P-22334320","NB-4L-CHARGER","","15","","12/08/2018");
INSERT INTO sales_order VALUES("565","RS-22360083","1392","2","28","4","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("566","RS-2833330","1391","1","20","3","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("567","RS-02223","1419","1","20","5","P-333703","2PINS CONVERTER","XBOX 360","20","","12/08/2018");
INSERT INTO sales_order VALUES("568","RS-232302","1427","4","180","0","P-024732","FLAT LONG","PAD","45","","12/08/2018");
INSERT INTO sales_order VALUES("569","RS-025000","788","1","27","4","P-6273023","DUAL-16GB","OTG ","27","","12/08/2018");
INSERT INTO sales_order VALUES("570","RS-02523","788","1","40","4","P-6273023","DUAL-16GB","OTG ","27","","12/08/2018");
INSERT INTO sales_order VALUES("571","RS-002323","797","1","35","10","P-0233832","SD 8GB","TWINMOS","35","","12/08/2018");
INSERT INTO sales_order VALUES("572","RS-7023200","1223","1","50","7","P-4039333","360-WIRE-PAD","","45","","12/08/2018");
INSERT INTO sales_order VALUES("573","RS-20202","1331","1","15","5","P-0322302","PSP BATTERY","PSP  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("574","RS-3307222","798","1","25","5","P-802682","SD 2GB","TWINMOS ","25","","12/08/2018");
INSERT INTO sales_order VALUES("575","RS-3336352","1242","1","35","5","P-2233279","WD-CASE-3.0"," ","30","","12/08/2018");
INSERT INTO sales_order VALUES("576","RS-3336352","1399","1","80","15","P-6323403","ULTRA 32GB","SANDISK","70","","12/08/2018");
INSERT INTO sales_order VALUES("577","RS-500223","1235","1","28","5","P-23092323","DELL-BIG-PIN-19.5V","","28","","12/08/2018");
INSERT INTO sales_order VALUES("578","RS-20332","1222","2","130","40","P-2323633","SMART-WATCH","","70","","12/08/2018");
INSERT INTO sales_order VALUES("579","RS-376302","1405","1","30","3","P-222032","SANDISK 16GB","SANDISK","20","","12/08/2018");
INSERT INTO sales_order VALUES("580","RS-3243382","1411","1","2","1","P-25597322","THREAD","THREAD","2","","12/08/2018");
INSERT INTO sales_order VALUES("581","RS-2330393","1151","1","15","5","P-35223","EN-EL12CHARGER","NIKON","15","","12/08/2018");
INSERT INTO sales_order VALUES("582","RS-42333328","1427","3","129","0","P-024732","FLAT LONG","PAD","45","","12/08/2018");
INSERT INTO sales_order VALUES("583","RS-0322233","1421","1","50","10","P-520360","WIRELESS KEYBOARD","KEYBOARD","40","","12/08/2018");
INSERT INTO sales_order VALUES("584","RS-87323333","1547","1","15","6","P-20032","NP-F960 CHARGER","SONY","15","","12/08/2018");
INSERT INTO sales_order VALUES("585","RS-87323333","963","1","100","15","P-3233333","BN-VF733UBATTERY","JVC","100","","12/08/2018");
INSERT INTO sales_order VALUES("586","RS-87323333","1092","2","100","20","P-3522238","EN-EL9BATTERY","NIKON","50","","12/08/2018");
INSERT INTO sales_order VALUES("587","RS-87323333","1403","2","40","26","P-02323","RECHARGERABLE BATTERY","DUREACELL","20","","12/08/2018");
INSERT INTO sales_order VALUES("588","RS-3943332","1392","1","15","2","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("589","RS-020073","1247","1","30","6","P-2070433","HP-BLUE-19.5V","","30","","12/08/2018");
INSERT INTO sales_order VALUES("590","RS-020073","1390","1","12","1","P-23020233","TF 2GB","MEMORY","12","","12/08/2018");
INSERT INTO sales_order VALUES("591","RS-0232233","1387","2","50","20","P-233334","TF 32GB","MEMORY ","25","","12/08/2018");
INSERT INTO sales_order VALUES("592","RS-622333","1259","2","48","8","P-250420","GEAR-BLACK","","24","","12/08/2018");
INSERT INTO sales_order VALUES("593","RS-32380","1392","2","28","4","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("594","RS-32380","1391","2","30","6","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("595","RS-32380","1389","2","34","6","P-39306","TF 16GB","MEMORY","17","","12/08/2018");
INSERT INTO sales_order VALUES("596","RS-32380","1518","2","30","4","P-3204236","4GB","GENX ","15","","12/08/2018");
INSERT INTO sales_order VALUES("597","RS-32380","1559","2","34","8","P-032225","8GB","GENX","17","","12/08/2018");
INSERT INTO sales_order VALUES("598","RS-32380","1405","2","40","6","P-222032","SANDISK 16GB","SANDISK","20","","12/08/2018");
INSERT INTO sales_order VALUES("599","RS-33833","1476","1","700","100","P-0202322","J4","SAMSUNG ","700","","12/08/2018");
INSERT INTO sales_order VALUES("600","RS-4333","1275","1","3","1","P-332322","CARD-READER-SINGLE","","2","","12/08/2018");
INSERT INTO sales_order VALUES("601","RS-37623","1392","1","20","2","P-3302223","TF 4GB","MEMORY  ","14","","12/08/2018");
INSERT INTO sales_order VALUES("602","RS-3230302","1296","1","40","10","P-5330220","CG368-BT","","40","","12/08/2018");
INSERT INTO sales_order VALUES("604","RS-3302203","810","1","33","7","P-7292363","32GB-SANDISK","SANDISK","35","","12/08/2018");
INSERT INTO sales_order VALUES("605","RS-3302203","810","1","33","7","P-7292363","32GB-SANDISK","SANDISK","35","","12/08/2018");
INSERT INTO sales_order VALUES("606","RS-3302203","1406","2","36","6","P-63329","8GB","SANDISK","18","","12/08/2018");
INSERT INTO sales_order VALUES("607","RS-3302203","1389","2","34","6","P-39306","TF 16GB","MEMORY","17","","12/08/2018");
INSERT INTO sales_order VALUES("608","RS-3302203","1389","5","85","15","P-39306","TF 16GB","MEMORY","17","","12/08/2018");
INSERT INTO sales_order VALUES("609","RS-3302203","1391","5","75","15","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("610","RS-3302203","1395","2","40","6","P-39323","TOSHIBA 16GB","TOSHIBA ","20","","12/08/2018");
INSERT INTO sales_order VALUES("611","RS-3302203","1396","1","33","7","P-220350","TOSHIBA 32GB","TOSHIBA","33","","12/08/2018");
INSERT INTO sales_order VALUES("612","RS-3302203","1389","2","34","6","P-39306","TF 16GB","MEMORY","17","","12/08/2018");
INSERT INTO sales_order VALUES("613","RS-3302203","1391","2","30","6","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("614","RS-3302203","1391","2","30","6","P-20490032","TF 8GB","MEMORY  ","15","","12/08/2018");
INSERT INTO sales_order VALUES("615","RS-022498","1299","1","10","2","P-233332","PHILIPS-EARPIECE"," ","8","","12/08/2018");
INSERT INTO sales_order VALUES("616","RS-09220233","1299","1","8","2","P-233332","PHILIPS-EARPIECE"," ","8","","12/08/2018");
INSERT INTO sales_order VALUES("617","RS-09220233","1410","1","5","3","P-75209322","glass","protector ","5","","12/08/2018");





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



