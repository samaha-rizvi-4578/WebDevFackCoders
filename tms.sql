-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 06:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: tms
--

-- --------------------------------------------------------

--
-- Table structure for table admin
--

CREATE TABLE admin (
  id int(11) NOT NULL,
  UserName varchar(100) DEFAULT NULL,
  Password varchar(100) DEFAULT NULL,
  updationDate timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table admin
--

INSERT INTO admin (id, UserName, Password, updationDate) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table tblbooking
--

CREATE TABLE tblbooking (
  BookingId int(11) NOT NULL,
  PackageId int(11) DEFAULT NULL,
  UserEmail varchar(100) DEFAULT NULL,
  FromDate varchar(100) DEFAULT NULL,
  ToDate varchar(100) DEFAULT NULL,
  Comment mediumtext DEFAULT NULL,
  RegDate timestamp NULL DEFAULT current_timestamp(),
  status int(11) DEFAULT NULL,
  CancelledBy varchar(5) DEFAULT NULL,
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table tblenquiry
--

CREATE TABLE tblenquiry (
  id int(11) NOT NULL,
  FullName varchar(100) DEFAULT NULL,
  EmailId varchar(100) DEFAULT NULL,
  MobileNumber char(10) DEFAULT NULL,
  Subject varchar(100) DEFAULT NULL,
  Description mediumtext DEFAULT NULL,
  PostingDate timestamp NULL DEFAULT current_timestamp(),
  Status int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table tblissues
--

CREATE TABLE tblissues (
  id int(11) NOT NULL,
  UserEmail varchar(100) DEFAULT NULL,
  Issue varchar(100) DEFAULT NULL,
  Description mediumtext DEFAULT NULL,
  PostingDate timestamp NULL DEFAULT current_timestamp(),
  AdminRemark mediumtext DEFAULT NULL,
  AdminremarkDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table tblpages
--

CREATE TABLE tblpages (
  id int(11) NOT NULL,
  type varchar(255) DEFAULT '',
  detail longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblpages
--

INSERT INTO tblpages (id, type, detail) VALUES
(1, 'terms', '																																								<pre style=\"color: rgb(34, 34, 34);\"><h3><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><font color=\"#990000\" style=\"\">(1) ACCEPTANCE OF TERMS</font></span></h3><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">Acceptance of Terms (Safarnama)</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">Welcome to Safarnama, your comprehensive tourism platform! To confirm your agreement to our terms and conditions, please review the following statement, and indicate your acceptance by clicking on the \"I accept these terms and conditions\" button at the end of this document.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">By accessing and using the Safarnama platform, you acknowledge that you have read and fully agree to the following:</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">1.&nbsp; Please ensure that you have the following documents or else you will not be allowed to board the bus.</span><ul><li><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">&nbsp; &nbsp; &nbsp;Original CNIC</span></li></ul><ul><li><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">&nbsp; &nbsp; &nbsp;University ID-Card</span></li></ul><ul><li><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">&nbsp; &nbsp; &nbsp;<span class=\"il\">Tour</span>&nbsp;receipt</span></li></ul><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">3. SafarNama as a whole and the team Fack Coders in particular will not be responsible or liable, under any circumstances, for any sort of accident, loss to life, or property. Your personal belongings are your own responsibility.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">4. Fack Coders and Management staff are there for your assistance. They should be treated with respect and their instructions must be followed.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">5. Please be punctual during the whole period, the management team shall not be held responsible for any student who fails to catch the bus or ends up being left out. The drivers are strongly advised to follow the timings and not to stop for anyone running late.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">6. It is not allowed to join or leave between the&nbsp;<span class=\"il\">Tour</span>.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">7. Kindly make sure that you do not carry anything that can be used as a weapon. It may include small knives, scissors, toy guns, chains, nail cutters or filers, etc.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">8. Breakfast and dinner will be served according to the cultural values and timings.You are advised to be on time to avail these facilities.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">9. Students should be respectful of the opposite gender and must avoid any behavior that can be interpreted in a negative way( i.e., harassment).</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">10. You are strictly reminded, once more, that gender mixing is permissible only within the accepted social and cultural norms of the society. Faculty tolerance should not be construed as an approval to undue intimacy and unacceptable proximity, whether openly or in isolated areas.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">11. The facilities provided on&nbsp;<span class=\"il\">tour</span>&nbsp;are for entertainment purposes only. As safety is our main concern, you are suggested to please respect it and do as directed by the management.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">12. If anyone is found with drugs or any illegal activities, legal action would be taken against him/her.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">13. Smoking/Vaping is strictly prohibited in public areas and during mutual gatherings. Anyone found involved in these activities in prohibited places will be penalized.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">14. Strict disciplinary action will be taken against those who violate the code of conduct. The range of penalties include financial penalty, termination of the semester.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">15. Please note that besides the scheduled meals and pre-decided services, you would have to bear the cost.</span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\"><br></span><span style=\"font-family: impact;\"><span style=\"font-style: italic; font-size: large;\">SafarNama kay sath Suffer Karain</span><span style=\"font-size: large;\"><br></span></span><span style=\"font-size: large; font-family: &quot;courier new&quot;;\">Cheers,<br></span><span style=\"font-weight: bold; font-size: large; font-family: &quot;courier new&quot;;\">SafarNama- Fack Coders</span></pre>\r\n<p align=\"justify\"><br></p>\r\n										\r\n										\r\n										\r\n										'),
(2, 'privacy', '<div style=\"text-align: justify;\"><h3><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: bold; font-family: &quot;courier new&quot;; font-size: large;\">Privacy and Policy</span></span></h3><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: &quot;courier new&quot;;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac. Rhoncus dolor purus non enim praesent elementum facilisis leo. Lacus luctus accumsan tortor posuere ac ut. Nunc scelerisque viverra mauris in. Quis hendrerit dolor magna eget. Et malesuada fames ac turpis egestas sed tempus urna et. Volutpat diam ut venenatis tellus in. Eu volutpat odio facilisis mauris sit amet massa vitae tortor. Semper eget duis at tellus. Ullamcorper velit sed ullamcorper morbi tincidunt. Egestas erat imperdiet sed euismod nisi porta lorem mollis. A erat nam at lectus. Quis auctor elit sed vulputate mi sit amet mauris commodo. Arcu dui vivamus arcu felis. Id venenatis a condimentum vitae. Odio facilisis mauris sit amet massa vitae. Risus in hendrerit gravida rutrum quisque non tellus orci ac. Senectus et netus et malesuada fames. Tortor vitae purus faucibus ornare suspendisse sed nisi.</span></div>'),
(3, 'aboutus', '																				<div><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify; font-weight: bold; font-family: georgia;\">Welcome to SafarNama</span></div><div><span style=\"text-align: justify; font-family: georgia;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px;\"><span style=\"font-weight: bold;\">SafarNama,</span> a leading Pakistani tourism platform, beckons travelers to embark on a profound journey encompassing religious sanctity, historical marvels, and thrilling adventures. Specializing in meticulously curated packages for Hajj and Umrah, the platform offers a seamless blend of spirituality and history. From unraveling the stories behind ancient ruins to guiding adrenaline enthusiasts through breathtaking landscapes, SafarNama ensures comprehensive travel experiences. The platform\'s commitment to transparency extends to detailed budget breakdowns, allowing travelers to plan with confidence. SafarNama is not just a guide; it\'s a companion on a transformative odyssey, where each destination\'s history and significance come alive, creating a personalized travelogue etched with unforgettable memories.</span><br></span></div><div><span style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; font-weight: 700; font-family: georgia;\"><br></span></span></div><div><span style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; font-weight: 700; font-family: georgia;\">Hamara Motive</span></span></div><div><span style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; font-weight: 700; font-family: georgia;\">Apka Suffer Hamaray SafarNama Kay Sath</span></span></div><div><span style=\"font-family: &quot;courier new&quot;;\">Let\'s Suffer Together</span></div><div><span style=\"font-family: georgia;\"><br></span></div><div><span style=\"font-family: georgia;\">Team,</span></div><div><span style=\"font-family: impact;\">Fack Coders</span></div>\r\n										'),
(11, 'contact', '																																																												<span style=\"font-family: georgia;\"><span style=\"color: rgb(0, 0, 0); text-align: justify; font-size: medium;\">Rabta Karain - <a href=\"https://github.com/samaha-rizvi-4578/WebDevFackCoders\" title=\"Fack Coders\" target=\"_blank\" style=\"\">Fack Coders</a></span>\r\n										\r\n										</span><div><span style=\"font-size: medium; font-family: georgia;\">k214578@nu.edu.pk<br>k213364@nu.edu.pk<br>k214936@nu.edu.pk</span><br></div>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table tbltourpackages
--

CREATE TABLE tbltourpackages (
  PackageId int(11) NOT NULL,
  PackageName varchar(200) DEFAULT NULL,
  PackageType varchar(150) DEFAULT NULL,
  PackageLocation varchar(100) DEFAULT NULL,
  PackagePrice int(11) DEFAULT NULL,
  PackageFetures varchar(255) DEFAULT NULL,
  PackageDetails mediumtext DEFAULT NULL,
  PackageImage varchar(100) DEFAULT NULL,
  Creationdate timestamp NULL DEFAULT current_timestamp(),
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tbltourpackages
--

INSERT INTO tbltourpackages (PackageId, PackageName, PackageType, PackageLocation, PackagePrice, PackageFetures, PackageDetails, PackageImage, Creationdate, UpdationDate) VALUES
(1, 'High in the Sky ', 'Adventurous Spot', 'Nanga Parbat', 45000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi- Accommodation for 3 nights in Peaks of Mountains - Enjoy Freezing Mountain Hikes  -  2 time Meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'np.jpg', '2020-07-08 05:21:58', '2024-02-24 16:47:42'),
(2, 'Khubsoorat Wadi', 'Adventurous Spot', 'Hunza Valley', 35000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi- Accommodation for 3 nights in beautiful land of Hunza - Enjoy peaceful  nature  -  2 time Meal ', 'Visit to Tiger\'s Nest Monastery | Complimentary services of a Professional Guide', 'hunza.png', '2020-07-08 05:37:40', '2024-02-24 16:55:06'),
(3, 'Minar E Pakistan | Probably a Suicide point', 'Historical', 'Lahore ', 5000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi- Accommodation for 2 nights in best Hotels - Study the Architecture of Minar E pakistan  -  2 time Meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'mp.png', '2020-07-08 05:41:07', '2024-02-24 16:58:01'),
(4, 'Badshahi Masjid ', 'Religous', 'Lahore ', 2000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi- Accommodation for 2 nights in best Hotels -  Grow your Spirituality under the roof of Badshahi Mosque  2 time Meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'bm.png', '2020-07-08 05:45:58', '2024-02-24 17:22:32'),
(5, 'Samandar Kinare', 'Adventurous Spot', 'Karachi', 2000, 'Features Round trip AC Bus valid for the duration of the holiday - Malir Karachi - Accommodation for 1 nights in exclusive hut - 2 times meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'beach.png', '2020-07-08 05:49:13', '2024-02-24 17:24:59'),
(6, 'Moen Jo Daro | Asar e Qadeema', 'Historical', 'Interior Sindh', 3500, 'Features Round trip AC Bus valid for the duration of the holiday - Malir Karachi - Accommodation for 2 nights in Mitti kay teelay - 2 times meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'moenjd.png', '2020-07-08 05:51:26', '2024-02-24 17:28:18'),
(7, 'Clifton Beach | jao masti karo', 'Adventurous Spot', 'Karachi', 1500, 'Features Round trip AC bus valid for the duration of the holiday - Malir Karachi  - 2 times meal ', 'Id ornare arcu odio ut sem nulla pharetra diam sit. Fames ac turpis egestas sed tempus urna et pharetra. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Nunc non blandit massa enim nec. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Ipsum dolor sit amet consectetur. Lectus arcu bibendum at varius vel pharetra vel. Ultrices gravida dictum fusce ut placerat.', 'beach.png', '2020-07-08 05:54:42', '2024-02-24 17:31:02'),
(10, 'Umrah', 'International', 'Kingdom of Saudi Arabia', 1700, 'Features Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi - Accommodation for 12 nights in Saudi Arabia - 2 times meal ', '\r\nVisa Requirements:\r\n\r\nPilgrims who are not vaccinated against Covid-19 can perform Umrah if they can prove they were not infected with the virus or have not been in contact with an infected person. \r\nCitizens from previous countries (South Africa, Namibia, Botswana, Zimbabwe, Lesotho, Eswatini, Mozambique, Malawi, Mauritius, Zambia, Madagascar, Angola, Seychelles, United Republic of Comoros, Nigeria, Ethiopia, Afghanistan) where flights were suspended are now able to enter Saudi Arabia and perform Umrah. \r\nPilgrims are no longer required to provide a PCR or rapid antigen test when arriving in Saudi Arabia. \r\nPilgrims are no longer required to quarantine after entering Saudi Arabia. \r\nMasks and social distancing are no longer needed in public places. This includes social distancing at the Two Holy Mosques and all of the Mosques in the country (masks are still required indoors). \r\nPilgrims can now pre-book the Umrah permit via one of the following applications: Umrahna or Tawakkalna. \r\nPilgrims are no longer required to register on the Muqeem app after arrival. However, those who have completed all the required vaccination steps are encouraged to register to show their immunization status on their Tawakkalna app. \r\n\r\nTravel Preparations:\r\nPassport including Visa Documentation\r\nThe authorities will take your passport upon arrival in Saudi Arabia and will return it upon departure.\r\nProof of Vaccination\r\nAll pilgrims entering Saudi Arabia must produce a valid certificate of vaccination against quadrivalent (A/C/Y/W135) meningococcal meningitis as well as COVID-19.\r\nDepending on your country of residence you may also need to present vaccine certificates for yellow fever or polio.\r\nPassport Sized Photos\r\nTake at least 4 additional photographs with you to Saudi Arabia. These may be needed for documents and procedures during the course of your journey.\r\nSaudi Riyals\r\nTake a minimum of about 450 riyals, which will help you with your immediate expenses upon arrival in Saudi Arabia, until you become familiar with getting your money exchanged locally.\r\nMoney\r\nPlan a budget prior to travelling\r\nYou can exchange your money at the airport upon arrival in Saudi Arabia, at local banks, or at money exchangers (Sarrah) in Makkah and Madinah\r\nDebit/Credit Cards\r\nEmergency Contact Numbers\r\nGroup leader\r\nYour country’s consulate\r\nPhotocopy of Passport\r\nFull Travel Itinerary (including valid tickets)\r\nNon-Medical Face Masks\r\n\r\nReligious Rituals:\r\n\r\nThere are 4 Major Rituals and acts needed to be followed which are as follows:\r\nThe acts of faith performed by all pilgrims during their spiritual journey to the Holy Kaaba are collectively known as the Umrah rituals.\r\n\r\nDepending on whether one wishes to perform Hajj after the commencement of Umrah rituals, there are two types of Umrah: Al Umrah Al Mufradah (optional before Hajj) and Umrah Al Tammatu (obligatory before Hajj).\r\n\r\nFollowing are the four acts of Umrah Al Mufradah that involve fulfilling some religious duties and rituals, each anchoring the pilgrim in the right moment towards complete atonement.\r\n\r\n1) IHRAM FROM MIQAT – THE INTENTION TO PERFORM UMRAH\r\n\r\nBefore pilgrims wish to enter the Al Masjid Al Haram (the sacred boundary of Makkah) and move across to perform Umrah, they should wear Ihram in order to make haram and traverse the five different areas of Miqats in the Haram boundary:\r\n\r\nDhu’l Hulaifah (Abbyar Ali) is for pilgrims coming from or through Madina\r\nAl-Juhfah (near Rabigh) is for pilgrims coming from or through Syria, Morocco, or Egypt.\r\nQarn-al manazil (As-Sail Al-Kabeer) is for pilgrims coming from or through Najd or Taif.\r\nYalamlam (Sa’adiyah) is for pilgrims coming from or through India, Pakistan or Yemen.\r\nDhat `Irq is for pilgrims coming from or through Iraq.\r\nPrior to visiting the sacred boundary of Makkah, pilgrims are mandated to assume a state of Ihram, which is the combined sacred act of Niyyah and Talbiyah necessary to perform Umrah. Niyyah is the innate intention to perform an act of worship, while Talbiyah is a special prayer said in supplication.\r\n\r\nTo become a Muhrim (a pilgrim that has attained the state of Ihram), a pilgrim must prepare himself for Ihram by following the below steps as instructed by the Prophet (PBUH):\r\n\r\nPerforming ablutions – cleansing the body to attain physical purity, which involves some rituals that are mandatory (Mushtahab) and others, are preferable for Ihram:\r\nGhusl (Mustahab)\r\nPerfuming the head & beard. (Mustahab)\r\nClipping finger & toe nails (Preferred)\r\nTrimming moustache (Preferred)\r\nShaving off unwanted body hair (Preferred)\r\nChanging into the sacred attire of two-pieced white Ihram sheets (Izar and Rida) for men and ordinary Islamic clothes for women. Both, men and women, should wear the flip-flops or sandals that expose the middle bones of the midfoot.\r\nPerforming the two Rakats of Salah al-Ihram while covering the head.\r\nPronouncing the Niyyah as the Miqat approaches\r\nReciting Talbiyah repeatedly while traversing the Miqat stations in the sacred boundary of the Grand Holy Mosque until the commencement of Tawaf before travelling to Makkah for the next step of Umrah.\r\n2) TAWAF – CIRCUMAMBULATION OF THE HOLY KAABA IN WORSHIP\r\n\r\nAfter assuming a state of Ihram, the Muhrim performs the obligatory act of Tawaf in the Al Masjid Al Haram. The Muhrim must stop reciting the Talbiyah and start circumambulating the holy Kaaba seven times (as a reminder of the angels that circumambulate the celestial realms of Allah’s house, al-Bayt al-Ma’mur), by setting their right foot in and making Idtiba’a. Men must bare their right shoulder by placing the Rida under their right arm and the lower parts of it over their left shoulder during the entirety of Tawaf.\r\n\r\n They must circumambulate the Masjid Al Haram by starting from the Black Stone and completing it there at with the sincere intention of seeking closeness to Allah. The worship is validated only if the pilgrim recites the prescribed du’aa (supplication) during each one of the seven circumambulations.\r\n\r\nPilgrims can to Istilam (kiss or gesture towards the Black Stone), if he/she can during the circumambulations. Otherwise, they can touch it with their right hand and start moving towards completing the seven anticlockwise circumambulations while reciting du’aa with the holy Kaaba on their left, without any interruptions or distractions.\r\n\r\nDuring the first three circumambulations, only the men must make Ramal (fast-paced walk on entry into the holy Kaaba) and the remaining four are completed by walking (at a normal pace) between the al Rukn al Yamani (the Rukn of the holy Kaaba) and the Black Stone.\r\n\r\nThe last circumambulation ends exactly where the first one began, to ensure that the pilgrim completed all seven rounds without moving or falling behind a single step or more. And with the seventh round of circumambulation and performance of eight Istilam, the state of Tawaf concludes. At this point, men must cover their shoulders with the upper part of the Ihram sheet.\r\n\r\nUpon completion of Tawaf, pilgrims can go behind Maqam Ibrahim (the station of Ibrahim) and perform Salat of Tawaf to offer the two short rak’aa’s and thereafter drink the holy Zamzam water from Well of Zamzam in the basement of the Sacred Mosque while supplicating to Allah.\r\n\r\nAfter drinking Zamzam, pilgrims then proceed to the Multazam, a section of the holy Kaaba between the Black Stone and the door of the Kaaba, to supplicate to Allah and offer du’aa.\r\n\r\n3) SA’IY – WALKING SEVEN TIMES BETWEEN THE HILLS OF SAFA AND MARWAH IN WORSHIP\r\nUmrah pilgrims intending to make Sa’iy must make their way out of the Al Masjid Al Haram towards the Masaa’ (the place of Sa’iy) which commemorates the struggle Prophet Abraham’s wife Hazarat Hajra went through to search for water for her son in between the hills of Safa in the south and Marwah in the North. In essence, Sa’iy is a great way to spend some time on self-reflection and self-realisation.\r\n\r\nPilgrims start Sa’iy by going up the hill of Safa to see the holy Kaaba from the Safa door. They must face the Kaaba with utmost devotion and love, while raising their hands to supplicate to Allah. They must then descend from Safa and walk towards the hill of Marwah while reciting the supplication Subhan Allah and keep moving until they reach two green pillars between which only the men have to run through while the women walk at a normal pace. When on top of Marwah, praise Allah facing the Kaaba and recite the supplication mentioning Allah.\r\n\r\nThe procedure continues with pilgrims going from Safa to Marwah and returning back to Safa, until the they complete seven laps in total. Each round is nearly 450m long. The seventh round will end at Marwah where all pilgrims must stand facing the Kaaba and repeat the same supplications that were recited at Safa. Men must perform Sa’iy with their shoulders covered.\r\n\r\nAfter offering two Raka of Nafl (at a desirable time) in the Al Masjid Al Haram, pilgrims should come out of the Holy Mosque with their left foot out and then offer a du’aa.\r\n\r\n4) HALQ (SHAVING THE HEAD) OR TAQSIR (CLIPPING OR SHORTENING OF THE HAIR FOR MEN AND WOMEN)\r\n\r\nFinally, the last step of your journey, shaving or clipping the hair in Mina. Men should get their head completely shaved, or get their hair clipped. While women are forbidden to shave their heads and only allowed to have a lock or strand of their hair clipped. The act of cutting the hair symbolizes one’s detachment from physical appearances and complete subjection to Allah.\r\n', 'hajj.jpg', '2024-02-24 16:07:12', '2024-02-25 05:38:19'),
(11, 'Hajj', 'International', 'Kingdom of Saudi Arabia', 4400, 'Features Round trip Economy class airfare valid for the duration of the holiday - Airport Karachi - Accommodation for 30 nights in Saudi Arabia - 2 times meal ', 'Visa Requirements:\r\n\r\nTo apply for a Saudi Hajj visa, applicants must meet the following requirements:\r\nApplication\r\nApplicant should complete a Saudi Hajj & Umrah visa application form and apply through travel agents authorized by the Saudi Arabia Ministry of Hajj & Umrah.\r\n\r\nPassport\r\nApplicant must have a passport valid for 6 months from the date of application submission.\r\n\r\nPersonal photo\r\nApplicant must submit 1 recent color photo; against a white background; 2x2 inches; natural facial expressions; photo 80% face; no eyeglasses; no head wear, except for religious reasons.\r\n\r\nVaccination certificate\r\nA health certification against Meningococcal Meningitis, issued at least 10 days before and less than 3 years from entry into Saudi Arabia, which is valid for at least 3 years. Depending on nationality, age, and health condition, other vaccinations may be required, such as yellow fever, polio, and influenza.\r\n\r\nProof of relationship (for women and children)\r\nWomen and children should be accompanied by a husband or father, Mahram, when traveling to Saudi Arabia, and Mahram must provide proof of relationship in the form of a marriage or birth certificate. Women and children must travel on the same flights with the Mahram.\r\n\r\nNo-objection letter (for women traveling with a group)\r\nWomen, over 45 years old, can perform Hajj, without a male guardian, on the condition that they are part of a group and have the permission of their Mahram in a no-objection letter.\r\n\r\nTicket\r\nApplicant must have a confirmed return/onward airline ticket..\r\n\r\nTravel Preparations:\r\nSince Hajj is a once-in-a-lifetime experience for most people, the importance of early and adequate preparation cannot be over-emphasized. There is a considerable investment of money, time, and physical effort required for the Pilgrimage to be fulfilling and meaningful. Information has to be collected, itineraries must be worked out, and documents have to be readied. The purpose of these preparations is not only to minimize physical discomfort, emotional aggravation and monetary expenses, but also to enable you to perform Hajj in relative peace of heart and mind. Therefore, it makes sense to be as ready as possible for this momentous journey of self-discovery, self-appraisal, and spiritual enlightenment.\r\n\r\nArrangements must be started early enough so that you are not rushed for time in the few days before your voyage commences. The paperwork, shopping, finalizing your travel and residential arrangements inside Saudi Arabia etc., consume a great deal of time. Three to four months ahead of your actual date of departure is a good estimate for starting your preparations. Your travel agent, or a knowledgeable friend who has performed Hajj recently, can also guide you in your preparations. Be sure to apply a \"factor of safety\" to their recommendations and allow yourself a somewhat greater period of preparation than they advise!\r\n\r\nThe following guidelines are intended to get you started in the right direction. Since individual needs and preferences vary widely you will, in all probability, add to the list as you prepare for the journey:\r\n\r\n\r\n\r\nReligious Rituals:\r\n\r\nFirst day of Hajj: 8th Dhu al-Hijjah (Tarwiyah Day)\r\nOn the 8th Dhu al-Hijjah, the pilgrims are reminded of their duties. They again don the Ihram garments and confirm their intention to make the pilgrimage. The prohibitions of Ihram start now.\r\n\r\nThe name of Tarwiyah refers to a narration of Ja\'far al-Sadiq. He described the reason that there was no water at Mount Arafat on the 8th day of Dhu al-Hijjah. If pilgrims wanted to stay at Arafat, they would have prepared water from Mecca and carried it by themselves there. So they told each other to drink enough. Finally, this day called Tarwiyah[60] that means to quench thirst in the Arabic language.[61] Tarwiyah Day is the first day of Hajj ritual. Also on this day, Husayn ibn Ali began to go to Karbala from Mecca.[62] Muhammad nominated to Tarwiyah Day as one of the four chosen days.[61]\r\n\r\nMina\r\n\r\nPilgrims wearing Ihram near Mount Arafat on the day of Hajj\r\n\r\nMount Arafat during Hajj\r\nAfter the morning prayer on the 8th of Dhu al-Hijjah, the pilgrims proceed to Mina where they spend the whole day and offer noon (Note: On Friday, Friday Prayer is Offered, instead of Dhuhr Prayer, at Mina), afternoon, evening, and night prayers.[63] The next morning after morning prayer, they leave Mina to go to Arafat.\r\n\r\necond day: 9th Dhu al-Hijjah (Arafah Day)\r\nThe 9th Dhul-Hijjah is known as Day of Arafah, and this day is called the Day of Hajj.[45]\r\n\r\nArafat\r\nMain article: Day of Arafah\r\nOn 9th Dhu al-Hijjah before noon, pilgrims arrive at Arafat, a barren and plain land some 20 kilometres (12 mi) east of Mecca,[64] where they stand in contemplative vigil: they offer supplications, repent on and atone for their past sins, and seek the mercy of God, and listen to the sermon from the Islamic scholars who deliver it from near Jabal al-Rahmah (The Mount of Mercy)[63] from where Muhammad is said to have delivered his last sermon. Lasting from noon through sunset,[64] this is known as \'standing before God\' (wuquf), one of the most significant rites of Hajj.[7] At Masjid al-Namirah, pilgrims offer noon and afternoon prayers together at noontime.[63] A pilgrim\'s Hajj is considered invalid if they do not spend the afternoon on Arafat.[64]\r\n\r\nMuzdalifah\r\n\r\nPilgrims at Muzdalifah\r\nPilgrims must leave Arafat for Muzdalifah after sunset without performing their maghrib (sunset) prayer at Arafat.[65] Muzdalifah is an area between Arafat and Mina. Upon reaching there, pilgrims perform Maghrib and Isha prayer jointly, spend the night praying and sleeping on the ground with open sky, and gather pebbles for the next day\'s ritual of the stoning of the Devil (Shaytan).[66]\r\n\r\nThird day: 10th Dhu al-Hijjah (Qurban Day)\r\nAfter the morning prayer, the Pilgrims move from Muzdalifah to Mina.\r\n\r\nAt Mina, the pilgrims perform symbolic Stoning of the Devil (Ramy al-Jamarat) by throwing seven stones from sunrise to sunset at only the largest of the three pillars, known as Jamrat al-Aqabah.[67][self-published source?] The remaining two pillars (jamarah) are not stoned on this day.[68] These pillars are said to represent Satan.[69] Pilgrims climb ramps to the multi-levelled Jamaraat Bridge, from which they can throw their pebbles at the jamarat. Because of safety reasons, in 2004 the pillars were replaced by long walls, with catch basins below to collect the pebbles.\r\n\r\nAnimal sacrificing\r\nAfter the stoning of the Devil, cattle (Surah 22:34-36) are sacrificed to commemorate the story of Ibrahim and Ismael. Traditionally the pilgrims slaughtered the animal themselves or oversaw the slaughtering. Today many pilgrims buy a sacrifice voucher in Mecca before the greater Hajj begins, which allows an animal to be slaughtered in the name of God (Allah) on the 10th, without the pilgrim being physically present. Modern abattoirs complete the processing of the meat, which is then sent as a charity to poor people around the world.[59] At the same time as the sacrifices occur at Mecca, Muslims worldwide perform similar sacrifices, in a three-day global festival called Eid al-Adha.[13]\r\n\r\nHair removal\r\nAfter sacrificing an animal, another important rite of Hajj is the shaving or trimming of head hair (known as Halak). All male pilgrims shave their head or trim their hair on the day of Eid al Adha and female pilgrims cut the tips of their hair.\r\n\r\nTawaf Ziyarat/Ifadah\r\n\r\nOn the same or the following day, the pilgrims re-visit the Sacred Mosque in Mecca for another tawaf, known as Tawaf al-Ifadah, an essential part of Hajj.[73] It symbolizes being in a hurry to respond to God and show love for Him, an obligatory part of Hajj. The night of the 10th is spent back at Mina.\r\n\r\nFourth day: 11th Dhu al-Hijjah\r\nStarting from noon to sunset on the 11 Dhu al-Hijjah (and again the following day), the pilgrims again throw seven pebbles at each of the three pillars in Mina. This is commonly known as the \"Stoning of the Devil\".[67]\r\n\r\nFifth day: 12th Dhu al-Hijjah\r\nOn 12 Dhu al-Hijjah, the same process of the stoning of the pillars as of 11 Dhu al-Hijjah takes place.[67] Pilgrims may leave Mina for Mecca before sunset on the 12th.\r\n\r\nLast day at Mina: 13th Dhu al-Hijjah\r\nIf unable to leave on the 12th before sunset or opt to stay longer, they must perform the stoning ritual again on the 13th before returning to Mecca.[67]\r\n\r\nTawaf al-Wadaa\r\nFinally, before leaving Mecca, pilgrims perform a farewell tawaf called the Tawaf al-Wadaa. \'Wadaa\' means \'to bid farewell\'. The pilgrims circle the Kaaba seven times counter-clockwise, and if they can, attempt to touch or kiss the Kaaba.[75]\r\n\r\nProcedures:', 'umrah.jpg', '2024-02-24 16:10:55', '2024-02-25 05:38:11');

-- --------------------------------------------------------

--
-- Table structure for table tblusers
--

CREATE TABLE tblusers (
  id int(11) NOT NULL,
  FullName varchar(100) DEFAULT NULL,
  MobileNumber char(10) DEFAULT NULL,
  EmailId varchar(70) DEFAULT NULL,
  Password varchar(100) DEFAULT NULL,
  RegDate timestamp NULL DEFAULT current_timestamp(),
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblusers
--

INSERT INTO tblusers (id, FullName, MobileNumber, EmailId, Password, RegDate, UpdationDate) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:33:20', NULL),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:33:56', NULL),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:34:20', NULL),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:34:38', NULL),
(5, 'Test', '1987894654', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-07-08 06:35:06', '2021-05-11 04:37:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table admin
--
ALTER TABLE admin
  ADD PRIMARY KEY (id);

--
-- Indexes for table tblbooking
--
ALTER TABLE tblbooking
  ADD PRIMARY KEY (BookingId);

--
-- Indexes for table tblenquiry
--
ALTER TABLE tblenquiry
  ADD PRIMARY KEY (id);

--
-- Indexes for table tblissues
--
ALTER TABLE tblissues
  ADD PRIMARY KEY (id);

--
-- Indexes for table tblpages
--
ALTER TABLE tblpages
  ADD PRIMARY KEY (id);

--
-- Indexes for table tbltourpackages
--
ALTER TABLE tbltourpackages
  ADD PRIMARY KEY (PackageId);

--
-- Indexes for table tblusers
--
ALTER TABLE tblusers
  ADD PRIMARY KEY (id),
  ADD KEY EmailId (EmailId),
  ADD KEY EmailId_2 (EmailId);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table admin
--
ALTER TABLE admin
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table tblbooking
--
ALTER TABLE tblbooking
  MODIFY BookingId int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table tblenquiry
--
ALTER TABLE tblenquiry
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table tblissues
--
ALTER TABLE tblissues
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table tblpages
--
ALTER TABLE tblpages
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table tbltourpackages
--
ALTER TABLE tbltourpackages
  MODIFY PackageId int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table tblusers
--
ALTER TABLE tblusers
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;