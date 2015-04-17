-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2015 at 11:02 AM
-- Server version: 5.5.41-cll-lve
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ev_dist_rep`
--

CREATE TABLE IF NOT EXISTS `ev_dist_rep` (
  `rep_dist` int(2) DEFAULT NULL,
  `rep_name` varchar(38) DEFAULT NULL,
  `rep_phone` varchar(29) DEFAULT NULL,
  `rep_address` varchar(72) DEFAULT NULL,
  `rep_url` varchar(36) DEFAULT NULL,
  `rep_email` varchar(36) DEFAULT NULL,
  `rep_display` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ev_dist_rep`
--

INSERT INTO `ev_dist_rep` (`rep_dist`, `rep_name`, `rep_phone`, `rep_address`, `rep_url`, `rep_email`, `rep_display`) VALUES
(1, 'Senator Don Gaetz', '(850) 487-5001', '420 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s1', 'gaetz.don.web@flsenate.gov', 'Sen. Gaetz'),
(2, 'Senator Greg Evers', '(850) 487-5002', '308 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s2', 'evers.greg.web@flsenate.gov', 'Sen. Evers'),
(3, 'Senator Bill Montford', '(850) 487-5003', '214 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s3', 'montford.bill.web@flsenate.gov', 'Sen. Montford'),
(4, 'Senator Aaron Bean', '(850) 487-5004', '302 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 3239', 'http://www.flsenate.gov/senators/s4', 'bean.aaron.web@flsenate.gov', 'Sen. Bean'),
(5, 'Senator Charles S. "Charlie" Dean, Sr.', '(850) 487-5005', '311 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s5', 'dean.charles.web@flsenate.gov', 'Sen. Dean'),
(6, 'Vacant', 'Vacant', 'Vacant', 'http://www.flsenate.gov/senators/s6', 'Vacant', 'Vacant Seat'),
(7, 'Senator Rob Bradley', '(850) 487-5007', '208 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s7', 'bradley.rob.web@flsenate.gov', 'Sen. Bradley'),
(8, 'Senator Dorothy L. Hukill', '(850) 487-5008', '305 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s8', 'hukill.dorothy.web@flsenate.gov', 'Sen. Hukill'),
(9, 'Senator Audrey Gibson', '', '205 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s9', 'gibson.audrey.web@flsenate.gov', 'Sen. Gibson'),
(10, 'Senator David Simmons', '(850) 487-5010', '400 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s10', 'simmons.david.web@flsenate.gov', 'Sen. Simmons'),
(11, 'Senator Alan Hays', '(850) 487-5011', '320 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s11', 'hays.alan.web@flsenate.gov', 'Sen. Hays'),
(12, 'Senator Geraldine F. "Geri" Thompson', '(850) 487-5012', '210 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s12', 'thompson.geraldine.web@flsenate.gov', 'Sen. Thompson'),
(13, 'Senator Andy Gardiner', '(850) 487-5013', '409 The Capitol\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s13', 'gardiner.andy.web@flsenate.gov', 'Sen. Gardiner'),
(14, 'Senator Darren Soto', '(850) 487-5014', '220 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s14', 'soto.darren.web@flsenate.gov', 'Sen. Soto'),
(15, 'Senator Kelli Stargel', '(850) 487-5015', '324 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s15', 'stargel.kelli.web@flsenate.gov', 'Sen. Stargel'),
(16, 'Senator Thad Altman', '(850) 487-5016', '314 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s16', 'altman.thad.web@flsenate.gov', 'Sen. Altman'),
(17, 'Senator John Legg', '(850) 487-5017', '316 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s17', 'legg.john.web@flsenate.gov', 'Sen. Legg'),
(18, 'Senator Wilton Simpson', '(850) 487-5018', '322 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s18', 'simpson.wilton.web@flsenate.gov', 'Sen. Simpson'),
(19, 'Senator Arthenia L. Joyner', '(850) 487-5019', '200 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s19', 'joyner.arthenia.web@flsenate.gov', 'Sen. Joyner'),
(20, 'Senator Jack Latvala', '(850) 487-5020', '408 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s20', 'latvala.jack.web@flsenate.gov', 'Sen. Latvala'),
(21, 'Senator Denise Grimsley', '(850) 487-5021', '306 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s21', 'grimsley.denise.web@flsenate.gov', 'Sen. Grimsley'),
(22, 'Senator Jeff Brandes', '(850) 487-5022', '318 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s22', 'brandes.jeff.web@flsenate.gov', 'Sen. Brandes'),
(23, 'Senator Garrett Richter', '(850) 487-5023', '404 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s23', 'richter.garrett.web@flsenate.gov', 'Sen. Richter'),
(24, 'Senator Tom Lee', '(850) 487-5024', '418 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s24', 'lee.tom.web@flsenate.gov', 'Sen. Lee'),
(25, 'Senator Joseph Abruzzo', '(850) 487-5025', '222 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s25', 'abruzzo.joseph.web@flsenate.gov', 'Sen. Abruzzo'),
(26, 'Senator Bill Galvano', '(850) 487-5026', '330 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s26', 'galvano.bill.web@flsenate.gov', 'Sen. Galvano'),
(27, 'Senator Jeff Clemens', '(850) 487-5027', '226 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s27', 'clemens.jeff.web@flsenate.gov', 'Sen. Clemens'),
(28, 'Senator Nancy C. Detert', '(850) 487-5028', '416 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s28', 'detert.nancy.web@flsenate.gov', 'Sen. Detert'),
(29, 'Senator Jeremy Ring', '(850) 487-5029', '405 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s29', 'ring.jeremy.web@flsenate.gov', 'Sen. Ring'),
(30, 'Senator Lizbeth Benacquisto', '(850) 487-5030', '326 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s30', 'benacquisto.lizbeth.web@flsenate.gov', 'Sen. Benacquisto'),
(31, 'Senator Christopher L. Smith', '(850) 487-5031', '202 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s31', 'smith.chris.web@flsenate.gov', 'Sen. Smith'),
(32, 'Senator Joe Negron', '(850) 487-5032', '412 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s32', 'negron.joe.web@flsenate.gov', 'Sen. Negron'),
(33, 'Senator Eleanor Sobel', '(850) 487-5033', '410 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s33', 'sobel.eleanor.web@flsenate.gov', 'Sen. Sobel'),
(34, 'Senator Maria Lorts Sachs', '(850) 487-5034', '216 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s34', 'sachs.maria.web@flsenate.gov', 'Sen. Sachs'),
(35, 'Senator Gwen Margolis', '(850) 487-5035', '414 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s35', 'margolis.gwen.web@flsenate.gov', 'Sen. Margolis'),
(36, 'Senator Oscar Braynon II', '(850) 487-5036', '213 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s36', 'braynon.oscar.web@flsenate.gov', 'Sen. Braynon'),
(37, 'Senator Anitere Flores', '(850) 487-5037', '413 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s37', 'flores.anitere.web@flsenate.gov', 'Sen. Flores'),
(38, 'Senator Rene Garcia', '(850) 487-5038', '310 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s38', 'garcia.rene.web@flsenate.gov', 'Sen. Garcia'),
(39, 'Senator Dwight Bullard', '(850) 487-5039', '218 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s39', 'bullard.dwight.web@flsenate.gov', 'Sen. Bullard'),
(40, 'Senator Miguel DiazDeLaPortilla', '(850) 487-5040', '406 Senate Office Building\n404 South Monroe Street\nTallahassee, FL 32399', 'http://www.flsenate.gov/senators/s40', 'portilla.miguel.web@flsenate.gov', 'Sen. Diaz de la Portilla'),
(98, 'Test', 'Test', 'Test', 'Test', 'Test', 'Test'),
(99, 'No representative identified.', 'No representative identified.', 'No representative identified.', 'No representative identified.', 'No representative identified.', 'No representative identified.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
