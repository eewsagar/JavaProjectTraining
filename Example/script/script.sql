
drop database db_ExampleRegistration;
CREATE DATABASE IF NOT EXISTS `db_ExampleRegistration` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_ExampleRegistration`;




CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(500) NOT NULL DEFAULT '0',
  `lname` varchar(500) NOT NULL DEFAULT '0',
  `gender` varchar(500) NOT NULL DEFAULT '0',
  `mobile` varchar(500) NOT NULL DEFAULT '0',
  `email` varchar(500) NOT NULL DEFAULT '0',
  `password` varchar(500) NOT NULL DEFAULT '0',
  `field1` varchar(500) NOT NULL DEFAULT '0',
  `field2` varchar(500) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO `user` (`id`, `fname`, `lname`, `gender`, `mobile`, `email`, `password`, `status`) VALUES
	(1, 'jaydeep', 'salokhe', 'Male', '9898989898', 'jaydeep@gmail.com', '123', 'accept'),
	(2, 'priti', 'sdkfjl', 'FeMale', '8787878787', 'priti@gmail.com', '123', 'accept'),
	(3, 'tejas', 'sankpal', 'Male', '9898989898', 'tejas@gmail.com', '123', 'accept');