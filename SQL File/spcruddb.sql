-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 06:46 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spcruddb`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `sp_delete`$$
CREATE  PROCEDURE `sp_delete` (`rid` INT(5))  BEGIN
delete from tblusers where id=rid;
END$$

DROP PROCEDURE IF EXISTS `sp_insert`$$
CREATE  PROCEDURE `sp_insert` (`fname` VARCHAR(120), `lname` VARCHAR(120), `emailid` VARCHAR(150), `cntnumber` BIGINT(12), `address` VARCHAR(255))  BEGIN
insert into tblusers(FirstName,LastName,EmailId,ContactNumber,Address) value(fname,lname,emailid,cntnumber,address);
END$$

DROP PROCEDURE IF EXISTS `sp_read`$$
CREATE  PROCEDURE `sp_read` ()  BEGIN
select * from tblusers;
END$$

DROP PROCEDURE IF EXISTS `sp_readarow`$$
CREATE  PROCEDURE `sp_readarow` (IN `rid` INT(5))  BEGIN
select * from tblusers where id=rid;
END$$

DROP PROCEDURE IF EXISTS `sp_update`$$
CREATE  PROCEDURE `sp_update` (`fname` VARCHAR(120), `lname` VARCHAR(120), `emailid` VARCHAR(150), `cntnumber` BIGINT(12), `address` VARCHAR(255), `rid` INT(5))  BEGIN
update tblusers set FirstName=fname,LastName=lname,EmailId=emailid,ContactNumber=cntnumber,Address=address where id=rid;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(120) NOT NULL,
  `ContactNumber` char(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--

--
--

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
