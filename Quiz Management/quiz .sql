-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2019 at 05:31 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Drashti', 'drashti@123'),
(2, 'Devanshi', 'devu@123');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `msg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `msg`) VALUES
('Riya', 'riya@gmail.com', 'Best Interface for learn.'),
('Siya Mehra', 'siya@yahoo.com', 'Great learning experience.');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_ques`
--

CREATE TABLE `quiz_ques` (
  `id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `level` int(10) NOT NULL,
  `compr` varchar(5000) NOT NULL,
  `ques` varchar(1000) NOT NULL,
  `op1` varchar(100) NOT NULL,
  `op2` varchar(100) NOT NULL,
  `op3` varchar(100) NOT NULL,
  `op4` varchar(100) NOT NULL,
  `solution` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_ques`
--

INSERT INTO `quiz_ques` (`id`, `sub_id`, `level`, `compr`, `ques`, `op1`, `op2`, `op3`, `op4`, `solution`) VALUES
(1, 3, 2, 'A,B,C and D and E are 5 cities of which 3 are industrial cities, 2 are port cities, 1 hill station and 3 cities have universities. 1. Hill city has university but not port. 2.The industrial cities with universities do not have port. 3. 2 industrial cities have universities and C and D are not industrial cities. 4. D is not a port city, No port city has university and B is a port city. 5. None of the individual cities has hill station. D is hill station and E has University.', 'Which city has industry as well as port but does not have university?', 'A and D', 'D and B', 'B', 'C', 'B'),
(2, 3, 2, 'A,B,C,D and E are 5 cities of which cities of which 3 are industrial cities,2 are port citie, 1 hill station & 3 cities have Universities.1.Hill city has university but not port.2.The industrial cities with universities do not have port. 3. 2 industrial cities have universities and C & D are not industrial cities. 4. D is not port city. No port city has university and B is a port city. 5.None of the industrial cities has hill station.D is a hill station and E has university.', 'Which 2 cities have ports?', 'B & D', 'D & C', 'D & E', 'None of these', 'None of these'),
(3, 3, 2, 'A,B,C,D and E are 5 cities of which cities of which 3 are industrial cities,2 are port citie, 1 hill station & 3 cities have Universities.1.Hill city has university but not port.2.The industrial cities with universities do not have port. 3. 2 industrial cities have universities and C & D are not industrial cities. 4. D is not port city. No port city has university and B is a port city. 5.None of the industrial cities has hill station.D is a hill station and E has university.', 'Which industrial city does not have university?', 'A', 'B', 'C', 'E', 'B'),
(4, 3, 2, 'A,B,C,D and E are 5 cities of which cities of which 3 are industrial cities,2 are port citie, 1 hill station & 3 cities have Universities.1.Hill city has university but not port.2.The industrial cities with universities do not have port. 3. 2 industrial cities have universities and C & D are not industrial cities. 4. D is not port city. No port city has university and B is a port city. 5.None of the industrial cities has hill station.D is a hill station and E has university.', 'Which city neither has industry nor university nor is a  hill city?', 'A', 'B', 'C', 'D', 'C'),
(5, 3, 2, 'A,B,C,D and E are 5 cities of which cities of which 3 are industrial cities,2 are port citie, 1 hill station & 3 cities have Universities.1.Hill city has university but not port.2.The industrial cities with universities do not have port. 3. 2 industrial cities have universities and C & D are not industrial cities. 4. D is not port city. No port city has university and B is a port city. 5.None of the industrial cities has hill station.D is a hill station and E has university.', 'which industrial city has hill station?', 'A', 'B', 'C', 'None of these', 'None of these'),
(6, 3, 1, '\r\n100 aliens attended an intergalactic meeting on earth where 73 had 2 heads,28 had 3 eyes, 21 had 4 ams, 12 had 2 heads & 4 arms,9 had 3 eyes and 4 arms, 8 had 2  heads & 4 arms, 3 had all 3 unusual features.', 'How many aliens had 2 heads only?', '56', '57', '73', '10', '56'),
(7, 3, 1, '100 aliens attended an intergalactic meeting on earth where 73 had 2 heads,28 had 3 eyes, 21 had 4 ams, 12 had 2 heads & 4 arms,9 had 3 eyes and 4 arms, 8 had 2  heads & 4 arms, 3 had all 3 unusual features.', 'How many aliens had both 4 arms & 3 eyes only?', '6', '7', '8', '9', '6'),
(8, 3, 1, '\r\n100 aliens attended an intergalactic meeting on earth where 73 had 2 heads,28 had 3 eyes, 21 had 4 ams, 12 had 2 heads & 4 arms,9 had 3 eyes and 4 arms, 8 had 2  heads & 4 arms, 3 had all 3 unusual features.', 'How many aliens had none of these unusual features?', '2', '3', '4', '5', '4'),
(9, 3, 1, '', 'Look at this series: 7, 10, 8, 11, 9, 12, ... What number should come next?', '7', '10', '12', '13', '10'),
(10, 3, 1, '', 'Look at this series: 36, 34, 30, 28, 24, ... What number should come next?', '26', '23', '22', '20', '22'),
(11, 4, 1, '', 'Give Synonym of Given Word: Abundant', 'Plentiful', 'Scare', 'Sparse', 'None of these', 'Plentiful'),
(12, 4, 1, '', 'Give Synonym of Given Word: Elaborate', 'Bright', 'Detailed', 'Simple', 'None of these', 'Detailed'),
(13, 4, 1, '', 'Give Synonym of Given Word: Vital', 'Crucial', 'Unimportant', 'Vanish', 'None of these', 'Crucial'),
(14, 4, 1, '', 'Give Synonym of Given Word: Inept', 'Intention', 'Competant', 'Unskilled', 'None of these', 'Unskilled'),
(15, 4, 1, '', 'Give Synonym of Given Word: Soothe', 'Aggravate', 'Smooth', 'Relieve', 'None of these', 'Relieve'),
(16, 5, 1, '', 'Give Antonym of Given Word: Appeal', 'Attract', 'Bore', 'Inticrate', 'None of these', 'Bore'),
(17, 5, 1, '', 'Give Antonym of Given Word: Optimistic', 'Pessimistic', 'Bright', 'Attract', 'None of these', 'Pessimistic'),
(18, 5, 1, '', 'Give Antonym of Given Word: Boisterous', 'Remain', 'Exuberant', 'Restrained', 'None of these', 'Restrained'),
(19, 5, 1, '', 'Give Antonym of Given Word: Linger', 'Ample', 'Vanish', 'Stay out', 'None of these', 'Vanish'),
(20, 5, 1, '', 'Give Antonym of Given Word: Abundate', 'Scarce', 'Plentiful', 'Bore', 'None of these', 'Scarce'),
(21, 1, 1, '', 'The total of the ages of Amar, Akbar and Anthony is 80 years.What was the total of their ages 3 years ago?\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '71 years', '72 years', '74 years', '77 years', '71 years'),
(22, 1, 1, '', 'Two bus tickets from city A to B and three tickets from city A to C cost Rs. 77 but three tickets from city A to B and two tickets from city A to C cost Rs. 73. What are the fares for cities B and C from A ?', 'Rs. 4, Rs. 23', 'Rs. 13, Rs. 17', 'Rs. 15, Rs. 14', 'Rs. 17, Rs. 13', 'Rs. 13, Rs. 17'),
(23, 1, 1, '', 'An institute organised a fete and 1/5 of the girls and 1/8 of the boys participated in the same. What fraction of the total number of students took part in the fete ?', '2/13', '13/40', 'Data inadequate', 'None of these', 'Data inadequate'),
(24, 1, 1, '', 'A number of friends decided to go on a picnic and planned to spend Rs. 96 on eatables. Four of them, however, did not turn up. As a consequence, the remaining ones had to contribute Rs. 4 each extra. The number of those who attended the picnic was', '8', '12', '16', '24', '8'),
(25, 1, 1, '', 'A, B, C, D and E play a game of cards. A says to B, \"If you give me three cards, you will have as many as E has and if I give you three cards, you will have as many as D has.\" A and B together have 10 cards more than what D and E together have. If B has two cards more than what C has and the total number of cards be 133, how many cards does B have ?', '22', '23', '25', '35', '25'),
(26, 1, 2, '', 'A sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is:', 'Rs. 650', 'Rs. 690', 'Rs. 698', 'Rs. 700', 'Rs. 698'),
(27, 1, 2, '', 'A sum of money amounts to Rs. 9800 after 5 years and Rs. 12005 after 8 years at the same rate of simple interest. The rate of interest per annum is:', '5%', '12%', '8%', '15%', '8%'),
(28, 1, 2, '', 'What will be the ratio of simple interest earned by certain amount at the same rate of interest for 6 years and that for 9 years?', '1:3', '1:4', '2:3', 'Data inadequate', '2:3'),
(31, 1, 2, '', 'A sum of money is to be distributed among A, B, C, D in the proportion of 5 : 2 : 4 : 3. If C gets Rs. 1000 more than D, what is B\'s share?', 'Rs. 500', 'Rs. 1500', 'Rs. 2000', 'None of These', 'Rs. 2000'),
(32, 1, 2, '', 'In a mixture 60 litres, the ratio of milk and water 2 : 1. If this ratio is to be 1 : 2, then the quantity of water to be further added is:', '20 litres', '30 litres', '40 litres', '60 litres', '60 litres'),
(33, 1, 3, '', 'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?\r\n\r\n', '120 meters', '180 meters', '324 meters', '150 meters', '150 meters'),
(34, 1, 3, '', 'A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:', '45 km/hr', '50 km/hr', '54 km/hr', '55 km/hr', '50 km/hr'),
(35, 1, 3, '', '	\r\nA person crosses a 600 m long street in 5 minutes. What is his speed in km per hour?', '3.6', '7.2', '8.4', '10', '7.2'),
(36, 1, 3, '', 'If a person walks at 14 km/hr instead of 10 km/hr, he would have walked 20 km more. The actual distance travelled by him is:', '50 km', '56 km', '70 km', '80 km', '50 km'),
(37, 1, 3, '', 'From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done?', '564', '645', '735', '756', '756'),
(38, 3, 3, 'Five roommates Randy, Sally, Terry, Uma, and Vernon each do one housekeeping task mopping, sweeping, laundry, vacuuming, or dusting one day a week, Monday through Friday.\r\n\r\n* Vernon does not vacuum and does not do his task on Tuesday.\r\n* Sally does the dusting, and does not do it on Monday or Friday.\r\n* The mopping is done on Thursday.\r\n* Terry does his task, which is not vacuuming, on Wednesday.\r\n* The laundry is done on Friday, and not by Uma.\r\n* Randy does his task on Monday.', 'What task does Terry do on Wednesday?', 'vacuuming', 'dusting', 'mopping', 'sweeping', 'sweeping'),
(39, 3, 3, 'Five roommates Randy, Sally, Terry, Uma, and Vernon each do one housekeeping task mopping, sweeping, laundry, vacuuming, or dusting one day a week, Monday through Friday.\r\n\r\n* Vernon does not vacuum and does not do his task on Tuesday.\r\n* Sally does the dusting, and does not do it on Monday or Friday.\r\n* The mopping is done on Thursday.\r\n* Terry does his task, which is not vacuuming, on Wednesday.\r\n* The laundry is done on Friday, and not by Uma.\r\n* Randy does his task on Monday.', 'What day does Uma do her task?', 'Monday', 'Tuesday', 'Thursday', 'Friday', 'Thursday'),
(40, 3, 3, 'Five roommates Randy, Sally, Terry, Uma, and Vernon each do one housekeeping task mopping, sweeping, laundry, vacuuming, or dusting one day a week, Monday through Friday.\r\n\r\n* Vernon does not vacuum and does not do his task on Tuesday.\r\n* Sally does the dusting, and does not do it on Monday or Friday.\r\n* The mopping is done on Thursday.\r\n* Terry does his task, which is not vacuuming, on Wednesday.\r\n* The laundry is done on Friday, and not by Uma.\r\n* Randy does his task on Monday.', 'What task does Vernon do?', 'vacuuming', 'dusting', 'mopping', 'laundry', 'laundry'),
(41, 3, 3, 'Five roommates Randy, Sally, Terry, Uma, and Vernon each do one housekeeping task mopping, sweeping, laundry, vacuuming, or dusting one day a week, Monday through Friday.\r\n\r\n* Vernon does not vacuum and does not do his task on Tuesday.\r\n* Sally does the dusting, and does not do it on Monday or Friday.\r\n* The mopping is done on Thursday.\r\n* Terry does his task, which is not vacuuming, on Wednesday.\r\n* The laundry is done on Friday, and not by Uma.\r\n* Randy does his task on Monday.', 'What day is the vacuuming done?', 'Thursday', 'Friday', 'Monday', 'Wednesday', 'Monday'),
(42, 3, 3, 'Five roommates Randy, Sally, Terry, Uma, and Vernon each do one housekeeping task mopping, sweeping, laundry, vacuuming, or dusting one day a week, Monday through Friday.\r\n\r\n* Vernon does not vacuum and does not do his task on Tuesday.\r\n* Sally does the dusting, and does not do it on Monday or Friday.\r\n* The mopping is done on Thursday.\r\n* Terry does his task, which is not vacuuming, on Wednesday.\r\n* The laundry is done on Friday, and not by Uma.\r\n* Randy does his task on Monday.', 'When does Sally do the dusting?', 'Friday', 'Monday', 'Tuesday', 'Wednesday', 'Tuesday'),
(43, 4, 2, '', 'CORPULENT', 'Lean', 'Obese', 'Gaunt', 'Emaciated', 'Obese'),
(44, 4, 2, '', 'BRIEF', 'Limited', 'Small', 'Little', 'Short', 'Short'),
(47, 4, 2, '', 'MELD', 'To soothe', 'Merge', 'Purchase', 'Glisten', 'Merge'),
(48, 4, 2, '', 'LYNCH', 'Hang', 'Madden', 'Kill', 'Shoot', 'Kill'),
(49, 4, 2, '', 'TORTURE', 'Torment', 'Chastisement', 'Harassment', 'Terror', 'Torment'),
(50, 4, 3, '', 'UNCOUTH', 'Ungraceful', 'Rough', 'Slovenly', 'Dirty', 'Rough'),
(51, 4, 3, '', 'COMMENSURATE', 'Measurable', 'Proportionate', 'Begining', 'Appropriate', 'Proportionate'),
(52, 4, 3, '', 'GERMANE', 'Responsible', 'Logical', 'Possible', 'Relevant', 'Relevant'),
(53, 4, 3, '', 'ASCEND', 'Leap', 'Grow', 'Deviate', 'Mount', 'Mount'),
(54, 4, 3, '', 'FURORE', 'Excitement', 'Worry', 'Flux', 'Anteroom', 'Excitement'),
(55, 5, 2, '', 'QUIESCENT', 'ACTIVE', 'Dormant', 'Weak', 'Unconcerned', 'ACTIVE'),
(56, 5, 2, '', 'VANITY', 'Pride', 'Humility', 'Conceit', 'Ostentatious', 'Humility'),
(57, 5, 2, '', 'EPILOGUE', 'Dialogue', 'Prelude', 'Post script', 'Epigram', 'Prelude'),
(58, 5, 2, '', 'CAPACIOUS', 'Limited', 'Caring', 'Foolish', 'Changeable', 'Limited'),
(59, 5, 2, '', 'ADAPTABLE', 'Adoptable', 'Flexible', 'Yielding', 'Rigid', 'Rigid'),
(60, 5, 3, '', 'INDUSTRIOUS', 'Indifferent', 'Indolent', 'Casual', 'Passive', 'Indolent'),
(61, 5, 3, '', 'ALIEN', 'Native', 'Domiciled', 'Natural', 'Resident', 'Native'),
(62, 5, 3, '', 'SYNTHETIC', 'Affable', 'Natural', 'Plastic', 'Cosmetic', 'Natural'),
(63, 5, 3, '', 'STRINGENT', 'General', 'Vehement', 'Lenient', 'Magnanimous', 'Lenient'),
(64, 5, 3, '', 'FICKLE', 'Courageous', 'Sincere\r\n	', 'Steadfast', 'Humble', 'Steadfast'),
(66, 6, 1, '', 'The small child does whatever his father was done.', 'has done', 'did', 'does', 'had done', 'does'),
(67, 6, 1, '', 'You need not come unless you want to.', 'You don\'t need to come unless you want to', 'You come only when you want to', 'You come unless you don\'t want to', 'You needn\'t come until you don\'t want to', 'You don\'t need to come unless you want to'),
(68, 6, 1, '', 'He is too important for tolerating any delay.', 'to tolerate', 'to tolerating', 'at tolerating', 'No correction required', 'to tolerate'),
(69, 6, 1, '', '	\r\nI need not offer any explanation regarding this incident - my behaviour is speaking itself.', 'will speak to itself', 'speaks for itself', 'speaks about itself', 'No correction required', 'speaks for itself'),
(70, 6, 1, '', 'They were all shocked at his failure in the competition.', 'were shocked at all', 'had all shocked at', 'had been all shocked on', 'No correction required', 'No correction required'),
(71, 6, 2, '', '	\r\nOne of the most significant phenomenons of our time has been the development of cinema.', 'phenomenon', 'phenomena', 'phenomenonna', 'No correction required', 'phenomena'),
(72, 6, 2, '', 'Had you been told me about your problem, I would have helped you.', 'If you would have told', 'Had you have told', 'had you told', 'No correction required', 'had you told'),
(73, 6, 2, '', '	\r\nIt was until many years later that Gandhi became a rebel against authority.', 'It was not until many years', 'It was till many years', 'Until It was many years', 'No correction required', 'It was not until many years'),
(74, 6, 2, '', '	\r\nAnand has the guts to rise from the occasion and come out successfully.', 'in rising from', 'to raise with', 'to rise to', 'No correction required', 'to rise to'),
(75, 6, 2, '', '	\r\nIf you are thinking about investigation overseas, isn\'t it makes sense to find an experience guide?', 'it is not making', 'doesn\'t it make', 'does it make', 'No correction required', 'doesn\'t it make'),
(76, 6, 3, '', 'The orator had been left the auditorium before the audience stood up.', 'had been leaving', 'was left', 'had left', 'No correction required', 'had left'),
(77, 6, 3, '', 'The tea-estate administration is in such mess there is no leader to set the things right.', 'in such a mess here', 'in such a mess that there', 'with such a mess that there', 'No correction required', 'in such a mess that there'),
(78, 6, 3, '', 'They examined both the samples very carefully but failed to detect any difference in them.', 'some difference in', 'some difference between', 'any difference between', 'No correction required', 'any difference between'),
(79, 6, 3, '', '	\r\n\"Friends and comrades, the light has gone away from our lives and there is darkness everywhere\"', 'off', 'out of', 'out from', 'No correction required', 'out of'),
(80, 6, 3, '', '	\r\nBecause of his ill health, the doctor has advised him not to refrain from smoking.', 'to refrain from', 'to not refrain from', 'to be refrained from', 'No correction required', 'to refrain from'),
(81, 7, 1, '', 'Find the correctly spelt words.', 'Efficient', 'Treatmeant', 'Beterment', 'Employd', 'Efficient'),
(82, 7, 1, '', 'Find the correctly spelt words.', 'Foreign', 'Foreine', 'Fariegn', 'Forein', 'Foreign'),
(83, 7, 1, '', 'Find the correctly spelt words.', 'Ommineous', 'Omineous', 'Omenous', 'Ominous', 'Ominous'),
(84, 7, 1, '', 'Find the correctly spelt words.', 'Pessenger', 'Passenger', 'Pasanger', 'Pesanger', 'Passenger'),
(85, 7, 1, '', 'Find the correctly spelt words.', 'Benefitted', 'Benifited', 'Benefited', 'Benefeted', 'Benefited'),
(86, 7, 2, '', 'Find the correctly spelt words.', 'Friming', 'Burnning', 'Running', 'frying', 'Running'),
(87, 7, 2, '', 'Find the correctly spelt words.', 'Dammage', 'Damaige', 'Dammege', 'Damage', 'Damage'),
(88, 7, 2, '', 'Find the correctly spelt words.', 'Accomplish', 'Acomplush', 'Ackmplesh', 'Accompalish', 'Accomplish'),
(89, 7, 2, '', 'Find the correctly spelt words.', 'Puerrile', 'Puerrille', 'Purrile', 'Puerile', 'Puerile'),
(90, 7, 2, '', 'Find the correctly spelt words.', 'Satelite', 'Sattelite', 'Satellite', 'Sattellite', 'Satellite'),
(91, 7, 3, '', 'Find the correctly spelt words.', 'Eflorescence', 'Efllorescence', 'Efflorescence', 'Efflorascence', 'Efflorescence'),
(92, 7, 3, '', 'Find the correctly spelt words.', 'Exterminatte', 'Inexpliccable', 'Offspring', 'Reffere', 'Offspring'),
(93, 7, 3, '', 'Find the correctly spelt words.', 'Equanimity', 'Equannimity', 'Equanimmity', 'Equinimity', 'Equanimity'),
(94, 7, 3, '', 'Find the correctly spelt words.', 'Swelte', 'Filpant', 'Licentious', 'Puessile', 'Licentious'),
(95, 7, 3, '', 'Find the correctly spelt words.', 'Hindrance', 'Hinderrance', 'Hindrence', 'Hinderence', 'Hindrance'),
(96, 8, 1, '#include<stdio.h>\r\nint main()\r\n{\r\n    int a = 10;\r\n    switch(a)\r\n    {\r\n    }\r\n    printf(\"This is c program.\");\r\n    return 0;\r\n}', 'Point out the error, if any in the program.', 'Error: No case statement specified\r\n', 'Error: No default specified\r\n', 'No Error\r\n', 'Error: infinite loop occurs', 'No Error\r\n'),
(97, 8, 1, 'FILE *fp;\r\nfp = fopen(\"source.txt\", \"rb\");', 'What is the purpose of \"rb\" in fopen() function used in the code?', 'open \"source.txt\" in binary mode for reading\r\n	', 'open \"source.txt\" in binary mode for reading and writing\r\n', 'Create a new file \"source.txt\" for reading and writing\r\n', 'None of above\r\n', 'open \"source.txt\" in binary mode for reading'),
(98, 8, 1, '', 'If the definition of the external variable occurs in the source file before its use in a particular function, then there is no need for an extern declaration in the function.', 'True\r\n', 'False\r\n', '', '', 'True'),
(99, 8, 1, '#include<stdio.h>\r\n\r\nint main()\r\n{\r\n    char *str;\r\n    str = \"%s\";\r\n    printf(str, \"K\\n\");\r\n    return 0;\r\n}', 'What will be the output of the program ?', 'Error\r\n', 'No output\r\n', 'K', '%s', 'K'),
(100, 8, 1, '', 'Can I increase the size of dynamically allocated array?', 'Yes', 'No', '', '', 'Yes'),
(101, 8, 2, '', 'Which of the following are correctly formed #define statements in C?', '#define CUBE (X) (X*X*X);\r\n', '#define CUBE(x) (X*X*X)\r\n', '#define CUBE(X)(X*X*X)\r\n', '#define CUBE(X) {X*X*X}\r\n', '#define CUBE(X)(X*X*X)\r\n'),
(102, 8, 2, '', 'scanf() or atoi() function can be used to convert a string like \"436\" in to integer.', 'Yes', 'No', '', '', 'Yes'),
(103, 8, 2, '/* myprog.c */\r\n#include<stdio.h>\r\n\r\nint main(int argc, char **argv)\r\n{\r\n    printf(\"%c\\n\", **++argv);\r\n    return 0;\r\n}', 'What will be the output of the program (myprog.c) given below if it is executed from the command line?\r\ncmd> myprog one two three', 'myprog one two three\r\n', 'myprog one\r\n', 'o\r\n', 'two', 'o\r\n'),
(104, 8, 2, '', '	\r\nIs it necessary that the size of all elements in a union should be same?', 'Yes', 'No', '', '', 'No'),
(105, 8, 2, '', 'Usually recursion works slower than loops.', 'Yes', 'No', '', '', 'Yes'),
(106, 8, 3, '#include<stdio.h>\r\nint main()\r\n{\r\n    float a=1.5, b=1.55;\r\n    if(a=b)\r\n        printf(\"a and b are equal\\n\");\r\n    else\r\n        printf(\"a and b are not equal\\n\");\r\n    return 0;\r\n}', 'Which of the following statements are correct about the below program?', 'Output: \"a and b are equal\"\r\n', 'Output: \"a and b are not equal\"\r\n', 'Floats cannot be compared using if\r\n', 'Switch should be used to compare floats\r\n', 'Output: \"a and b are equal\"\r\n'),
(107, 8, 3, '#include<stdio.h>\r\n#include<string.h>\r\n\r\nint main()\r\n{\r\n    static char s[] = \"Hello!\";\r\n    printf(\"%d\\n\", *(s+strlen(s)));\r\n    return 0;\r\n}', 'What will be the output of the program ?', '8', '0', '16', 'Error', '0'),
(108, 8, 3, '', '	\r\nWould the following typedef work?\r\ntypedef #include l;', 'Yes', 'No', '', '', 'No'),
(109, 8, 3, '#include<stdio.h>\r\n\r\nint main()\r\n{\r\n    const char *s = \"\";\r\n    char str[] = \"Hello\";\r\n    s = str;\r\n    while(*s)\r\n        printf(\"%c\", *s++);\r\n\r\n    return 0;\r\n}', 'What will be the output of the program?', 'Error', 'H', 'Hello', 'Hel', 'Hello'),
(110, 8, 3, '', 'Macros have a local scope.', 'True', 'False', '', '', 'False'),
(111, 10, 1, '', 'Which of the following statement is incorrect?', 'The default value for an argument can be a global constant.\r\n', 'The default arguments are given in the function prototype.\r\n', 'Compiler uses the prototype information to build a call, not the function definition.\r\n', 'The default arguments are given in the function prototype and should be repeated in the function def', 'The default arguments are given in the function prototype and should be repeated in the function definition.'),
(112, 10, 1, '#include<iostream.h> \r\nint main()\r\n{\r\n    int arr[] = {1, 2 ,3, 4, 5}; \r\n    int &zarr = arr;\r\n    for(int i = 0; i <= 4; i++)\r\n    {\r\n        arr[i] += arr[i];\r\n    }\r\n    for(i = 0; i <= 4; i++)\r\n        cout<< zarr[i]; \r\n    return 0; \r\n}', 'Which of the following statement is correct about the program given below?', 'The program will print the output 1 2 3 4 5.\r\n', 'The program will print the output 2 4 6 8 10.\r\n', 'The program will print the output 1 1 1 1 1.\r\n', 'It will result in a compile time error.\r\n', 'It will result in a compile time error.\r\n'),
(113, 10, 1, '', '	\r\nA reference is declared using the _____ symbol.', '&&', '&', '||', '!', '&'),
(114, 10, 1, '', 'Which of the following term is used for a function defined inside a class?', 'Member Variable\r\n', 'Member function\r\n', 'Class function\r\n', 'Classic function\r\n', 'Member function\r\n'),
(115, 10, 1, '', '	\r\nWhich of the following is not a type of inheritance?', 'Multiple\r\n', 'Multilevel\r\n', 'Distributive\r\n', 'Hierarchical\r\n', 'Distributive'),
(116, 10, 2, '', '	\r\nWhich of the following ways are legal to access a class data member using this pointer?', 'this->x\r\n', 'this.x\r\n', '*this.x\r\n', '*this-x\r\n', 'this->x'),
(117, 10, 2, '', 'Which of the following is an abstract data type?', 'int', 'Double', 'string', 'Class', 'Class'),
(118, 10, 2, '', 'Which of the following concepts means waiting until runtime to determine which function to call?', 'Data hiding\r\n', 'Dynamic casting\r\n', 'Dynamic binding\r\n', 'Dynamic loading\r\n', 'Dynamic binding\r\n'),
(119, 10, 2, '', '	\r\nWhich of the following statements is correct about the constructors and destructors?', 'Destructors can take arguments but constructors cannot.\r\n', 'Constructors can take arguments but destructors cannot.\r\n', 'Destructors can be overloaded but constructors cannot be overloaded.\r\n', 'Constructors and destructors can both return a value.\r\n', 'Constructors can take arguments but destructors cannot.\r\n'),
(120, 10, 2, '', 'Which of the following can access private data members or member functions of a class?\r\n\r\n', 'Any function in the program.\r\n', 'All global functions in the program.\r\n', 'Any member function of that class.\r\n', 'Only public member functions of that class.\r\n', 'Any member function of that class.\r\n'),
(121, 10, 3, '', 'Which of the following gets called when an object is being created?', 'constructor\r\n', 'virtual function\r\n', 'destructor\r\n', 'main\r\n', 'constructor'),
(122, 10, 3, '', 'Which constructor function is designed to copy objects of the same class type?', 'Create constructor\r\n', 'Object constructor\r\n', 'Dynamic constructor\r\n', 'Copy constructor\r\n', 'Copy constructor\r\n'),
(123, 10, 3, '', 'If the programmer does not explicitly provide a destructor, then which of the following creates an empty destructor?', 'Preprocessor\r\n', 'Compiler\r\n', 'Linker\r\n', 'main() function\r\n', 'Compiler'),
(124, 10, 3, '', '	\r\nWhich of the following header file includes definition of cin and cout?', 'istream.h\r\n', 'ostream.h\r\n', 'iomanip.h\r\n', 'iostream.h\r\n', 'iostream.h\r\n'),
(125, 10, 3, '', 'Which of the following statement will be correct if the function has three arguments passed to it?', 'The trailing argument will be the default argument.\r\n', 'The first argument will be the default argument.\r\n', 'The middle argument will be the default argument.\r\n', 'All the argument will be the default argument.\r\n', 'The trailing argument will be the default argument.\r\n'),
(126, 11, 1, 'class Test \r\n{\r\n    public static void main(String [] args) \r\n    {\r\n        int x= 0;\r\n        int y= 0;\r\n        for (int z = 0; z < 5; z++) \r\n        {\r\n            if (( ++x > 2 ) && (++y > 2)) \r\n            {\r\n                x++;\r\n            }\r\n        }\r\n        System.out.println(x + \" \" + y);\r\n    }\r\n}', 'What will be the output of the program?', '52', '53', '63', '64', '63'),
(127, 11, 1, '', 'Which of the following will not directly cause a thread to stop?', 'notify()\r\n', 'wait()\r\n', 'InputStream acces\r\n', 'sleep()', 'notify()'),
(128, 11, 1, 'public class Test \r\n{  \r\n    public static void main(String args[])\r\n    { \r\n        class Foo \r\n        {\r\n            public int i = 3;\r\n        } \r\n        Object o = (Object)new Foo();\r\n        Foo foo = (Foo)o;\r\n        System.out.println(\"i = \" + foo.i);\r\n    }\r\n}', 'What will be the output of the program?', 'i = 3\r\n', 'Compilation fails.\r\n', 'i = 5\r\n', 'A ClassCastException will occur.', 'i = 3'),
(129, 11, 1, '', 'Which statement is true?\r\n', 'To call wait(), an object must own the lock on the thread.\r\n', 'The notify() method is defined in class java.lang.Thread.', 'The notify() method causes a thread to immediately release its locks.', 'The notifyAll() method must be called from a synchronized context.', 'The notifyAll() method must be called from a synchronized context.'),
(130, 11, 1, '', 'The notifyAll() method must be called from a synchronized context.', 'A static method cannot be synchronized.\r\n', 'If a class has synchronized code, multiple threads can still access the nonsynchronized code.\r\n', 'Variables can be protected from concurrent access problems by marking them with the synchronized key', 'When a thread sleeps, it releases its locks.\r\n', 'If a class has synchronized code, multiple threads can still access the nonsynchronized code.'),
(131, 11, 2, '', 'Which is true about an anonymous inner class?', 'It can extend exactly one class and implement exactly one interface.\r\n', 'It can extend exactly one class and can implement multiple interfaces.\r\n', 'It can extend exactly one class or implement exactly one interface.\r\n', 'It can implement multiple interfaces regardless of whether it also extends a class.\r\n', 'It can extend exactly one class or implement exactly one interface.'),
(132, 11, 2, 'public class Outer \r\n{ \r\n    public void someOuterMethod() \r\n    {\r\n        //Line 5 \r\n    } \r\n    public class Inner { } \r\n    \r\n    public static void main(String[] argv) \r\n    {\r\n        Outer ot = new Outer(); \r\n        //Line 10\r\n    } \r\n} ', 'Which of the following code fragments inserted, will allow to compile?', 'new Inner(); //At line 5\r\n', 'new Inner(); //At line 10\r\n', 'new ot.Inner(); //At line 10\r\n', 'new Outer.Inner(); //At line 10\r\n', 'new Inner(); //At line 5\r\n'),
(133, 11, 2, '', 'Given a method in a protected class, what access modifier do you use to restrict access to that method to only the other members of the same class?', 'final\r\n', 'static\r\n', 'private\r\n', 'protected\r\n', 'private\r\n'),
(134, 11, 2, 'import java.util.*; \r\nclass I \r\n{\r\n    public static void main (String[] args) \r\n    {\r\n        Object i = new ArrayList().iterator(); \r\n        System.out.print((i instanceof List)+\",\"); \r\n        System.out.print((i instanceof Iterator)+\",\"); \r\n        System.out.print(i instanceof ListIterator); \r\n    } \r\n}', 'What will be the output of the program?', 'Prints: false, false, false\r\n', 'Prints: false, false, true\r\n', 'Prints: false, true, false\r\n', 'Prints: false, true, true\r\n', 'Prints: false, true, false\r\n'),
(135, 11, 2, '', 'Which collection class allows you to associate its elements with key values, and allows you to retrieve objects in FIFO (first-in, first-out) sequence?', 'java.util.ArrayList\r\n', 'java.util.LinkedHashMap\r\n', 'java.util.HashMap\r\n', 'java.util.TreeMap\r\n', 'java.util.LinkedHashMap\r\n'),
(136, 11, 3, 'class Tree { } \r\nclass Pine extends Tree { } \r\nclass Oak extends Tree { } \r\npublic class Forest1 \r\n{ \r\n    public static void main (String [] args)\r\n    { \r\n        Tree tree = new Pine(); \r\n        if( tree instanceof Pine ) \r\n            System.out.println (\"Pine\"); \r\n        else if( tree instanceof Tree ) \r\n            System.out.println (\"Tree\"); \r\n        else if( tree instanceof Oak ) \r\n            System.out.println ( \"Oak\" ); \r\n        else \r\n            System.out.println (\"Oops \"); \r\n    } \r\n}', 'What will be the output of the program?', 'Pine\r\n', 'Tree\r\n', 'Forest\r\n', 'Oops\r\n', 'Pine'),
(137, 11, 3, 'String a = \"ABCD\"; \r\nString b = a.toLowerCase(); \r\nb.replace(\'a\',\'d\'); \r\nb.replace(\'b\',\'c\'); \r\nSystem.out.println(b);', 'What will be the output of the program?', 'abcd\r\n', 'ABCD\r\n', 'dccd\r\n', 'dcba\r\n', 'abcd\r\n'),
(138, 11, 3, 'public class Example \r\n{\r\n    public static void main(String [] args) \r\n    {\r\n        double values[] = {-2.3, -1.0, 0.25, 4};\r\n        int cnt = 0;\r\n        for (int x=0; x < values.length; x++) \r\n        {\r\n            if (Math.round(values[x] + .5) == Math.ceil(values[x])) \r\n            {\r\n                ++cnt;\r\n            }\r\n        }\r\n        System.out.println(\"same results \" + cnt + \" time(s)\");\r\n    }\r\n}', 'What will be the output of the program?', 'same results 0 time(s)\r\n', 'same results 2 time(s)\r\n', 'same results 4 time(s)\r\n', 'Compilation fails.\r\n', 'same results 2 time(s)'),
(139, 11, 3, 'Assertion checking is typically enabled when a program is deployed.\r\nIt is never appropriate to write code to handle failure of an assert statement.\r\nAssertion checking is typically enabled during program development and testing.\r\nAssertion checking can be selectively enabled or disabled on a per-package basis, but not on a per-class basis.\r\nAssertion checking can be selectively enabled or disabled on both a per-package basis and a per-class basis.', 'Which three statements are true?', '1, 2 and 4\r\n', '2, 3 and 5\r\n', '3, 4 and 5\r\n', '1, 2 and 5\r\n', '2, 3 and 5\r\n'),
(140, 11, 3, 'int i = 1, j = 10; \r\ndo \r\n{\r\n    if(i > j) \r\n    {\r\n        break; \r\n    } \r\n    j--; \r\n} while (++i < 5); \r\nSystem.out.println(\"i = \" + i + \" and j = \" + j);', 'What will be the output of the program?', 'i = 6 and j = 5\r\n', 'i = 5 and j = 5\r\n', 'i = 6 and j = 4\r\n', 'i = 5 and j = 6\r\n', 'i = 5 and j = 6\r\n'),
(141, 13, 1, '', 'Which protocol is used to send a destination network unknown message back to originating hosts?', 'TCP\r\n', 'ARP\r\n', 'ICMP\r\n', 'BootP\r\n', 'ICMP'),
(142, 13, 1, '', '	\r\nIf you wanted to delete the configuration stored in NVRAM, what would you type?', 'erase startup\r\n', 'erase nvram\r\n', 'delete nvram\r\n', 'erase running\r\n', 'erase startup\r\n'),
(143, 13, 1, '', 'Routers operate at layer _____. LAN switches operate at layer _____. Ethernet hubs operate at layer _____. Word processing operates at layer _____.', '3, 3, 1, 7\r\n', '3, 2, 1, none\r\n', '3, 2, 1, 7 ', '3, 3, 2, none\r\n', '3, 2, 1, none'),
(144, 13, 1, '', 'When data is encapsulated, which is the correct order?', 'Data, frame, packet, segment, bit\r\n', 'Segment, data, packet, frame, bit\r\n', 'Data, segment, packet, frame, bit\r\n', 'Data, segment, frame, packet, bit\r\n', 'Data, segment, packet, frame, bit'),
(145, 13, 1, '', 'You copy a configuration from a network host to a router\'s RAM. The configuration looks correct, yet it is not working at all. What could the problem be?', 'You copied the wrong configuration into RAM.\r\n', 'You copied the configuration into flash memory instead.\r\n', 'The copy did not override the shutdown command in running-config.\r\n', 'The IOS became corrupted after the copy command was initiated.', 'The copy did not override the shutdown command in running-config.'),
(146, 13, 2, '', 'In which circumstance are multiple copies of the same unicast frame likely to be transmitted in a switched LAN?', 'During high-traffic periods\r\n', 'After broken links are reestablished\r\n', 'When upper-layer protocols require high reliability\r\n', 'In an improperly implemented redundant topology', 'In an improperly implemented redundant topology'),
(147, 13, 2, '172.16.1.100\r\n172.16.1.198\r\n172.16.2.255\r\n172.16.3.0', 'Your router has the following IP address on Ethernet0: 172.16.2.1/23. Which of the following can be valid host IDs on the LAN interface attached to the router?', '1 only\r\n', '2 and 3 only\r\n', '3 and 4 only\r\n', 'None of the above\r\n', '3 and 4 only'),
(148, 13, 2, '', 'You have an interface on a router with the IP address of 192.168.192.10/29. What is the broadcast address the hosts will use on this LAN?', '192.168.192.15\r\n', '192.168.192.31\r\n', '192.168.192.63\r\n', '192.168.192.127\r\n', '192.168.192.15\r\n'),
(149, 13, 2, '', 'What is the subnetwork address for a host with the IP address 200.10.5.68/28?', '200.10.5.56\r\n', '200.10.5.32\r\n', '200.10.5.64\r\n', '200.10.5.0\r\n', '200.10.5.64\r\n'),
(150, 13, 2, '', '	\r\nWhich of the following would be a good starting point for troubleshooting if your router is not translating?', 'Reboot.', 'Call Cisco.\r\n', 'Check your interfaces for the correct configuration', 'Run the debug all command.\r\n', 'Check your interfaces for the correct configuration.\r\n'),
(151, 13, 3, '', 'If you wanted administrators to see a message when logging into the router, which command would you use?', 'message banner motd\r\n', 'banner message motd\r\n', 'banner motd\r\n', 'message motd\r\n', 'banner motd'),
(152, 13, 3, '', 'You want to totally reinitialize the router and replace the current running-config with the current startup-config. What command will you use?', 'replace run start\r\n', 'copy run start\r\n', 'copy start run\r\n', 'reload\r\n', 'reload\r\n'),
(153, 13, 3, '', 'Which command will show you whether a DTE or a DCE cable is plugged into serial 0?', 'sh int s0\r\n', 'sh int serial 0\r\n', 'show controllers serial 0\r\n', 'show serial 0 controllers\r\n', 'show controllers serial 0'),
(154, 13, 3, '', '	\r\nIf you wanted to deny all Telnet connections to only network 192.168.10.0, which command could you use?', 'access-list 100 deny tcp 192.168.10.0 255.255.255.0 eq telnet\r\n', 'access-list 100 deny tcp 192.168.10.0 0.255.255.255 eq telnet\r\n', 'access-list 100 deny tcp any 192.168.10.0 0.0.0.255 eq 23\r\n', 'access-list 100 deny 192.168.10.0 0.0.0.255 any eq 23\r\n', 'access-list 100 deny tcp any 192.168.10.0 0.0.0.255 eq 23\r\n'),
(155, 13, 3, '', '	\r\nWhat command will permit SMTP mail to only host 1.1.1.1?', 'access-list 10 permit smtp host 1.1.1.1\r\n', 'access-list 110 permit ip smtp host 1.1.1.1\r\n', 'access-list 10 permit tcp any host 1.1.1.1 eq smtp\r\n', 'access-list 110 permit tcp any host 1.1.1.1 eq smtp\r\n', 'access-list 110 permit tcp any host 1.1.1.1 eq smtp\r\n'),
(156, 14, 1, '', 'The load and index is which of the following?', 'A process to reject data from the data warehouse and to create the necessary indexes', 'A process to load the data in the data warehouse and to create the necessary indexes', 'A process to upgrade the quality of data after it is moved into a data warehouse\r\n', 'A process to upgrade the quality of data before it is moved into a data warehouse\r\n', 'A process to load the data in the data warehouse and to create the necessary indexes'),
(157, 14, 1, '', 'There are three SQL data modification operations: insert, modify and delete.\r\n\r\n', 'True', 'False', '', '', 'True'),
(158, 14, 1, '', 'A database has data and relationships.', 'True', 'False', '', '', 'True'),
(159, 14, 1, '', 'The term Complete for a UML has the same meaning as which of the following for an EER diagram?', 'Overlapping rule\r\n', 'Disjoint rule\r\n', 'Total specialization rule\r\n', 'Partial specialization rule\r\n', 'Total specialization rule\r\n'),
(160, 14, 1, '', '	\r\nIf no multivalued attributes exist in a relation, then the relation is in what normal form?', 'First normal form\r\n', 'Second normal form\r\n', 'Third normal form\r\n	\r\n', 'Fourth normal form\r\n', 'First normal form\r\n'),
(161, 14, 2, '', 'Concurrency control is important for which of the following reasons?', 'To ensure data integrity when updates occur to the database in a multiuser environment', 'To ensure data integrity when updates occur to the database in a single-user environment\r\n', 'To ensure data integrity while reading data occurs to the database in a multiuser environment\r\n', 'To ensure data integrity while reading data occurs to the database in a single-user environment\r\n', 'To ensure data integrity when updates occur to the database in a multiuser environment'),
(162, 14, 2, '', 'To build a data warehouse and develop business intelligence applications, it is important that an organization build and maintain a comprehensive repository.', 'True', 'False', '', '', 'True'),
(163, 14, 2, '', '	\r\nNeeding to assess the validity of assumed referential integrity constraints on foreign keys is a(n) ________ of normalization.', 'advantage\r\n', 'disadvantage\r\n', 'either an advantage or disadvantage\r\n', 'neither an advantage nor disadvantag', 'neither an advantage nor disadvantage\r\n'),
(164, 14, 2, '', '	\r\nNeeding to assess the validity of assumed referential integrity constraints on foreign keys is a(n) ________ of normalization.', 'advantage\r\n', 'disadvantage\r\n', 'either an advantage or disadvantage\r\n', 'neither an advantage nor disadvantage', 'neither an advantage nor disadvantage\r\n'),
(165, 14, 3, '', 'Needing to using more complicated SQL in database applications is a(n) ________ of normalization.', 'advantage\r\n', 'disadvantage\r\n', 'either an advantage or disadvantage\r\n', 'neither an advantage nor disadvantage\r\n', 'disadvantage\r\n'),
(166, 14, 3, '', 'Needing to using more complicated SQL in database applications is a(n) ________ of normalization.', 'advantage\r\n', 'disadvantage\r\n', 'either an advantage or disadvantage\r\n', 'neither an advantage nor disadvantage\r\n', 'disadvantage\r\n'),
(168, 14, 3, '', 'An entity is something that can be identified in the user\'s work environment; something that the users want to track', 'True', 'False', '', '', 'True'),
(170, 14, 3, '', 'Which of the following refers to a cursor type where changes of any type and from any source are visible?\r\n\r\n', 'Forward only\r\n', 'Static\r\n', 'Keyset\r\n', 'Dynamic\r\n', 'Dynamic\r\n'),
(171, 14, 3, '', 'Common Gateway Interface (CGI) is which of the following?\r\n', 'An interface that accepts and returns data that may be written in SQL.', 'An interface that accepts and returns data that may be written in any language that produces an exec', 'A small program that executes within another application and is stored on the server.', 'A small program that executes within another application and is stored on the client.\r\n', 'An interface that accepts and returns data that may be written in any language that produces an executable file.'),
(172, 14, 2, '', 'Common Gateway Interface (CGI) is which of the following?\r\n', 'An interface that accepts and returns data that may be written in SQL.', 'An interface that accepts and returns data that may be written in any language that produces an exec', 'A small program that executes within another application and is stored on the server.', 'A small program that executes within another application and is stored on the client.', 'An interface that accepts and returns data that may be written in any language that produces an executable file.'),
(173, 16, 1, '', 'In which decade was the American Institute of Electrical Engineers (AIEE) founded?', '1850s', '1880s', '1930s', '1950s', '1880s'),
(174, 16, 1, '', 'What is part of a database that holds only one type of information?', 'Report', 'Field', 'Record', 'File', 'Field'),
(175, 16, 1, '', '\'OS\' computer abbreviation usually means ?', 'Order of Significance', 'Open Software', 'Operating System', 'Optical Sensor', 'Operating System'),
(176, 16, 1, '', '	\r\nIn which decade with the first transatlantic radio broadcast occur?', '1850s', '1850s', '1870s', '1900s', '1900s'),
(177, 16, 1, '', '	\r\n\'.MOV\' extension refers usually to what kind of file?', 'Image file', 'Animation/movie file', 'Audio file', 'MS Office document', 'Animation/movie file'),
(178, 16, 2, '', 'What do we call a network whose elements may be separated by some distance? It usually involves two or more small networks and dedicated high-speed telephone lines.', 'URL (Universal Resource Locator)', 'LAN (Local Area Network)', 'WAN (Wide Area Network)', 'World Wide Web', 'WAN (Wide Area Network)'),
(179, 16, 2, '', 'After the first photons of light are produced, which process is responsible for amplification of the light?', 'Blackbody radiation', 'Stimulated emission', 'Planck\'s radiation', 'Einstein oscillation', 'Stimulated emission'),
(180, 16, 2, '', 'Which is NOT an acceptable method of distributing small power outlets throughout an open plan office area?', 'Power Poles', 'Power Skirting', 'Flush Floor Ducting', 'Extension Cords', 'Extension Cords'),
(181, 16, 2, '', 'What\'s a web browser?', 'A kind of spider', 'A computer that stores WWW files', 'A person who likes to look at websites', 'A software program that allows you to access sites on the World Wide Web', 'A software program that allows you to access sites on the World Wide Web'),
(182, 16, 2, '', '	\r\nhttp://www.indiabix.com - is an example of what?', 'A URL', 'An access code', 'A directory', 'A server', 'A URL'),
(183, 16, 3, '', 'A DV camcorder is...', 'Capable of creating video in HDTV', 'Used to create digital video', 'Limited to the Direct Video format', 'A Denon Video brand product', 'Used to create digital video'),
(184, 16, 3, '', 'A coating of dust on a computer\'s main circuit boards has this probable consequence', 'Overheating', 'Short circuits', 'Slower hard disk', 'None', 'Overheating'),
(185, 16, 3, '', 'Which company created the most used networking software in the 1980\'s', ' Microsoft', 'Sun', 'IBM', 'Novell', 'Novell'),
(186, 16, 3, '', 'Which of the following operating systems is produced by IBM?', 'OS-2', 'Windows', 'DOS', 'UNIX', 'OS-2'),
(187, 16, 3, '', 'What is a GPU?', 'Grouped Processing Unit', 'Graphics Processing Unit', 'Graphical Performance Utility', 'Graphical Portable Unit', 'Graphics Processing Unit'),
(188, 15, 1, '', '	\r\nWhere the Confederation of Indian Industry to be organizing the first edition of ASIA HEALTH 2019 by?', 'Bangalore', 'Chennai', 'Kolkata', 'New Delhi', 'New Delhi'),
(189, 15, 1, '', 'Which country will host 91st Interpol General Assembly in 2022?', 'Russia', 'China', 'Vietnam', 'India', 'India'),
(190, 15, 1, '', 'Who will sworn as 47th Chief Justice of India (CJI)?', 'Rajan Gogoi', 'H.J.Kania', 'Justice Bobde', 'R.J .Shukla', 'Justice Bobde'),
(191, 15, 1, '', 'Where National Crime Records Bureau (NCRB) organized the 20th All India Conference of Directors of Fingerprint Bureau?', 'New Delhi', 'Bangalore', 'Kolkata', 'Mumbai', 'New Delhi'),
(192, 15, 1, '', 'The government has announced to bring all medical devices, under which of the following department?', 'Central Drugs and Standard Control Organisation', 'Health and Family Welfare Organisation', 'Drugs and Narcotics Bureau', 'Drugs and Cosmetics controller', 'Central Drugs and Standard Control Organisation'),
(193, 15, 2, '', '	\r\nIndia with which country has launched 2nd phase of LOTUS-HR?', 'Spain', 'Greece', 'France', 'Netherlands', 'Netherlands'),
(194, 15, 2, '', 'The 3rd India Energy Forum of CERAWeek organized in which state?', 'New Delhi', 'Hyderabad', 'Telangana', 'Chennai', 'New Delhi'),
(195, 15, 2, '', 'Who has won the WTA Wuhan Open held in Wuhan, China?', 'Elise Mertens', 'Aryna Sabalenka', 'Bianca Andreescu', 'Aliaksandra Sasnovich', 'Aryna Sabalenka'),
(196, 15, 2, '', 'What is the name of a robot created by India and UK to encourage children to wash their hands?', 'Chichi', 'Meme', 'Pepe', 'Miko', 'Pepe'),
(197, 15, 2, '', 'Which astronauts have set history by performing an all-female spacewalk on 18 October?\r\n', 'Sunita Williams', 'Christina Koch', 'Jessica Meir', 'Both B and C', 'Both B and C'),
(198, 15, 3, '', 'Nomadic Elephant is an exercise between which countries?', 'India-China', 'India-Mangolia', 'India-Chile', 'India -Cambodia', 'India-Mangolia'),
(199, 15, 3, '', 'Which country has been added to the UN Human Rights Council?', 'Uruguay', 'Venezuela', 'Argentina', 'Philippines', 'Venezuela'),
(200, 16, 3, '', 'Baliyatra is a trade fair of which state?', 'Bihar', 'Jharkhand', 'Odisha', 'UP', 'Odisha'),
(201, 15, 3, '', 'Which state government is going to organize KHON Ramlila', 'UP', 'Bihar', 'Madhya Pradesh', 'Haryana', 'UP'),
(202, 15, 3, '', 'Which chief minister has recently biked 122 km to promote adventure tourism in his state?', 'Jaganmohan Reddy', 'Arvind Kejriwal', 'Pema Khandu', 'Nitish Kumar', 'Pema Khandu'),
(203, 15, 3, '', 'Which State government is signing a MoU with NASSCOM to create more jobs for the youth by promoting investment in the information technology sector', 'Bihar', 'Telangana', 'Kerala', 'Madhya Pradesh', 'Madhya Pradesh'),
(204, 9, 1, '', 'Which of the following points is/are true about Linked List data structure when it is compared with array', 'Arrays have better cache locality that can make them better in terms of performance', 'It is easy to insert and delete elements in Linked List', 'Random access is not allowed in a typical implementation of Linked Lists', 'All of the above', 'All of the above'),
(205, 9, 1, '', 'Assume that reference of head of following doubly linked list is passed to above function 1 <--> 2 <--> 3 <--> 4 <--> 5 <-->6. What should be the modified linked list after the function call?', '2 <--> 1 <--> 4 <--> 3 <--> 6 <-->5', '5 <--> 4 <--> 3 <--> 2 <--> 1 <-->6', '6 <--> 5 <--> 4 <--> 3 <--> 2 <--> ', '6<--> 5 <--> 4 <--> 3 <--> 1 <--> 2', '6 <--> 5 <--> 4 <--> 3 <--> 2 <--> '),
(206, 9, 1, '', 'Which of the following sorting algorithms can be used to sort a random linked list with minimum time complexity?', 'Insertion Sort', 'Quick Sort', 'Heap Sort', 'Merge Sort', 'Merge Sort'),
(207, 9, 1, '', 'In the worst case, the number of comparisons needed to search a singly linked list of length n for a given element is', 'log 2 n', 'n/2', 'log 2 n –1', 'n', 'n'),
(208, 9, 1, '', 'Suppose each set is represented as a linked list with elements in arbitrary order. Which of the operations among union, intersection, membership, cardinality will be the slowest?', 'union only', 'intersection, membership', 'membership, cardinality', 'union, intersection', 'union, intersection'),
(209, 9, 2, '', 'What are the time complexities of finding 8th element from beginning and 8th element from end in a singly linked list? Let n be the number of nodes in linked list, you may assume that n > 8.', 'O(1) and O(n)', 'O(1) and O(1)', 'O(n) and O(1)', 'O(n) and O(n)', 'O(1) and O(n)'),
(210, 9, 2, '', 'Is it possible to create a doubly linked list using only one pointer with every node.', 'Not Possible', 'Yes, possible by storing XOR of addresses of previous and next node', 'Yes, possible by storing XOR of current node and next node', 'Yes, possible by storing XOR of current node and previous node', 'Yes, possible by storing XOR of addresses of previous and next node'),
(211, 9, 2, '', 'Given pointer to a node X in a singly linked list. Only one pointer is given, pointer to head node is not given, can we delete the node X from given linked list?', 'Possible if X is not last node. Use following two steps (a) Copy the data of next of X to X. (b) Del', 'Possible if size of linked list is even', 'Possible if size of linked list is od', 'Possible if X is not first node. Use following two steps (a) Copy the data of next of X to X. (b) De', 'Possible if X is not last node. Use following two steps (a) Copy the data of next of X to X. (b) Delete next of X.');
INSERT INTO `quiz_ques` (`id`, `sub_id`, `level`, `compr`, `ques`, `op1`, `op2`, `op3`, `op4`, `solution`) VALUES
(212, 9, 2, '', 'You are given pointers to first and last nodes of a singly linked list, which of the following operations are dependent on the length of the linked list?', 'Delete the first elemen', 'Insert a new element as a first element', 'Delete the last element of the lis', 'Add a new element at the end of the list', 'Delete the last element of the lis'),
(213, 9, 2, '', 'Let P be a singly linked list. Let Q be the pointer to an intermediate node x in the list. What is the worst-case time complexity of the best known algorithm to delete the node x from the list?', 'O(n)', 'O(log2 n)', 'O(logn)', 'O(1)', 'O(1)'),
(214, 9, 3, '', 'The concatenation of two lists is to be performed in O(1) time. Which of the following implementations of a list should be used?', 'singly linked list', 'doubly linked lis', 'circular doubly linked list', 'array implementation of lists', 'circular doubly linked list'),
(215, 9, 3, 'i.   First-in-first out types of computations are efficiently supported by STACKS.\r\nii.  Implementing LISTS on linked lists is more efficient than implementing LISTS on\r\n     an array for almost all the basic LIST operations.\r\niii. Implementing QUEUES on a circular array is more efficient than implementing QUEUES\r\n     on a linear array with two indices.\r\niv.  Last-in-first-out type of computations are efficiently supported by QUEUES.', 'Consider the following stateme', '(ii) and (iii) are true', '(i) and (ii) are true', '(iii) and (iv) are true', '(ii) and (iv) are true', '(ii) and (iii) are true'),
(216, 9, 3, '', 'In a doubly linked list, the number of pointers affected for an insertion operation will be', '4', '0', '1', 'None of these', 'None of these'),
(217, 9, 3, '', 'Consider an implementation of unsorted single linked list. Suppose it has its representation with a head and a tail pointer (i.e. pointers to the first and last nodes of the linked list). Given the representation, which of the following operation can not be implemented in O(1) time ?', 'Insertion at the front of the linked lis', 'Insertion at the front of the linked lis', 'Insertion at the end of the linked list.', 'Deletion of the last node of the linked list.', 'Deletion of the last node of the linked list.'),
(218, 9, 3, '', 'Which of the following operations is performed more efficiently by doubly linked list than by linear linked list?', 'Deleting a node whose location is given', 'Searching an unsorted list for a given ite', 'Inserting a node after the node with a given location', 'Traversing the list to process each node', 'Deleting a node whose location is given'),
(220, 12, 1, '', ' Which of the following is false statement in python', 'int(144)==144', 'int(\'144\')==14', 'int(144.0)==144', 'None of the above', 'None of the above'),
(221, 12, 1, '', 'For tuples and list which is correct?', ' List and tuples both are mutable.', 'List is mutable whereas tuples are immutable', 'List and tuples both are immutable', 'List is immutable whereas tuples are mutable', 'List is mutable whereas tuples are immutable'),
(222, 12, 1, '', 'What command is used to insert 6 in a list ‘‘L’’ at 3rd position ?', 'L.insert(2,6)', 'L.insert(3,6)', ' L.add(3,6)', 'L.append(2,6)', 'L.insert(2,6)'),
(223, 12, 1, '', ' Which method is used to convert raw byte data to a string?', 'Encode()', 'Decode()', 'Convert()', ' tostring()', 'Decode()'),
(224, 12, 1, '', ' Which code can be used as an input dialog named \'\'Is this a character? \'\'', 'Tkinter.messagebox.showinfo(\'\'showinfo\'\' , \"Is this a character? \")', ' Tkinter.messagebox.askyesno(\'\'askyesno\'\' , \'\'Is this a character? \'\')', 'Tkinter.messagebox.showerror(\'\'showerror\'\' , \'\'Is this a character? \'\')', 'Tkinter.messagebox.showwarning(\'\'showwarning\'\' , \' \'Is this a character? \'\')', 'Tkinter.messagebox.askyesno(\'\'askyesno\'\' , \'\'Is this a character? \'\')'),
(225, 12, 3, '', 'Best part is you can display images in various options in Python. Select the option where you can display an image ?', 'Only A label', ' Only A button and A label', ' Only A checkbox', 'A label, a check box , a button and a radio button.', 'A label, a check box , a button and a radio button.'),
(226, 12, 2, '', 'Best part is you can display images in various options in Python. Select the option where you can display an image ', 'Only A label', ' Only A button and A label', ' Only A checkbox', 'A label, a check box , a button and a radio button.', 'A label, a check box , a button and a radio button.'),
(227, 12, 2, '', 'What is output for ?\r\n\r\n\' \' in \'python\' ?', ' \'python\'', 'False', 'Name error', 'True', 'True'),
(228, 12, 2, '', 'Suppose we have two sets A & B, then A<B is:', 'True if len(A) is less than len(B).', 'True if A is a proper subset of B.', 'True if the elements in A when compared are less than the elements in B.', 'True if A is a proper superset of B.', 'True if A is a proper subset of B.'),
(229, 12, 2, '', 'What is output of following ?\r\n\r\nprint(\'any\'.encode())', '‘any’', '‘yan’', 'b‘any’', 'x‘any’', 'b‘any’'),
(230, 12, 2, '', 'Suppose you are given a set(s1={1,2,3}) then what is the output for the code ? 2 * s1?', ' (1,1,2,2,3,3)', '[1,1,2,2,3,3]', 'Illegal', '(1,2,3,1,2,3)', 'Illegal'),
(232, 12, 3, '', ' We can create an image in canvas. Select the option to do so?', 'Image = PhotoImage(imagefilename)', 'Canvas.create_image(filename)', 'Image = Photoimage(file=imagefilename)', 'Image = Photoimage(imagefilename)', 'Image = Photoimage(file=imagefilename)'),
(233, 12, 3, '', 'What is the output for ?\r\n\r\n\'python \' [-3]?', '\'o\'', '\'t\'', '\'h\'', 'Negative index error.', '\'h\''),
(234, 12, 3, 'y = [4, 5,1j]\r\ny.sort()', 'What is output for following code?', '[1j,4,5]', '[5,4,1j]', '[4,5,1j]', 'Type Error', 'Type Error'),
(235, 12, 3, '', 'What is the correct way to create a function in Python?', 'def myFunction():', 'create myFunction():', 'function myFunction():', 'All of these', 'def myFunction():');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `username`, `email`, `password`) VALUES
(1, 'Aarya Bhatt', 'aarya77', 'aarya@hmail.com', '3f216876e87052c718a541c9218ce4ee'),
(4, 'Devi', 'Devi12', 'devu@gmail.com', '29134e9627700db1a265f197016dcc3c'),
(2, 'Niya Sharma', 'niya12', 'niya11@gmail.com', '4b2f5bc49a7b57c86d6ca610ae07218f'),
(3, 'Siya Mehra', 'sm12', 'siya@yahoo.com', '3846b3486969822541134da34030a488'),
(6, 'Shivam Shah', 'sv34', 'shivshah@gmail.com', '9368f13fc37646984ecd239f2511294e');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `username` varchar(30) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `marks` int(20) NOT NULL,
  `rank` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`username`, `sub_id`, `marks`, `rank`) VALUES
