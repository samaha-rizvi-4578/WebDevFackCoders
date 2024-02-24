-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2024 at 06:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2020-07-08 06:38:36', 2, 'u', '2020-07-08 06:53:45'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2020-07-08 06:43:25', 1, NULL, '2020-07-08 06:52:44'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2020-07-08 06:44:39', 2, 'a', '2020-07-08 06:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2020-07-08 06:30:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2020-07-08 06:31:38', NULL),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2020-07-08 06:32:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 06:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 06:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 06:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 06:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 06:35:06', NULL, NULL),
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2020-07-08 06:36:03', 'Ok, We will fix the issue asap', '2020-07-08 06:55:22'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2020-07-08 06:56:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																														<p align=\"justify\"><font size=\"2\"><font color=\"#990000\" style=\"\">(1) ACCEPTANCE OF TERMS</font><br></font></p><p align=\"justify\"><span style=\"font-size: small;\">Acceptance of Terms (Safarnama)</span></p><p align=\"justify\"><span style=\"font-size: small;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small;\">Welcome to Safarnama, your comprehensive tourism platform! To confirm your agreement to our terms and conditions, please review the following statement, and indicate your acceptance by clicking on the \"I accept these terms and conditions\" button at the end of this document.</span></p><p align=\"justify\"><span style=\"font-size: small;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small;\">By accessing and using the Safarnama platform, you acknowledge that you have read and fully agree to the following:</span></p><p align=\"justify\"><br></p><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">1.&nbsp; Please ensure that you have the following documents or else you will not be allowed to board the bus.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><ul><li>&nbsp; &nbsp; &nbsp;Original CNIC</li><li>&nbsp; &nbsp; &nbsp;University ID-Card</li><li>&nbsp; &nbsp; &nbsp;<span class=\"il\">Tour</span>&nbsp;receipt</li></ul></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">3. SafarNama as a whole and the team Fack Coders in particular will not be responsible or liable, under any circumstances, for any sort of accident, loss to life, or property. Your personal belongings are your own responsibility.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">4. Fack Coders and Management staff are there for your assistance. They should be treated with respect and their instructions must be followed.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">5. Please be punctual during the whole period, the management team shall not be held responsible for any student who fails to catch the bus or ends up being left out. The drivers are strongly advised to follow the timings and not to stop for anyone running late.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">6. It is not allowed to join or leave between the&nbsp;<span class=\"il\">Tour</span>.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">7. Kindly make sure that you do not carry anything that can be used as a weapon. It may include small knives, scissors, toy guns, chains, nail cutters or filers, etc.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">8. Breakfast and dinner will be served according to the cultural values and timings.You are advised to be on time to avail these facilities.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">9. Students should be respectful of the opposite gender and must avoid any behavior that can be interpreted in a negative way( i.e., harassment).</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">10. You are strictly reminded, once more, that gender mixing is permissible only within the accepted social and cultural norms of the society. Faculty tolerance should not be construed as an approval to undue intimacy and unacceptable proximity, whether openly or in isolated areas.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">11. The facilities provided on&nbsp;<span class=\"il\">tour</span>&nbsp;are for entertainment purposes only. As safety is our main concern, you are suggested to please respect it and do as directed by the management.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">12. If anyone is found with drugs or any illegal activities, legal action would be taken against him/her.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">13. Smoking/Vaping is strictly prohibited in public areas and during mutual gatherings. Anyone found involved in these activities in prohibited places will be penalized.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">14. Strict disciplinary action will be taken against those who violate the code of conduct. The range of penalties include financial penalty, termination of the semester.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">15. Please note that besides the scheduled meals and pre-decided services, you would have to bear the cost.</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><span style=\"font-style: italic;\">SafarNama kay sath Suffer Karain</span></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><br></div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">Cheers,</div><div dir=\"auto\" style=\"font-size: small; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\"><span style=\"font-weight: bold;\">SafarNama- Fack Coders</span></div>\r\n<p align=\"justify\"><br></p>\r\n										\r\n										\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>\r\n										'),
(3, 'aboutus', '										<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to SafarNama</span></div>'),
(11, 'contact', '																																																												<span style=\"font-family: georgia;\"><span style=\"color: rgb(0, 0, 0); text-align: justify; font-size: medium;\">Rabta Karain - <a href=\"https://github.com/samaha-rizvi-4578/WebDevFackCoders\" title=\"Fack Coders\" target=\"_blank\" style=\"\">Fack Coders</a></span>\r\n										\r\n										</span><div><span style=\"font-size: medium; font-family: georgia;\">k214578@nu.edu.pk<br>k213364@nu.edu.pk<br>k214936@nu.edu.pk</span><br></div>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'High in the Sky ', 'Adventurous Spot', 'Nanga Parbat', 45000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi- Accommodation for 3 nights in Peaks of Mountains - Enjoy Freezing Mountain Hikes  -  2 time Meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'np.jpg', '2020-07-08 05:21:58', '2024-02-24 16:47:42'),
(2, 'Khubsoorat Wadi', 'Adventurous Spot', 'Hunza Valley', 35000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi- Accommodation for 3 nights in beautiful land of Hunza - Enjoy peaceful  nature  -  2 time Meal ', 'Visit to Tiger\'s Nest Monastery | Complimentary services of a Professional Guide', 'hunza.png', '2020-07-08 05:37:40', '2024-02-24 16:55:06'),
(3, 'Minar E Pakistan | Probably a Suicide point', 'Historical', 'Lahore ', 5000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi- Accommodation for 2 nights in best Hotels - Study the Architecture of Minar E pakistan  -  2 time Meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'mp.png', '2020-07-08 05:41:07', '2024-02-24 16:58:01'),
(4, 'Kerala - A Lovers Paradise - Value Added', 'Family Package', 'Kerala', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Matupetty Dam, tea plantation and a spice garden | View sunset in Kanyakumari | AC Car at disposal for 2hrs extra (once per city)', 'images (2).jpg', '2020-07-08 05:45:58', NULL),
(5, 'Short Trip To Dubai', 'Family', 'Dubai', 4500, 'Free pick up and drop facility, Free Wi-fi, Free breakfast', 'A Holiday Package for the entire family.', 'unnamed.jpg', '2020-07-08 05:49:13', NULL),
(6, 'Sikkim Delight with Darjeeling (customizable)', 'Group', 'Sikkim', 3500, 'Free Breakfast, Free Pick up drop facility', 'Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery', 'download (2).jpg', '2020-07-08 05:51:26', NULL),
(7, '6 Days in Guwahati and Shillong With Cherrapunji Excursion', 'Family Package', 'Guwahati(Sikkim)', 4500, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'After arrival at Guwahati airport meet our representative & proceed for Shillong. Shillong is the capital and hill station of Meghalaya, also known as Abode of Cloud, one of the smallest states in India. En route visit Barapani lake. By afternoon reach at Shillong. Check in to the hotel. Evening is leisure. Spent time as you want. Visit Police bazar. Overnight stay at Shillong.', '95995.jpg', '2020-07-08 05:54:42', NULL),
(8, 'Grand Week in North East - Lachung, Lachen and Gangtok', 'Domestic Packages', 'Sikkim', 4500, 'Free Breakfast, Free Wi-fi', 'Changu Lakeand New Baba Mandir excursion | Yumthang Valley tour | Gurudongmar Lake excursion | Night stay in Lachen', 'download (3).jpg', '2020-07-08 06:05:24', NULL),
(9, 'Gangtok & Darjeeling Holiday (Without Flights)', 'Family Package', 'Sikkim', 1000, 'Free Wi-fi, Free pickup and drop facility', 'Ideal tour for Family | Sightseeing in Gangtok and Darjeeling | Full day excursion to idyllic Changu Lake | Visit to Ghoom Monastery', '1540382781_shutterstock_661867435.jpg.jpg', '2020-07-08 06:07:48', NULL),
(10, 'Umrah', 'International', 'Kingdom of Saudi Arabia', 1700, 'Features Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi - Accommodation for 12 nights in Saudi Arabia - 2 times meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'hajj.jpg', '2024-02-24 16:07:12', NULL),
(11, 'Hajj', 'International', 'Kingdom of Saudi Arabia', 4400, 'Features Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi - Accommodation for 30 nights in Saudi Arabia - 2 times meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'umrah.jpg', '2024-02-24 16:10:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:33:20', NULL),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:33:56', NULL),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:34:20', NULL),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:34:38', NULL),
(5, 'Test', '1987894654', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-07-08 06:35:06', '2021-05-11 04:37:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
