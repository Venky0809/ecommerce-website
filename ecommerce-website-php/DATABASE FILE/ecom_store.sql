-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 09:33 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`) VALUES
(1, 'About Us - Our Story', '\r\n Welcome to SRSV website where you can find different types of construction materials which are used for different types of constructions.This website is useful because nowadays people are fond of different materials that are available across different areas but here you can find all construction materials at a same place.');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Administrator', 'admin@mail.com', 'Password@123', 'user-profile-min.png', '7777775500', 'Morocco', 'Front-End Developer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical ');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`,`cat_image`) VALUES
(2, 'Apartments', 'no','apartments.jpg'),
(3, 'Individual Houses', 'no','individual houses.jpg'),
(4, 'Villas', 'no','villas.jpg'),
(5, 'Others', 'no','others.jpg');
-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'ecomstore@mail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(1, 3, 'Sale', '50', 'RAKESH200', 2, 1),
(2, 14, 'Sale', '100', 'BUY200', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'srikar', 'srikargupta9202@gmail.com', 'Srikar@1', 'India', 'vijayawada', '9381443005', 'vijaywada', 'srikar.jpeg', '::1', ''),
(3, 'Surya', 'suryavamsi9366@gmail.com', 'Surya@1', 'China', 'Wuhan', '9347681233', 'city mall', 'surya.png', '::1', ''),
(4, 'Rakesh', 'chandrarakesh4334@gmail.com', 'Rakesh@1', 'France', 'One City', '9652375956', 'Paris', 'rakesh.png', '::1', '1427053935'),
(5, 'Venkatesh', 'venkateshmaram24@gmail.com', 'Venkatesh@1', 'US', 'New York', '9014967448', '112 Bleck Street', 'venkatesh.png', '::1', '1634138674'),
(6, 'Sample Customer', 'customer@mail.com', 'Password123', 'Sample Country', 'Sample City', '7800000000', 'Sample Address', 'user-icn-min.png', '::1', '174829126');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending'),
(23, 3, 20, 1762810884, 1, 'Medium', '2021-09-14 08:35:57', 'Complete'),
(24, 4, 100, 1972602052, 1, 'Large', '2021-09-14 16:37:52', 'Complete'),
(25, 4, 90, 2008540778, 1, 'Medium', '2021-09-14 16:43:15', 'pending'),
(27, 5, 120, 2138906686, 1, 'Small', '2021-09-15 03:18:41', 'Complete'),
(28, 5, 180, 361540113, 2, 'Medium', '2021-09-15 03:25:42', 'Complete'),
(29, 3, 100, 858195683, 1, 'Large', '2021-09-15 03:14:01', 'Complete'),
(31, 6, 245, 901707655, 1, 'Medium', '2021-09-15 03:52:18', 'Complete'),
(32, 6, 75, 2125554712, 1, 'Large', '2021-09-15 03:52:58', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Ecolite', 'no', 'ecolite.jpg'),
(3, 'Ambuja', 'no', 'ambuja.png'),
(4, 'Jaguar', 'no', 'jaguar.jpg'),
(5, 'Magicrete', 'no', 'magicrete.jpg'),
(7, 'Xtralite', 'no', 'xtralite.png'),
(8, 'Weber', 'no', 'weber.png'),
(9,'Eros','no','eros.png'),
(10,'Ultra Tech','no','ultratech.jpg'),
(11,'Delux','no','delux.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni', 443, 865, '11/1/2016'),
(4, 6906, 400, 'Western Union', 101025780, 696950, 'January 1'),
(5, 10023, 20, 'Bank Code', 1000010101, 6969, '09/14/2021'),
(6, 69088, 100, 'Bank Code', 1010101022, 88669, '09/14/2021'),
(7, 1835758347, 480, 'Western Union', 1785002101, 66990, '09-04-2021'),
(8, 1835758347, 480, 'Bank Code', 1012125550, 66500, '09-14-2021'),
(9, 1144520, 480, 'Bank Code', 1025000020, 66990, '09-14-2021'),
(10, 2145000000, 480, 'Bank Code', 2147483647, 66580, '09-14-2021'),
(20, 858195683, 100, 'Bank Code', 1400256000, 47850, '09-13-2021'),
(21, 2138906686, 120, 'Bank Code', 1455000020, 202020, '09-13-2021'),
(22, 2138906686, 120, 'Bank Code', 1450000020, 202020, '09-15-2021'),
(23, 361540113, 180, 'Western Union', 1470000020, 12001, '09-15-2021'),
(24, 361540113, 180, 'UBL/Omni', 1258886650, 200, '09-15-2021'),
(25, 901707655, 245, 'Western Union', 1200002588, 88850, '09-15-2021');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(17, 2, 1715523401, '9', 2, 'Large', 'pending'),
(23, 3, 1762810884, '12', 1, 'Medium', 'Complete'),
(24, 4, 1972602052, '5', 1, 'Large', 'Complete'),
(25, 4, 2008540778, '13', 1, 'Medium', 'pending'),
(27, 5, 2138906686, '14', 1, 'Small', 'Complete'),
(28, 5, 361540113, '13', 2, 'Medium', 'Complete'),
(29, 3, 858195683, '5', 1, 'Large', 'Complete'),
(31, 6, 901707655, '8', 1, 'Medium', 'Complete'),
(32, 6, 2125554712, '15', 1, 'Large', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(5, 7, 5, 5, '2021-09-14 09:13:25', 'Magicrete Block Joining Mortar', 'product-url-5', 'product1.png', 'product2.jpg', 'product3.jpg', 450, 300, '\r\n<p>This is a sample product description.</p>\r\n', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', '\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n', 'Jackets', 'Gift', 'product'),
(8, 4, 2, 4, '2021-09-14 10:13:02', 'Jaguar Bricks', 'product-url-8', 'product4.jpg', 'product5.jpg', 'product6.jpg', 749, 500, '\r\n\r\n\r\n<p>This is a sample product description.</p>\r\n\r\n\r\n', '\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n\r\n\r\n', '\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n', 'Coats', 'New', 'product'),
(9, 5, 4, 7, '2021-09-14 17:06:30', 'Xtralite cement', 'product-url-9', 'product7.jpg', 'product8.jpg', 'product9.jpg', 410, 305, '\r\n\r\n\r\n\r\n<p>This is a sample product description.</p>\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n\r\n', 'T-Shirt', 'Sale', 'product'),
(12, 8, 5, 2, '2021-05-25 09:15:09', 'Ecolite Paints', 'product-url-10', 'ecolitepaints1.jpg', 'ecolitepaints2.jpg', 'ecolitepaints3.jpg', 410, 274, '\r\n\r\nThis product is made with Primeblue, a high-performance recycled material made in part with Parley Ocean Plastic. 50% of the upper is textile, 92% of the textile is Primeblue yarn. No virgin polyester.', '\r\n\r\nComfortable and responsive, Ultraboost became our first shoe to be as popular in streetwear style as it is in performance running.', '\r\nhttps://assets.adidas.com/videos/q_auto,f_auto,g_auto/599fff35a3cf432aa9bbac7c0091316f_d98c/Ultraboost_21_Primeblue_Shoes_Blue_FX7729_video.mp4\r\n', 'sneakers adidas ultraboost shoes', 'New', 'product'),
(13, 9, 2, 3, '2021-09-14 16:26:51', 'Ambuja Plywood', 'product-url-11', 'ambujaplywood1.jpg', 'ambujaplywood2.jpg', 'ambujaplywood3.jpg', 2926, 2500, '\r\n\r\nThis is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text.\r\n\r\n\r\n\r\n', '\r\n\r\n\r\nThis is a sample text.\r\n\r\n', '\r\n\r\n\r\nThis is a sample text.\r\n\r\n\r\n', 'nike sportswear', 'Featured', 'product'),
(14, 5, 5, 7, '2021-09-14 17:03:38', 'Xtralite cement', 'product-url-9', 'product7.jpg', 'product8.jpg', 'product9.jpg', 650, 499, '\r\nThis is a demo.\r\n\r\n\r\n', '\r\n\r\n\r\nThis is a demo.\r\n', '\r\n\r\n\r\nThis is a demo.\r\n', 'demo test product', 'Test', 'product'),
(15, 5, 5, 8, '2021-09-15 03:46:42', 'Weber Cement', 'product-url-13', 'webercement1.jpg', 'webercement2.jpg', 'webercement3.jpg', 600, 500, '\r\nTHIS IS A DEMO DESCRIPTION\r\n', '\r\n\r\nDEMO FEATURES\r\n\r\n', '\r\n\r\n\r\n\r\n', 'weber cement', 'Sale', 'product'),
(16, 2, 4, 5, '2022-01-13 08:40:42', 'blockadhesive-10kg pack', 'adhesive', 'mba1.jpg', 'mba2.jpg', 'mba3.jpg',325, 300, '\r\nblock adhesive is a polymer-based versatile jointing material specially designed to provide high bonding, durability and speed up the build process of AAC blocks, fly ash bricks, concrete blocks, etc.\r\n', '\r\n\r\nHigh adhesive strength with a thin jointing layer.\r\n\r\n', '\r\n\r\n\r\n\r\n', 'adhesive', 'Sale', 'product'),
(17, 2, 3, 7, '2022-01-13 08:41:42', 'epoxyadhesive-1.8kg pack', 'adhesive2', 'ea1.jpg', 'ea2.jpg', 'ea1.jpg',1190, 1100, '\r\nEpoxies are created by polymerizing a mixture of two starting compounds, the resin and the hardener.\r\n', '\r\n\r\nHigh strength.Low Shrinkage.Excellent adhesion to various substrates.\r\n\r\n', '\r\n\r\n\r\n\r\n', 'adhesive', 'Sale', 'product'),
(18, 2, 4, 7, '2022-01-13 08:42:42', 'fevicol-1kg pack', 'gum', 'fv1.jpg', 'fv2.jpg', 'fv3.jpg',210, 200, '\r\n"Fevicol SH" is a synthetic resin adhesive intended for wood working and various materials where one of the surfaces to be bonded is porous. SH strongly binds wood, plywood, laminate, veneers, MDF and all types of boards and cork.\r\n', '\r\n\r\nSolvent free.Non-hazardous, non-flammable.Free from offensive odour.\r\n\r\n', '\r\n\r\n\r\n\r\n', 'adhesive', 'Sale', 'product'),
(21,3,2,10,'2021-09-14 09:13:25','Jelly Coarse Aggregate(12mm)','aggregate-url-21','12mm1.jpg','12mm2.jpg','12mm3.jpg',700,675,'\r\n40 mm. GCP Coarse Aggregates is also known as Blue metal, Jelly Stones or crushed stone. It is the fillers in concrete & acts as one of the load bearers. Coarse aggregates are available in different sizes ranging from 12mm, 20mm,40mm.\r\n','\r\n\r\nCoarse aggregates are used in different ways in the construction industry. The aggregates are also used as ballast in road and railway works to resist the overall load, to distribute the load properly to the soil base, and drain off the rainwater.They also play a major role in sewage treatment processes and water filtration. quickly from road.\r\n\r\n','\r\n\r\n\r\n\r\n',' Coarse Aggregate','Sale', 'product'),
(22,3,3,10,'2021-09-14 10:13:02','Gray Hard Crushed Aggregate','aggregate-url-22','8mm1.jpg','8mm2.jpg','8mm3.jpg',1300,1200,'\r\nwe have complete line of crushed stone aggregates products to meet the needs of all your construction products. our products meet all applicable specifications, and we strive to make sure you always have the materials when you need them. we can supplyalmost any needed aggregates; contact us for more information. A few of our construction products include:6mm, 12 mm, 20 mm,30/40 mm\r\n','\r\n\r\nGrade Standard: Hydroponics, Aquaponics, Plant nursery, seeding growth production nursery, agriculture, horticulture. Usage/Application: Construction, Packaging Type: PP Bag, Packaging Size: 50 Liters, 100 Liters, 2.5m3 Jumbo Bags\r\n\r\n','\r\n\r\n\r\n\r\n',' Crushed Aggregate','Sale', 'product'),
(31, 4, 2, 2, '2022-01-13 08:44:42', '4inchredbricks-per500', '4b', 'rb1.jpg', 'rb2.jpg', 'rb3.jpg',3000, 2900, '\r\n\We are a well known organization that is engaged in offering superior quality 4 Inch Red Bricks.r\n', '\r\n\r\nFine finish Easy to install Durable Dimensional accuracy Sturdiness\r\n\r\n', '\r\n\r\n\r\n\r\n', 'bricks', 'Sale', 'product'),
(32, 4, 3, 2, '2022-01-13 08:44:42', '6inchredbricks-per500', '6b', '6rb1.jpg', '6rb2.jpg', '6rb3.jpg',3500, 3300, '\r\n\We are a well known organization that is engaged in offering superior quality 6 Inch Red Bricks.r\n', '\r\n\r\nFine finish Easy to install Durable Dimensional accuracy Sturdiness\r\n\r\n', '\r\n\r\n\r\n\r\n', 'bricks', 'Sale', 'product'),
(33, 4, 2, 2, '2022-01-13 08:45:42', 'brokenbricks-per500', 'bb', 'bb1.jpg', 'bb2.jpg', 'bb3.jpg',2000, 1800, '\r\n\We are a well known organization that is engaged in using recyclable broken Bricks.r\n', '\r\n\r\nFine finish Easy to install Durable Dimensional accuracy Sturdiness\r\n\r\n', '\r\n\r\n\r\n\r\n', 'bricks', 'Sale', 'product'),
(34, 4, 3, 2, '2022-01-13 08:46:42', '6inchflyash bricks-per500', '6inb', 'fb1.jpg', 'fb2.jpg', 'fb3.jpg',4500, 4480, '\r\n\We are a well known organization that is engaged in using the Bricks.r\n', '\r\n\r\nFine finish Easy to install Durable Dimensional accuracy Sturdiness\r\n\r\n', '\r\n\r\n\r\n\r\n', 'bricks', 'Sale', 'product'),
(23,3,4,10,'2021-08-25 09:15:09','20mm Crushed Stone Aggregate per ton','aggregate-url-23','20mm1.jpg','20mm2.jpg','20mm3.jpg',650,630,'\r\nWe are offering 20mm Crushed Stone Aggregate to our clients. We have severed the construction industry of Indore and Pithampur area for a time, and waiting to see the cities cleaner and higher , which is possible by the good quality of raw materials in concrete.\r\n','\r\n\r\nCrack Resistance, Fine Finished, Optimum Strength, Stain Resistance, Washable\r\n\r\n','\r\n\r\n\r\n\r\n',' Crushed Stone Aggregate','Sale', 'product'),
(24,3,5,10,'2021-09-14 17:03:38','Stone 40mm Construction Aggregate per ton','aggregate-url-24','40mm1.jpg','40mm2.jpg','40mm3.jpg',550,540,'\r\nPioneers in the industry, we offer 40mm construction aggregate, 20mm construction aggregate, 12mm construction crushed stone aggregate, 10mm construction aggregate and 6mm construction crushed stone aggregate from India.\r\n','\r\n\r\n40mm, Stone, Used for Construction\r\n\r\n','\r\n\r\n\r\n\r\n',' Construction Aggregate','Sale', 'product'),
(35, 4, 3, 8, '2022-01-13 08:47:42', '6inch clay bricks-per500', '6incb', '6cb1.jpg', '6cb2.jpg', '6cb3.jpg',6000,5900, '\r\n\We are a well known organization that is engaged in using the Bricks.r\n', '\r\n\r\nFine finish Easy to install Durable Dimensional accuracy Sturdiness\r\n\r\n', '\r\n\r\n\r\n\r\n', 'bricks', 'Sale', 'product'),
(25,3,2,10,'2021-09-15 03:46:42','Coarse Aggregate Black Stone Chip(16mm) per ton','aggregate-url-25','gca1.jpg','gca2.jpg','gca3.jpg',2000,1850,'\r\nQuality is checked at each stage and the final products are tested against stringent quality standards ensuring timely delivery in the process. The company is consistently updating its infrastructure and technical facilities to overpower tough competition in the market. One20Container\r\n','\r\n\r\nSolid, Black,Landscaping, 10,20,30,40mm\r\n\r\n','\r\n\r\n\r\n\r\n','Coarse Aggregate','Sale', 'product'),
(41, 6, 3, 2, '2022-01-13 09:45:42', 'ROMA WHITE SWITCHES-PACKOF10', 'e1', 'rws1.jpg', 'rws2.jpg', 'rws3.jpg',639,549, '\r\n\roma 10a one way modular switch white s are made with very high quality thermo setting plastic that can withstand electrical surge or heat. It is designed and manufactured with japanese technology by panasonic.r\n', '\r\n\r\nOne Way Switch Number of Switches: 10 Made of Plastic Maximum Current: 10 A Pack of: 10\r\n\r\n', '\r\n\r\n\r\n\r\n', 'switches', 'Sale', 'product'),
(42, 6, 3, 2, '2022-01-13 09:46:42', 'anchor by panasonic 39673 Fancy Angle Type Lamp Holder 240 V (White, Pack of 10)', 'e2', 'atlh1.jpg', 'atlh2.jpg', 'atlh3.jpg',639,549, '\r\n\Package Includes: 10 Pieces of Lamp holder r\n', '\r\n\r\nHigher current carring capacity with Low-resistance contact point. Ergonomic Designed with Enhanced Safety and Robust Functionality. Long Operational Life, Shock proof and fire retardant Material With Metal Ring. Fancy Batten Holder for Bulb and Lights heavy duty unbreakable poly carbonate material for robust reliability .\r\n\r\n', '\r\n\r\n\r\n\r\n', 'bulbholders', 'Sale', 'product'),
(43, 6, 3, 2, '2022-01-13 09:46:47', '2pin sockets-10perpack', 'e3', '2ps1.jpg', '2ps2.jpg', '2ps3.jpg',623,528, '\r\n\Current Rating :	6A Color :	White Rated Voltage :	240V \r\n','\r\n\r\nSeries :Gravity \r\n\r\n', '\r\n\r\n\r\n\r\n', 'sockets', 'Sale', 'product'),
(26,5,2,3,'2021-08-25 10:15:09','Masonry Cement per 50 kg ','Masonry-url-26','mc1.jpg','mc2.jpg','mc3.jpg',500,450,'\r\nMasonry cement consists of portland or blended cement, plasticizers, and an air entraining agent. Air-entraining agents protect mortar from freeze-thaw damage and provide additional workability. Pure is premixed ready to use mortar which is manufactured at our plant by intimate mixing in predetermined proportions of precisely tested ingredients as per specification laid down. ASTM C91 defines masonry cement by physical requirements and performance properties rather than ingredients.\r\n','\r\n\r\nEasy to use,15 years warranty\r\n\r\n','\r\n\r\n\r\n\r\n','Masonry Mortar Cement','Sale', 'product'),
(44, 6, 3, 2, '2022-01-13 09:47:47', 'Havells 1 Sqmm Green Life Line Plus Single Core HRFR PVC Insulated Flexible Cables, WHFFDNGA11X0, Length: 90 m', 'e4', 'hrfr1.jpg', 'hrfr2.jpg', 'hrf3.jpg',2118,1075, '\r\n\Internal Electrification & Power Supply to All Electrical Operated Equipments Like Fans, Lights & Aplliances \r\n','\r\n\r\nHigh Insulation Resistance. ROHS Compliant. Anti Termite & Anti Rodent. \r\n\r\n', '\r\n\r\n\r\n\r\n', 'electric cables', 'Sale', 'product'),
(45, 6, 2, 2, '2022-01-13 09:48:47', 'ANCHOR 9322 Porcelain Fuse Unit Pilot, 63 A, 415 V (Ivory), White, Standard', 'e5', 'fup1.jpg', 'fup2.jpg', 'fup3.jpg',649,620, '\r\n\Material: Porcelain Included components: 1 Anchor 415v Porcelain Fuse Unit Pilot 9322 Number of items in package: 1 First Piano switch introduced by Anchor Suitable for use in household, offices, shops, restaurants, hospitals and more \r\n','\r\n\r\nPenta is the largest selling range of elegant non-modular switches and accessories. This is also the First Piano Switch introduced in India. Epitomizing safety and reliability, this white range of non-modular switches and accessories has always been a perpetual part of every Indian household. \r\n\r\n', '\r\n\r\n\r\n\r\n', 'fuses', 'Sale', 'product'),
(27,5,3,5,'2021-09-15 09:15:09','Oil Well Cement per 50 kg','Oil-url-27','owc1.jpg','owc2.jpg','owc3.jpg',300,285,'\r\nOPC/PPC are used in Construction industry for Structural Concrete.Oil Well cements are used in the form of slurries in conditions encountered in drilling bore hole for oil exploration- not used for structural concrete although it will easily meet the requirement of OPC.\r\n','\r\n\r\nSpecial for Oil & Gas industries, General High Grade, Solid\r\n\r\n','\r\n\r\n\r\n\r\n','Oil Well Cement','Sale', 'product'),
(28,5,4,7,'2021-07-25 09:11:09','Quick Setting Cement per 50 kg','Quick-url-28','qsc1.jpg','qsc2.jpg','qsc3.jpg',500,455,'\r\nWe ensure regular availability, most competitive pricing and quality assurance. This range is available in varied grades and dimensions to ensure our credibility amongst our clients. Our manufactures make sure to carry out a full quality check before dispatching the product. Also the price range that we offer is reasonable so as to meet the growing expectations of our clients.\r\n','\r\n\r\nFast Setting Highly durable Long Service life\r\n\r\n','\r\n\r\n\r\n\r\n','Quick Setting Cement','Sale', 'product'),
(46, 7, 3, 8, '2022-01-13 09:49:47', 'BlockfixingMortar', 'm1', 'bfm1.jpg', 'bfm2.jpg', 'bfm3.jpg',623,528, '\r\n\Weber Blokset Plus is a high-grade polymer modified thin bed masonry mortar used for fixing and laying AAC, CLC, hollow, concrete, blocks and bricks. It is a Weber proprietary formulation of blended polymers, hydration retainers, cement, mineral additives and graded fine sand to have excellent grip and adhesion strength between the block to block and block to a cementitious surface. Weber Blokset Plus is in compliance with C1660-09 ASTM standards which is worlds only standard for then bed mortar for autoclaved aerated cement masonry. \r\n','\r\n\r\nImpact Resistant, Moisture Resistant, Water Resistant, Heat Resistant, Vibration Resistant.\r\n\r\n', '\r\n\r\n\r\n\r\n', 'mortar', 'Sale', 'product'),
(47, 7, 2, 8, '2022-01-13 09:49:47', 'polymerMortar-1kg', 'm2', 'pm1.jpg', 'pm2.jpg', 'pm3.jpg',348,300, '\r\n\Colour	Grey Item Weight	1 Kilograms Item Dimensions 	17.5 x 16.2 x 3.7 Centimeters \r\n','\r\n\r\nCONVENIENT AND READY TO USE Simcrete 401 is a Premixed Ready-to-use Crack Filler in 1kg pack. No Wastage. Enough quantity needed for small wall repair job. DO IT YOURSELF ( DIY )  Very easy to use requiring only a putty blade and some water to mix to form a paste. Use hand glove and safety googles for protection\r\n\r\n', '\r\n\r\n\r\n\r\n', 'mortar', 'Sale', 'product'),
(48, 7, 3, 2, '2022-01-13 09:49:47', 'ecolite epoxy mortar-3kg', 'm3', 'eem1.jpg', 'eem2.jpg', 'eem3.jpg',348,300, '\r\n\Eco Certified, eco-friendly, vitrified, high-slide, easy-to-clean grout and adhesive, bacteriostatic and fungistatic, water and stain proof for joints of between 0 and 10 mm with a high level of chemical and mechanical resistance, guarantees the continuity of ceramic surfaces, ideal for use in GreenBuilding. With very low volatile organic compound emissions. \r\n','\r\n\r\n Eco Certified, eco-friendly, vitrified, high-slide, easy-to-clean grout and mortar \r\n\r\n', '\r\n\r\n\r\n\r\n', 'mortar', 'Sale', 'product'),
(30,5,5,7,'2021-08-25 09:14:09','Portland Slag Cement','PS-url-30','psc1.jpg','psc2.jpg','psc3.jpg',300,249,'\r\n It is created with a combination of upto 45- 50% slag, 45% – 50% clinker, and 3-5% gypsum. PSC has been voted as the most suitable cement for mass construction because of its low heat of hydration.\r\n','\r\n\r\nUltimate compressive strength. Low risk of cracking. Superior finish\r\n\r\n','\r\n\r\n\r\n\r\n','Quick Setting Cement','Sale', 'product'),
(49, 7, 3, 2, '2022-01-13 09:49:47', 'Walpast Jointing Mortar-3kg', 'm4', 'wjm1.jpg', 'wjm2.jpg', 'wjm3.jpg',450,328, '\r\n\BuildWell Block Jointing Mortar is a superior water resistant cement based mortar specially formulated for joining blocks. This mortar is specially designed and manufactured under stringent quality controls to give superior adhesive strength, higher durability and a strong bond between the blocks. This unique combination enables this mortar to be thinner, compact and versatile. It also ensures higher bond strength and durability at only 3 mm thickness compare to the conventional mortar at 12-15 mm replacing the conventional cement and sand mix mortar completely.  \r\n','\r\n\r\n Excellent bonding to the blocks/bricks Better levelling Prevent seepage and water percolation Pre-mixed, only water to be added No curing is required after application. Thus saving water Thinner layer guarantees to be more cost-effective Easy to mix and faster to apply Plastering can be done after 24  rs. of application Time and manpower is saved High strength adhesion \r\n\r\n', '\r\n\r\n\r\n\r\n', 'mortar', 'Sale', 'product'),
(29,5,5,5,'2021-07-10 09:13:09','Insulation Cement per kg','Ins-url-29','ic3.jpg','ic2.jpg','ic1.jpg',400,375,'\r\nThese are processed using first grade raw materials which ensure its optimum quality and safe usage, these are 100% fire proof cement and widely used in various industrial sectors for different applications. These available in powder form and offered at budget friendly rates. Our products are extensively preferred by clients owing to its high purity.\r\n','\r\n\r\nFinest quality. Effectiveness. High purity \r\n\r\n','\r\n\r\n\r\n\r\n','Insulation Cement ','Sale', 'product'),
(61, 8, 2, 2, '2022-01-14 09:50:47', 'Oil Bound Distemper paints-1kg', 'p1', 'obdp1.jpg', 'obdp2.jpg', 'obdp3.jpg',700,650, '\r\n\ Our team of dedicated and hardworking professionals leaves no stone unturned in offering our customers with the premium quality of Oil Bound Distemper Paints. Processed to provide smooth matt finish on plastered surfaces, the offered oil bound distemper paints are ideal for different types of interior plastered surfaces and brick works. The offered oil bound distemper paints can be applied through roller or brush.  \r\n','\r\n\r\n Provide excellent matt finish at reasonable prices Ideal for brickworks and interior plasters Can be applied through roller or brush\r\n\r\n', '\r\n\r\n\r\n\r\n', 'paints', 'Sale', 'product'),
(62, 8, 3, 9, '2022-01-14 09:53:47', 'Acrylic Distemper Paints-20kg', 'p2', 'adp1.jpg', 'adp2.jpg', 'adp3.jpg',870,800, '\r\n\ We have acquired a prominent position for ourselves as foremost manufacturers of Wall Acrylic Distemper Paint. \r\n','\r\n\r\n It is multi purpose paint\r\n\r\n', '\r\n\r\n\r\n\r\n', 'paints', 'Sale', 'product'),
(63, 8, 4, 11, '2022-01-14 09:58:47', 'Exterior Emulsion paint-20litres', 'p3', 'eep1.jpg', 'eep2.jpg', 'eep3.jpg',650,600, '\r\n\ In order to keep pace with the never-ending demands of customers, we are involved in offering a wide range of Paints. \r\n','\r\n\r\n It is multi purpose paint\r\n\r\n', '\r\n\r\n\r\n\r\n', 'paints', 'Sale', 'product'),
(64, 8, 2, 9, '2022-01-14 09:58:47', 'Fire Retardant paint-1litres', 'p4', 'frp1.jpg', 'frp2.jpg', 'frp3.jpg',2450,2300, '\r\n\ Flame retardant paints are innovation in the painting system. The paints provide protection in the extreme conditions, typically, when the temperature is over 600 Degrees. Flame is categorized into 4 distinct levels viz-a-viz laminar, premixed; laminar, diffusion; turbulent, premixed and turbulent, diffusion. The Bunsen burner flame falls in the category of laminar premixed. The candle flame is the laminar diffusion flame. The maximum temperature of the candle is 1400°C. The boilers, furnaces etc. show the turbulent premixed flames. Most of the devastating fires that happen fall in the category of turbulent diffusion flames. Those objects which are small, have low-density, low-conductivity objects absorb heat quickly. The exchange of heat will take more time if the object was initially at the room temperature. The rise in temperature will take more time.\r\n','\r\n\r\n •HhPerformance & High Build Paint System •Solvent Based Paint System •Protects Against Cellulosic Fires •Ideal for Use in the Wooden and Masonry Units •Coating of In-tumescent fireproofing\r\n\r\n', '\r\n\r\n\r\n\r\n', 'paints', 'Sale', 'product'),
(65, 8, 4, 9, '2022-01-14 09:59:47', 'White paint-1litres', 'p5', 'wp1.jpg', 'wp2.jpg', 'wp3.jpg',265,250, '\r\n\   Being a foremost organization in this industry, we are actively engaged in offering the finest quality range of Dulux Pure White Paint.\r\n','\r\n\r\n Usage: Walls and ceilingsSuitable surfaces: Multi-surface\r\n\r\n', '\r\n\r\n\r\n\r\n', 'paints', 'Sale', 'product'),
(66, 9, 2, 11, '2022-01-14 10:10:25', 'Black PAC Shuttering Board-sqft', 'pl1', 'bpsb1.jpg', 'bpsb2.jpg', 'bpsb3.jpg',55,50, '\r\n\We are one of the leading and prominent Manufacturer of PAC Shuttering Board.\r\n','\r\n\r\n Is It Water Resistant:Water ResistantMaterial:Plastic and Aluminum\r\n\r\n', '\r\n\r\n\r\n\r\n', 'plywood', 'Sale', 'product'),
(67, 9, 2, 11, '2022-01-14 10:11:25', 'Brown Greenply Plywood, Thickness: 4-25 mm', 'pl2', 'bgp1.jpg', 'bgp2.jpg', 'bgp3.jpg',94,90, '\r\n\We are leading supplier of Greenply Plywood.\r\n','\r\n\r\nMoisture resistant Termite proof Impeccable finish Sturdy construction\r\n\r\n', '\r\n\r\n\r\n\r\n', 'plywood', 'Sale', 'product'),
(68, 9, 4, 11, '2022-01-14 10:11:25', '9 Mm Waterproof Plywood For Furniture-sqft', 'pl3', '9wpf1.jpg', '9wpf2.jpg', '9wpf3.jpg',55,50, '\r\n\Owing to our expertise in this field, our firm is engaged in supplying an extensive array of\r\n','\r\n\r\nIt is very good water resistant\r\n\r\n', '\r\n\r\n\r\n\r\n', 'plywood', 'Sale', 'product'),
(69, 9, 3, 11, '2022-01-14 10:15:25', 'Architect Ply, 12 Mm And 16mm-sqft', 'pl4', 'ap1.jpg', 'ap2.jpg', 'ap3.jpg',75,60, '\r\n\Architect Ply is a premium product from the house of CenturyPly. It is made from exclusive hardwood species and bonded with an unextended phenol formaldehyde resin. Manufactured with the revolutionary GLP technology, it is 100% borer and termite proof. Architect Ply has negligible core gaps, besides having a higher face thickness. And what’s more, it comes with a lifetime warranty along with 4 times money back policy. T&C Apply.\r\n','\r\n\r\nBoiling Water Proof Borer Termite Proof Negligible warp and bend Extremely uniform, with minimal thickness variation Comes with a Lifetime Warranty\r\n\r\n', '\r\n\r\n\r\n\r\n', 'plywood', 'Sale', 'product'),
(70, 9, 4, 11, '2022-01-14 10:15:25', 'Yellow Coloured PVC Plywood, Thickness: 18 mm, Size: 8 X 4 Feet-sqft', 'pl5', 'ycp1.jpg', 'ycp2.jpg', 'ycp3.jpg',105,100, '\r\n\Coloured PVC Plywood are similar to heavy PVC Foam Boards. They are Rigid PVC Sheets in matte surface finish manufactured using foaming agent to foam the PVC Sheets & colours are added to make them attractive and ready to use without any additional process. These sheets are extruded using Semi-Celuka process in colours. The formulation of these sheets is different from normal Sunboards making them more tough and heavy weight. These sheets are in higher density like 0.50 or more which makes them much more strong, sturdy & durable than normal Heavy Sunboards. Moreover attractive colours makes Veneers, Laminates and other decorative items redundant.\r\n','\r\n\r\nMaking furniture, false Ceiling, Grills, Letter Cutting, Advertising etc.\r\n\r\n', '\r\n\r\n\r\n\r\n', 'plywood', 'Sale', 'product'),
(71, 10, 2, 10, '2022-01-14 10:17:25', 'CRUSH SAND-perton', 's1', 'csp1.jpg', 'csp2.jpg', 'csp3.jpg',555,550, '\r\n\Crushed sand can be produced with our rotor impact mill (type RPM) or rotor centrifugal crusher (type RSMX). Both machines operate based on an impact principle and feature a vertical-shaft rotor. In both cases, this ensures high yields of sand, excellent cubical shapes and the ability to optimize the grain-size curve of the final product. In addition, both machines guarantee a consistent grain-size curve of the output material over the entire lifespan of the crushing tools. The rotor impact mill is especially suitable for less abrasive rock types (e.g., limestone) with feed sizes up to 56 mm. An extremely high crushing ratio is achieved without producing excessive filler content.\r\n','\r\n\r\nUsage/Application	construction\r\n\r\n', '\r\n\r\n\r\n\r\n', 'sand', 'Sale', 'product'),
(72, 10, 3, 10, '2022-01-14 10:17:25', 'RIVER SAND-perton', 's2', 'rs1.jpg', 'rs2.jpg', 'rs3.jpg',800,780, '\r\n\The sand which is available from the river\r\n','\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'sand', 'Sale', 'product'),
(10,2,3,7,'2022-01-13 08:10:30','aluminiumtape','tape','tape1.jpg','tape2.jpg','tape3.jpg',200,160,'\r\n\r\n\r\n<p>A good tape</p>\r\n\r\n\r\n','\r\n\r\n\r\nUsed for binding.\r\n\r\n\r\n','https://www.youtube.com/watch?v=biAbp-IIIBI','tape','SALE','Product');
-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(2, 'Adhesives', 'no','Adhesives.jpg'),
(3, 'Aggregates', 'no','aggregates.jpg'),
(4, 'Bricks', 'no','bricks.jpg'),
(5, 'Cement', 'no','cement.jpg'),
(6,'Electrical Appliances','no','electrical appliances.jpg'),
(7,'Mortars','no','mortars.jpg'),
(8,'Paints','no','paints.jpg'),
(9,'Plywood','no','plywood.jpg'),
(10,'Sand','no','sand.jpg'),
(11,'AAC Blocks','no','AAC Blocks.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`) VALUES
(4, 'Store 1', 'store (1).jpg', '<p style=\"text-align: center;\"><strong>1-4/7-7,Vijayawada</strong></p>\r\n<p>Store 1</p>'),
(5, 'Store 2', 'store (2).jpg', '<p style=\"text-align: center;\"><strong>13-49-3,Pidguralla</strong></p>\r\n<p>Store 2</p>'),
(6, 'Store 3', 'store (3).jpg', '<p style=\"text-align: center;\"><strong>3-51,Kadapa&nbsp;</strong></p>\r\n<p>Store 3</p>');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 5, 13),
(4, 3, 13),
(5, 6, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