('niya12', 4, 5, 1),
('sm12', 4, 3, 3),
('sm12', 8, 2, 4),
('Devi12', 1, 2, 4),
('Devi12', 1, 2, 4),
('sv34', 7, 3, 3),
('sv34', 10, 1, 5),
('aarya77', 1, 2, 4),
('aarya77', 11, 0, 6),
('aarya77', 3, 2, 4),
('niya12', 7, 5, 1),
('Devi12', 2, 4, 2),
('niya12', 8, 3, 3),
('sm12', 4, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `name`) VALUES
(1, 'Aptitude'),
(2, 'Reasoning'),
(3, 'English'),
(4, 'Technical'),
(5, 'General Knowledge');

-- --------------------------------------------------------

--
-- Table structure for table `sub_subject`
--

CREATE TABLE `sub_subject` (
  `id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_subject`
--

INSERT INTO `sub_subject` (`id`, `sub_id`, `name`) VALUES
(1, 1, 'Arithmetic'),
(2, 1, 'Data Interpretation'),
(3, 2, 'Logical Reasoning'),
(4, 3, 'Synonyms'),
(5, 3, 'Antonyms'),
(6, 3, 'Sentence Correction'),
(7, 3, 'Spellings'),
(8, 4, 'C Language'),
(9, 4, 'Data Structure'),
(10, 4, 'C++'),
(11, 4, 'Java'),
(12, 4, 'Python'),
(13, 4, 'Networking'),
(14, 4, 'Database Management System'),
(15, 5, 'Current Affairs'),
(16, 5, 'Basic GK');

-- --------------------------------------------------------

--
-- Table structure for table `suggest_qz`
--

CREATE TABLE `suggest_qz` (
  `username` varchar(30) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `compr` varchar(5000) NOT NULL,
  `ques` varchar(1000) NOT NULL,
  `op1` varchar(100) NOT NULL,
  `op2` varchar(100) NOT NULL,
  `op3` varchar(100) NOT NULL,
  `op4` varchar(100) NOT NULL,
  `solution` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggest_qz`
--

INSERT INTO `suggest_qz` (`username`, `sub_id`, `compr`, `ques`, `op1`, `op2`, `op3`, `op4`, `solution`) VALUES
('niya12', 16, '', 'Who is current prime minister?', 'Javaharlal Nehru', 'Dr. Abdul Kalam', 'Narendra Modi', 'Dr. Manmohan Singh', 'Narendra Modi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `quiz_ques`
--
ALTER TABLE `quiz_ques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_id` (`sub_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD KEY `username` (`username`),
  ADD KEY `sub_id` (`sub_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `sub_subject`
--
ALTER TABLE `sub_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_id` (`sub_id`);

--
-- Indexes for table `suggest_qz`
--
ALTER TABLE `suggest_qz`
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `quiz_ques`
--
ALTER TABLE `quiz_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sub_subject`
--
ALTER TABLE `sub_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `quiz_ques`
--
ALTER TABLE `quiz_ques`
  ADD CONSTRAINT `quiz_ques_ibfk_1` FOREIGN KEY (`sub_id`) REFERENCES `sub_subject` (`id`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`username`) REFERENCES `registration` (`username`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `sub_subject` (`id`);

--
-- Constraints for table `sub_subject`
--
ALTER TABLE `sub_subject`
  ADD CONSTRAINT `sub_subject_ibfk_1` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`);

--
-- Constraints for table `suggest_qz`
--
ALTER TABLE `suggest_qz`
  ADD CONSTRAINT `suggest_qz_ibfk_1` FOREIGN KEY (`username`) REFERENCES `registration` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
