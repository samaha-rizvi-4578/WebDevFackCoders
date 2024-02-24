-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2024 at 06:38 PM
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
(1, 'terms', '																																								<pre style=\"color: rgb(34, 34, 34);\"><h3><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><font color=\"#990000\" style=\"\">(1) ACCEPTANCE OF TERMS</font></span></h3><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">Acceptance of Terms (Safarnama)</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">Welcome to Safarnama, your comprehensive tourism platform! To confirm your agreement to our terms and conditions, please review the following statement, and indicate your acceptance by clicking on the \"I accept these terms and conditions\" button at the end of this document.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">By accessing and using the Safarnama platform, you acknowledge that you have read and fully agree to the following:</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">1.&nbsp; Please ensure that you have the following documents or else you will not be allowed to board the bus.</span><ul><li><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">&nbsp; &nbsp; &nbsp;Original CNIC</span></li></ul><ul><li><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">&nbsp; &nbsp; &nbsp;University ID-Card</span></li></ul><ul><li><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">&nbsp; &nbsp; &nbsp;<span class=\"il\">Tour</span>&nbsp;receipt</span></li></ul><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">3. SafarNama as a whole and the team Fack Coders in particular will not be responsible or liable, under any circumstances, for any sort of accident, loss to life, or property. Your personal belongings are your own responsibility.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">4. Fack Coders and Management staff are there for your assistance. They should be treated with respect and their instructions must be followed.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">5. Please be punctual during the whole period, the management team shall not be held responsible for any student who fails to catch the bus or ends up being left out. The drivers are strongly advised to follow the timings and not to stop for anyone running late.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">6. It is not allowed to join or leave between the&nbsp;<span class=\"il\">Tour</span>.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">7. Kindly make sure that you do not carry anything that can be used as a weapon. It may include small knives, scissors, toy guns, chains, nail cutters or filers, etc.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">8. Breakfast and dinner will be served according to the cultural values and timings.You are advised to be on time to avail these facilities.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">9. Students should be respectful of the opposite gender and must avoid any behavior that can be interpreted in a negative way( i.e., harassment).</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">10. You are strictly reminded, once more, that gender mixing is permissible only within the accepted social and cultural norms of the society. Faculty tolerance should not be construed as an approval to undue intimacy and unacceptable proximity, whether openly or in isolated areas.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">11. The facilities provided on&nbsp;<span class=\"il\">tour</span>&nbsp;are for entertainment purposes only. As safety is our main concern, you are suggested to please respect it and do as directed by the management.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">12. If anyone is found with drugs or any illegal activities, legal action would be taken against him/her.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">13. Smoking/Vaping is strictly prohibited in public areas and during mutual gatherings. Anyone found involved in these activities in prohibited places will be penalized.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">14. Strict disciplinary action will be taken against those who violate the code of conduct. The range of penalties include financial penalty, termination of the semester.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">15. Please note that besides the scheduled meals and pre-decided services, you would have to bear the cost.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-family: impact;\"><span style=\"font-style: italic; font-size: large;\">SafarNama kay sath Suffer Karain</span><span style=\"font-size: large;\"><br></span></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">Cheers,<br></span><span style=\"font-weight: bold; font-size: large; font-family: &quot;courier new&quot;;\">SafarNama- Fack Coders</span></pre>\r\n<p align=\"justify\"><br></p>\r\n										\r\n										\r\n										\r\n										'),
(2, 'privacy', '<div style=\"text-align: justify;\"><h3><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: bold; font-family: &quot;courier new&quot;; font-size: large;\">Privacy and Policy</span></span></h3><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: &quot;courier new&quot;;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac. Rhoncus dolor purus non enim praesent elementum facilisis leo. Lacus luctus accumsan tortor posuere ac ut. Nunc scelerisque viverra mauris in. Quis hendrerit dolor magna eget. Et malesuada fames ac turpis egestas sed tempus urna et. Volutpat diam ut venenatis tellus in. Eu volutpat odio facilisis mauris sit amet massa vitae tortor. Semper eget duis at tellus. Ullamcorper velit sed ullamcorper morbi tincidunt. Egestas erat imperdiet sed euismod nisi porta lorem mollis. A erat nam at lectus. Quis auctor elit sed vulputate mi sit amet mauris commodo. Arcu dui vivamus arcu felis. Id venenatis a condimentum vitae. Odio facilisis mauris sit amet massa vitae. Risus in hendrerit gravida rutrum quisque non tellus orci ac. Senectus et netus et malesuada fames. Tortor vitae purus faucibus ornare suspendisse sed nisi.</span></div>'),
(3, 'aboutus', '																				<div><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify; font-weight: bold; font-family: georgia;\">Welcome to SafarNama</span></div><div><span style=\"text-align: justify; font-family: georgia;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px;\"><span style=\"font-weight: bold;\">SafarNama,</span> a leading Pakistani tourism platform, beckons travelers to embark on a profound journey encompassing religious sanctity, historical marvels, and thrilling adventures. Specializing in meticulously curated packages for Hajj and Umrah, the platform offers a seamless blend of spirituality and history. From unraveling the stories behind ancient ruins to guiding adrenaline enthusiasts through breathtaking landscapes, SafarNama ensures comprehensive travel experiences. The platform\'s commitment to transparency extends to detailed budget breakdowns, allowing travelers to plan with confidence. SafarNama is not just a guide; it\'s a companion on a transformative odyssey, where each destination\'s history and significance come alive, creating a personalized travelogue etched with unforgettable memories.</span><br></span></div><div><span style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; font-weight: 700; font-family: georgia;\"><br></span></span></div><div><span style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; font-weight: 700; font-family: georgia;\">Hamara Motive</span></span></div><div><span style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; font-weight: 700; font-family: georgia;\">Apka Suffer Hamaray SafarNama Kay Sath</span></span></div><div><span style=\"font-family: &quot;courier new&quot;;\">Let\'s Suffer Together</span></div><div><span style=\"font-family: georgia;\"><br></span></div><div><span style=\"font-family: georgia;\">Team,</span></div><div><span style=\"font-family: impact;\">Fack Coders</span></div>\r\n										'),
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
(4, 'Badshahi Masjid ', 'Religous', 'Lahore ', 2000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi- Accommodation for 2 nights in best Hotels -  Grow your Spirituality under the roof of Badshahi Mosque  2 time Meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'bm.png', '2020-07-08 05:45:58', '2024-02-24 17:22:32'),
(5, 'Samandar Kinare', 'Adventurous Spot', 'Karachi', 2000, 'Features Round trip AC Bus valid for the duration of the holiday - Malir Karachi - Accommodation for 1 nights in exclusive hut - 2 times meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'beach.png', '2020-07-08 05:49:13', '2024-02-24 17:24:59'),
(6, 'Moen Jo Daro | Asar e Qadeema', 'Historical', 'Interior Sindh', 3500, 'Features Round trip AC Bus valid for the duration of the holiday - Malir Karachi - Accommodation for 2 nights in Mitti kay teelay - 2 times meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'moenjd.png', '2020-07-08 05:51:26', '2024-02-24 17:28:18'),
(7, 'Clifton Beach | jao masti karo', 'Adventurous Spot', 'Karachi', 1500, 'Features Round trip AC bus valid for the duration of the holiday - Malir Karachi  - 2 times meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'beach.png', '2020-07-08 05:54:42', '2024-02-24 17:31:02'),
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
