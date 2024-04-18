-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 10:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) NOT NULL,
  `book_title` varchar(60) DEFAULT NULL,
  `book_author` varchar(60) DEFAULT NULL,
  `book_image` varchar(40) DEFAULT NULL,
  `book_descr` text DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('978-0143454960', 'Head Held High', 'Vishwas Nangare Patil', 'Head-Held-High.jpg', 'Head Held High translated from marathi man main hain vishwas .Is an account of IPS Officer Vishwas Nangare Patil\'s life from his humble background, through school, college, long hours of studying for the UPSC examination to the final selection for the IPS cadre and eventually his role in the counterterrorist operation\'s during the mumbai attack.', 20.00, 0),
('978-0582040922', ': Longman Language Activator', 'Addison-Wesley Longman', 'Longman.jpg', 'Using definitions from the 2000 word Longman Defining Vocabulary, this activator offers many example sentences showing how words are used, taking many of them from authentic texts and conversations. It aims not to be confusing by offering key words that students should already know, and presents them with a choice of words and phrases on menus, similar to those on a computer screen. The dictionary also explains the use of various grammatical patterns and how to use them in context. For example run for the bus/train, run away/off, under the key word \"run\", and various examples show the many ways that words can be used.', 50.00, 6),
('978-1098116675', 'The Software Developer\'s Career Handbook', 'Michael Lopp', 'SDC.jpg', 'At some point in your career, you\'ll realize there\'s more to being a software engineer than dealing with code. Is it time to become a manager? Or join a startup? In this insightful and entertaining book, Michael Lopp recalls his own make-or-break moments with Silicon Valley giants such as Apple, Slack, Pinterest, Palantir, Netscape, and Symantec to help you make better, more mindful career decisions.', 50.00, 0),
('978-1803238951', 'AWS for Solutions Architects', 'Saurabh Shrivastav', 'AWS.jpg', 'This book is for application and enterprise architects, developers, and operations engineers who want to become well versed with AWS architectural patterns, best practices, and advanced techniques to build scalable, secure, highly available, highly tolerant, and cost-effective solutions in the cloud. Existing AWS users are bound to learn the most, but it will also help those curious about how leveraging AWS can benefit their organization.\r\nPrior knowledge of any computing language is not needed, and there\'s little to no code. Prior experience in software architecture design will prove helpful', 50.00, 5),
('978-8126317424', 'Mrityunjay', 'Shivaji Sawant', 'Mrityunjay.jpg', 'Best suited for those readers who are interested in the vivid stories of Indian mythology. Mrityunjay is an epic book. It has complex and reach plot with multiple story lines taking place.\r\nMrityunjay is an autography of Karna with his narration and speculation gathers interest from the very initial pages.', 20.00, 0),
('978-8126317425', 'Mrityunjay', 'Shivaji Sawant', 'Mrityunjay.jpg', 'Best suited for those readers who are interested in the vivid stories of Indian mythology. Mrityunjay is an epic book. It has complex and reach plot with multiple story lines taking place.\r\nMrityunjay is an autography of Karna with his narration and speculation gathers interest from the very initial pages.', 20.00, 0),
('978-8173664823', 'VB.Net and SQL Server 2000', 'Denis Gosnell', 'pro_asp4.jpg', ': Many VB developers choose SQL Server 2000, a robust enterprise-level database system, to provide the data layer in their applications. The introduction of Microsoft\'s .NET Framework brings us ADO.NET, the latest means of connecting to that data source.\r\nThis book will teach the experienced VB developer, with a working knowledge of Visual Basic .NET, how to integrate SQL Server 2000 with VB .NET applications using ADO.NET.', 50.00, 1),
('978-8177866599', 'Shyamchi Aai', 'Sane guruji', 'Shyamchi_aai.jpg', 'Shyamchi Aai\' is a compassionate and sweet narrative picture of a simple, simple and beautiful culture of mother\'s loving noble teachings. Guruji himself says, “While writing this story, all the soul of the heart has been poured out here. While writing these things, my eyes were wet for centuries. The heart was deep and uplifted. If the immense feelings of love, devotion and gratitude that I have in my heart for my mother, after reading \'Shyamchi Aai\', also arise in the hearts of the readers, then this book can be said to have been a success.', 50.00, 0),
('978-9352200474', 'Antaralateel Gammat Jammat', 'Ramesh K. Mahale', 'Antaral.jpg', 'India has made a significant achievement in the field of space exploration by sending a spacecraft to Mars. The entire world has taken note of this historical event. Curiosity of phenomena and wonders in space inspires human beings to innovate. Space has long been an unimagined core of the human mind. Everyone is thinking of traveling in space and is curious to know about space. Some such interesting and enlightening events in space and the information about the work of vehicles are given in this book.For science-loving readers, the taste of the stories in this book is like a treat.', 50.00, 0),
('978-9352203574', 'Goshti guru shishyanchya', 'Dr. hemlata fadanis', 'Guru_shishya.jpg', 'India has preserved a rich tradition of guru-disciples since ancient times. There have been many great guru-disciples in the history of our country, who set the best example of guru-disciple relationship before the whole world by their exemplary conduct. The place of Guru is very important in the life of each of us. It is the responsibility of the disciple to build his life by acquiring knowledge from the Guru and to use this knowledge in a suitable way for the society. In this book, the famous stories of various 45 guru-disciples have been told, and they will certainly be motivating for the children of the cultured age.', 100.00, 0),
('978-9355185983', 'Chhava', 'Shivaji Sawant', 'Chhava.jpg', '\'Chhava - A historical novel depicting the wonderful and thrilling life struggle of Chhatrapati Shivajis son Sambhaji. A powerful work based on rare and authentic research material.', 100.00, 0),
('978-9390292929', '108 Panchatantra Stories (Illustrated) - Story Book for Kids', 'Pandit Vishnu Sharma', 'Panchtantra.jpg', 'Depicting the ‘five principle conduct’ about life, The Panchatantra Stories are timeless classics. Readers of all age groups enjoy reading and re-reading the Panchatantra Stories as they impart profound wisdom and moral values about the conduct of life through simple narratives. Written in their present form by Pandit Vishnu Sharma, the Panchatantra Stories were narrated to impart worldly wisdom to king Amar shakti three sons. With these enchanting stories, readers especially kids will love to explore the adventurous worlds of their favourite animal characters and learn life lessons about friendship, courage, honesty, good, evil, deceit, hard work and integrity.', 78.00, 0),
('978-9390457151', 'Core Python Programming', 'Nageshwara Rao R', 'Core_Python.jpg', 'This book covers all concepts in simple and easy to understand English. It helps to build logic, which becomes a stepping stone for programming. Hundreds of solved programs help students of different universities do well in their examinations and job interviews. It works like a handy reference to the Software professionals in their programming. Every chapter is supplemented with ‘Points to Remember’ to recap and retain the subject.', 50.00, 2),
(': 978-9354406782', 'Think and grow rich', 'Napoleon Hill', 'Think_and_rich_grow.jpg', 'One of the best inspirational books ever written, Think and Grow Rich is probably the most important financial book you can ever hope to read. Inspiring generations of readers since the time it was first published in 1937, Think and Grow Rich— Hill’ s biggest best-seller— has been used by millions of business leaders around the world to create a concrete plan for success that, when followed, never fails. A motivational personal development and self-help book, its core strength lies in the fact that it not only expounds upon material wealth but that at the heart of it', 50.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `country` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'shweta', 'lonikand', 'pune', '412216', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) NOT NULL,
  `ship_address` char(80) NOT NULL,
  `ship_city` char(30) NOT NULL,
  `ship_zip_code` char(10) NOT NULL,
  `ship_country` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, 60.00, '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, 60.00, '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, 20.00, '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, 20.00, '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a'),
(5, 4, 20.00, '2024-04-13 04:25:51', 'shweta', 'lonikand', 'pune', '412216', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', 20.00, 1),
(1, '978-1-44937-019-0', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(2, '978-1-118-94924-5', 20.00, 1),
(2, '978-1-44937-019-0', 20.00, 1),
(2, '978-1-49192-706-9', 20.00, 1),
(3, '978-0-321-94786-4', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(5, '978-8126317425', 20.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
