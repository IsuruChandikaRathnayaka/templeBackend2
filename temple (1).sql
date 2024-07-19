-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 19, 2024 at 06:21 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `temple`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Esala Perahera'),
(2, 'Damma School'),
(3, 'Vibhishana Devalaya');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `firstname`, `lastname`, `email`, `subject`, `message`) VALUES
(1, 'isuru', 'isuru@gmail.com', 'isuruchandika321@gmail.com', 'testing1', 'testing1 message');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `month` varchar(3) NOT NULL,
  `date` int(2) NOT NULL,
  `title_english` varchar(200) NOT NULL,
  `title_sinhala` varchar(200) NOT NULL,
  `description_english` varchar(1000) NOT NULL,
  `description_sinhala` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `month`, `date`, `title_english`, `title_sinhala`, `description_english`, `description_sinhala`) VALUES
(11, 'Jul', 20, 'Devol Madhu Pojotsavaya', 'දෙවොල් මඩු පූජෝත්සවය', 'Seven days after the end of the Perahara series at Natha Temple in Weediyagoda, a devolmadu festival is held in a manner peculiar to Raigamkoralaya. The purpose of worshiping all the deities including Goddess Pattini, led by Lord Natha, the good luck of all those who participated in the Perahara festival, and obtaining God\'s blessings for agricultural fertility are among the main objectives of holding the Weediyagoda Devolmadu festival.\n\n', 'වීදියගොඩ නාථ දේවාලයෙහි පෙරහර මාලාව අවසන්ව සත් දිනකට පසුව පහත රට රයිගම්කෝරලයට ආවේණික පරිද්දෙන් දෙවොල්මඩු මංගල්‍යයක් පවත්වයි. එය වීදියගොඩ පෙරහර මංගල්‍යයේ සමාප්තියයි. වීදියගොඩ දෙවොල්මඩු මංගල්‍යය නාථ දේවාලය ඉදිවී පෙරහර ආරම්භ වීම තරම්ම ඈතට විහිද යන්නකි.නාථ දෙවියන් ප්‍රමුඛ කොටගත් පත්තිනි දේවිය ඇතුළු සියලු දෙවියන්ට පින්දීමේ අරමුණත්, පෙරහර මංගල්‍යයට සහභාගි වූ සියල්ලන්ගේ වස්දොස් දුරැර සෙත්පැතීමත්, කෘෂිකාර්මික සශ්‍රීකත්වයට දේවාශීර්වාදය ලබා ගැනීමත් වීදියගොඩ දෙවොල්මඩු මංගල්‍යය පැවැත්වීමේ ප්‍රධාන අරමුණු අතර වෙයි.'),
(12, 'Jul', 19, 'paduru poojaava', 'පඬුරු පූජා කිරීමේ චාරිත්‍රය', 'According to the ancient custom, on the morning or evening of the first Paavada Perahara day, offerings are made to the Natha temple with auspicious auspiciousness. A few coins washed in the juice are placed on betel leaves and raw turmeric leaves along with a piece of turmeric and \'offering\' is done.', 'පුරාණ චාරිත්‍රයට අනුව පළමු පාවාඩ පෙරහර දිනයේ උදෑසන හෝ සවස් කාලයේ සුභ නැකතින් නාථ දේවාලයට පඬුරු දැමීම ආරම්භ කරයි.නාථ දේවාලයට පඬුරු දැමීමට ප්‍රථමව චෛත්‍යය, බෝධිය, විහාරය යන ස්ථානවලට පඬුරු පුදයි.දේවාලයන්ට පඬුරු පිදීමෙන් පසු කපු මහතා යාතිකා කොට සෙත් පතයි.අමු කහ සහ දෙහි යුෂ වලින් සෝදාගත් කාසි කිහිපයක් බුලත් සහ අමු කහ කොළ මත තබා කහ කැබැල්ලක්ද සමඟින් \'පඬුරු පිදීම\' සිදුකරනු ලබයි'),
(13, 'Jul', 14, 'Diyakapana Perahara', 'දියකපා ගෙවදීමේ දවල් පෙරහර', 'One commentator is of the opinion that the ritual of water cutting was added to the Perahara culture after King Gajaba broke the water and went to India and the Sri Lankan prisoners and the relic of Patra came to this country. It is customary to keep it safe. Kapu mahatun divides the river water with a rankaduwa in the middle of the river and collects some water. It is customary to keep one of the water until the next year\'s Perahara festival.', 'ගජබා රජු දියදෙබෑකොට ඉන්දියාවට ගොස් ලාංකික සිරකරුවන් හා පාත්‍රා ධාතුව මෙරටට වැඩවමවීමේ පුවතින් පසු දිය කැපීමේ චාරිත්‍රය පෙරහර සංස්කෘතියට එක් වූ බව එක් විචාරක මතයකි.කපු මහතුන් ගඟ මැදදී රන්කඩුවෙන් ගඟදිය දෙබෑකොට, දියකල කීපයක් ලබා ගැනීම මෙහිදී සිදුකරයි.ඉන් එක්දිය කලයක් ලබන වර්ෂයේ පෙරහර මංගල්‍ය පවත්වන තුරු සුරැකිව තබා ගැනීම සිරිතයි.ගං තොට දක්වා ගමන් කිරීමට පිටත් වන පෙරහර සතර වීදියේ ගමන් කලද රිට්ටාගෙට ගෙවදීම සිදු නොකරයි.'),
(14, 'Jul', 13, 'Randoli Maha Perahara Festival', 'රන්දෝලි මහ පෙරහර මංගල්‍යය', 'On the 7th day of Weediyagoda Natha Dewala Esala Perahara Festival, the temple procession is held for seven days and on the eighth day Randoli Perahara or Ekwele Perahara visits the streets. The main Perahara of the Perahara series is the Randoli Perahara. It appears that this Perahara has been used as the Randoli Perahara since the past because of the \'Randola\' or the randoli that carries the ornaments around in the Perahara.', 'වීදියගොඩ නාථ දේවාල ඇසළ පෙරහර මංගල්‍යයේ දින හතක් දේවාල පෙරහර පවත්වා අටවෙනි දින රන්දෝලි පෙරහර හෙවත් එක්වේලේ පෙරහර වීථි සංචාරය කරයි.පෙරහර මාලාවේ ප්‍රධානම පෙරහර රන්දෝලි පෙරහරයි.\'රන්දෝලාව\' නැතහොත් දේවාභරණ වඩමවමින් පෙරහරෙහි ගෙන යන රන්දෝලිය නිසාවෙන් මෙම පෙරහරට රන්දෝලි පෙරහර යැයි අතීතයේ පටන් භාවිතා වී ඇති බව පෙනී යයි.'),
(15, 'Jul', 11, 'Weedhi perahara', 'වීදි පෙරහර', 'Weedhi Perahara is called street perahara, which is located in the middle of Satara Street, which is located in the middle of Satara Goda. Street Perahara is two days. On the first day, once and on the second day, street perahara visits the streets of Satara Street.', 'වීදියගොඩ නාථ දේවාලය මැදිවන සේ පිහිටා ඇති සතර වීදියෙහි පවත්වනු ලබන පෙරහර වීදි පෙරහර නම් වෙයි.වීදි පෙරහර දින දෙකකි.පළමු දින එක්වටයක්ද දෙවන දින දෙවටක්ද වීදි පෙරහර සතර වීදියේ වීථි සංචාරය කරයි.'),
(16, 'Jul', 9, 'Pawada Perahara', 'පාවාඩ පෙරහර', 'With umbrellas, flags, sesat and guard weapons, the devabharan buried in Natha Devala Patthirippu is carried along the main road on footpaths to Rittageya is called Paavada Perahara.', 'සේසාත් මුර ආයුධ ඇතිව නාථ දේවාල පත්තිරිප්පුවේ තැන්පත් කොට ඇති දේවාභරණ රිට්ටාගෙය දක්වා මහවීදිය ඔස්සේ පාවාඩ මතින් වැඩමවාගෙන යාම පාවාඩ පෙරහර ලෙස හඳුන්වයි.'),
(17, 'Jul', 6, 'Kumbal Perahara', 'කුඹල් පෙරහර', 'Kumbal Perahara means pottery items such as pots, earthen lamps and pans, which are required for the perahara season of the temple, are kept in a cauldron and offered in a perahara to the Natha temple.\n\n', 'කුඹල් පෙරහර යන්නෙන් අදහස් වන්නේ දේවාලයේ පෙරහර සමයට අවශ්‍ය කරන හට්ටි,මුට්ටි,මැටි පහන්,කොතල, කලස් ආදී වූ මැටි භාණ්ඩ කදක තබාගෙන පෙරහරකින් පැමිණ නාථ දේවාලයට පූජා කිරීමයි.අතීතයේදී මෙය කුඹල් කර්මාන්තය කළ පුද්ගලයන් විසින් ඉතා ගෞරවයෙන්, දේවාශිර්වාදය ලැබීම පිණිස ඉටු කළ කාර්යයකි.'),
(18, 'Jun', 29, 'Feast of the Planting of Cups', 'කප් සිටුවීමේ මංගල්‍යය', 'In the hope of accomplishing the main goal of the Natha Temple Perahara in Weediyagoda, cup planting is done with determination according to the auspiciousness. Planting the cup, which is considered as a deity, means that the Perahara festival will be performed at the relevant time.\n\n', 'වීදියගොඩ නාථ දේවාල පෙරහරෙහි ප්‍රමුඛාර්ථය මුදුන් පමුණුවා ගැනීමේ අපේක්ෂාවෙන් අධිෂ්ඨානශීලීව නැකතට අනුව කප් සිටුවීම සිදුකරනු ලබයි.දේවකාරියක් ලෙස සලකන කප් සිටුවීමෙන් අරුත් දක්වන්නේ ස්ථිරවම පෙරහර මංගල්‍ය අදාළ කාලවකවානුවේදී සිදුකරනු ලබන බවයි.කප සිටුවා දේවාශිර්වාදයෙන් පෙරහර මංගල්‍යයන්ට මූලාරම්භය සකසයි.\n\n'),
(19, 'Apr', 15, 'New Year Festival', 'අවුරුදු මංගල්‍යය', 'The New Year Festival of the Maha Vihara and Natha Temple in Weediyagoda is held annually in the month of April, starting with the Sinhala New Year. The ritual of anointing the head is basically done here. Monday 15th April 2024 at 10.17 AM\n\n', 'වීදියගොඩ මහා විහාරයේ සහ නාථ දේවාලයේ අවුරුදු මංගල්‍යය සිංහල අලුත් අවුරුද්ද මුල්කොට ගනිමින් බක් මාසයේදී වාර්ෂිකව පවත්වනු ලබයි. හිස තෙල් ගෑමේ චාරිත්‍රය මෙහිදී මූලික වශයෙන් සිදුවේ.\n\n'),
(20, 'Mar', 21, 'New rice festival', 'අලුත් සහල් මංගල්‍යය', 'The Sri Lankans who have made agriculture their livelihood since ancient times have been offering the top part of their harvest to the Buddha\'s three jewels and gods.Saturday 30 March 2024 at 7.00 am\n\n', 'කෘෂිකර්මය ජීවනෝපායක් කොටගත් ලාංකිකයෝ පුරාණයේ සිටම තමන්ගේ අස්වැන්නේ අග්‍ර කොටස බුද්ධාදී ත්‍රිවිධ රත්නය සහ දෙවියන් උදෙසා පූජා කිරීම නොපිරිහෙලා සිදු කළෝය.අලුත් සහල් මංගල්‍යය නමින් සිදු කෙරෙන මෙම පූජා උත්සවය වීදියගොඩ මහා විහාරය මුල්කොට ගනිමින් සුභ දිනයක් අලළා සිදු කෙරෙයි.\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `picture_url` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `picture_url`, `category_id`) VALUES
(11, 'W-1721361297075.jpg', 1),
(12, 'W-1721361309826.jpg', 1),
(13, 'W-1721361322006.jpg', 1),
(14, 'W-1721361328220.jpg', 1),
(15, 'W-1721361332946.jpg', 1),
(16, 'W-1721361337274.jpg', 1),
(17, 'W-1721361342691.jpg', 1),
(18, 'W-1721361347650.jpg', 1),
(19, 'W-1721361357520.jpg', 1),
(20, 'W-1721361376444.jpg', 1),
(21, 'W-1721361380971.jpeg', 1),
(22, 'W-1721361385954.jpeg', 1),
(23, 'W-1721361390616.jpeg', 1),
(24, 'W-1721361395808.jpeg', 1),
(25, 'W-1721361401058.jpeg', 1),
(26, 'W-1721361407170.jpeg', 1),
(27, 'W-1721361413078.jpeg', 1),
(28, 'W-1721361417600.jpeg', 1),
(29, 'W-1721361422506.jpeg', 1),
(30, 'W-1721361427473.jpeg', 1),
(31, 'W-1721361432341.jpeg', 1),
(32, 'W-1721361437448.jpeg', 1),
(33, 'W-1721361442263.jpeg', 1),
(34, 'W-1721361446592.jpeg', 1),
(35, 'W-1721361451398.jpeg', 1),
(36, 'W-1721361456032.jpeg', 1),
(37, 'W-1721361488825.jpg', 2),
(38, 'W-1721361493918.jpg', 2),
(39, 'W-1721361498456.jpg', 2),
(40, 'W-1721361503037.jpg', 2),
(41, 'W-1721361508358.jpg', 2),
(42, 'W-1721361513446.jpg', 2),
(43, 'W-1721361517875.jpg', 2),
(44, 'W-1721361523036.jpg', 2),
(45, 'W-1721361527523.jpg', 2),
(46, 'W-1721361532477.jpg', 2),
(47, 'W-1721361561338.jpg', 3),
(48, 'W-1721361566288.jpg', 3),
(49, 'W-1721361571364.jpg', 3),
(50, 'W-1721361576435.jpg', 3),
(51, 'W-1721361581671.jpg', 3),
(52, 'W-1721361586651.jpg', 3),
(53, 'W-1721361591666.jpg', 3),
(54, 'W-1721361597394.jpg', 3),
(55, 'W-1721361602770.jpg', 3),
(56, 'W-1721361608698.jpg', 3),
(57, 'W-1721361613834.jpeg', 3),
(58, 'W-1721361619714.jpeg', 3),
(59, 'W-1721361624538.jpeg', 3),
(60, 'W-1721361629213.jpeg', 3),
(61, 'W-1721361634233.jpeg', 3),
(62, 'W-1721361638531.jpeg', 3),
(63, 'W-1721361643394.jpeg', 3),
(64, 'W-1721361648377.jpeg', 3),
(65, 'W-1721361652730.jpeg', 3),
(66, 'W-1721361656815.jpeg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
