-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2023 at 05:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `questionname` text NOT NULL,
  `questionlevel` enum('Beginner','Intermediate','Professional') NOT NULL DEFAULT 'Beginner',
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correctanswer` text NOT NULL,
  `topic` int(11) NOT NULL,
  `createddate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `questionname`, `questionlevel`, `option1`, `option2`, `option3`, `option4`, `correctanswer`, `topic`, `createddate`, `updatedate`) VALUES
(1, 'How many over in one day cricket match?', 'Beginner', '52', '50', '45', '55', '50', 1, '2023-01-01 09:22:48', '2023-01-01 09:22:48'),
(2, 'How many over in T20 cricket match?', 'Beginner', '16', '22', '25', '20', '20', 1, '2023-01-01 09:22:48', '2023-01-01 09:22:48'),
(3, 'How much player needed for one team to play international cricket?', 'Beginner', '12', '10', '11', '9', '11', 1, '2023-01-01 09:24:20', '2023-01-01 09:24:20'),
(4, 'Who is take Most 100 in one day international match?', 'Intermediate', 'Sachin Tendulkar', 'v kohli', 'MS Dhoni', 'v sehwag', 'Sachin Tendulkar', 1, '2023-01-01 09:30:27', '2023-01-01 09:30:27'),
(5, 'How many times Indian cricket team won ICC world cup one day international match?', 'Intermediate', '1', '2', '3', '4', '2', 1, '2023-01-01 09:30:27', '2023-01-01 09:30:27'),
(6, 'Who is most number of 100 in test cricket?', 'Intermediate', 'Sachin Tendulkar', 'Rahul Dravid', 'Brian Charles Lara', 'Matthew Lawrence Hayden', 'Sachin Tendulkar', 1, '2023-01-01 09:34:59', '2023-01-01 09:34:59'),
(7, 'How many times India cricket team won T20 World Cub?', 'Beginner', '2', '1', '3', '4', '1', 1, '2023-01-01 09:36:26', '2023-01-01 09:36:26'),
(8, 'Who is the 1st batsman to get 200 in ICC 50 over match?', 'Professional', 'Rhoit sharma', 'V Kholi', 'MS Dhoni', 'Sachin Tendulkar', 'Sachin Tendulkar', 1, '2023-01-01 09:38:44', '2023-01-01 09:38:44'),
(9, 'Who is take more number of 200 in ICC 50 over match?', 'Professional', 'Sachin Tendulkar', 'Rhoit sharma', 'MS Dhoni', 'V Kholi', 'Rhoit sharma', 1, '2023-01-01 09:40:18', '2023-01-01 09:40:18'),
(10, 'Who is get Highest Score by a Wicketkeeper?', 'Professional', 'De Kock', 'Adam Gilchrist', 'Luke Ronchi', 'MS Dhoni', 'MS Dhoni', 1, '2023-01-01 09:45:27', '2023-01-01 09:45:53'),
(11, 'Who is scored most runs in all cricket format?', 'Beginner', 'Sachin Tendulkar', 'MS Dhoni', 'V Kholi', 'Adam Gilchrist', 'Sachin Tendulkar', 1, '2023-01-01 09:47:46', '2023-01-01 09:47:46'),
(12, 'What is the normal pH level of the human blood?', 'Beginner', '7.40', '6.0', '13.5', '9.5', '7.40', 2, '2022-12-31 12:08:09', '2022-12-31 12:08:09'),
(13, 'What is the chemical symbol for table salt?', 'Beginner', 'NaCl', 'NH4F', 'H2O', 'S', 'S', 2, '2022-12-31 12:10:24', '2022-12-31 12:10:24'),
(14, 'At what temperature Celsius and Fahrenheit equal?', 'Beginner', '-32', '-38', '-40', '-22', '-40', 2, '2022-12-31 12:12:57', '2022-12-31 12:12:57'),
(15, 'Which of the following planet was first discovered by a telescope?', 'Beginner', 'Uranus', 'venus', 'Jupiter', 'Mars', 'Uranus', 2, '2022-12-31 12:14:30', '2022-12-31 12:14:30'),
(16, 'Tinnitus problem is related to', 'Intermediate', 'Eye', 'Nose', 'Ear', 'Hair', 'Ear', 2, '2022-12-31 12:16:14', '2022-12-31 12:16:14'),
(17, 'What is the most deadly infectious disease in America?', 'Intermediate', 'Hepatitis B', 'Hepatitis C', 'Covid 19', 'Ebola', 'Hepatitis B', 2, '2022-12-31 12:19:38', '2022-12-31 12:19:38'),
(18, 'C is the symbol of which Chemical element?', 'Intermediate', 'Copper', 'Carbon', 'Chemical', 'Calcium oxide', 'Carbon', 2, '2022-12-31 12:23:29', '2022-12-31 12:23:29'),
(19, 'In which TV show can you see a group of scientist including Sheldon cooper and Leonard Hofstadtes?', 'Professional', 'Unbreakable Kimmy Schmidt', 'The Good Place', 'Big Bank Theory', 'The Orville', 'Big Bank Theory', 2, '2022-12-31 12:29:38', '2022-12-31 12:29:38'),
(20, 'What does the Richter scale measure?', 'Professional', 'Strength of Earthquakes', 'Landscape Area', 'Strength of Cyclone', 'Weather conditions', 'Strength of Earthquakes', 2, '2022-12-31 12:32:05', '2022-12-31 12:32:05'),
(21, 'Which Organ do cardiologists focus on?', 'Professional', 'Brain', 'Liver', 'Heart', 'Head', 'Heart', 2, '2022-12-31 12:33:30', '2022-12-31 12:33:30'),
(22, 'Who had a Long Walk to Freedom?', 'Beginner', 'Mahathma Gandhi', 'Nelson Mandela', 'Richard Branson', 'David Jason', 'Nelson Mandela', 3, '2022-12-31 12:40:26', '2022-12-31 12:40:26'),
(23, 'The fundamental economic problem faced by all societies is', 'Beginner', 'Unemployment', 'Inequality', 'Poverty', 'Scarcity', 'Unemployment', 3, '2022-12-31 12:43:24', '2022-12-31 12:43:24'),
(24, 'Money creative bank is', 'Beginner', 'a. Central Bank', 'b. Commercial Bank', 'c. Consumer Bank', 'd. Both a & b', 'b. Commercial Bank', 3, '2022-12-31 12:47:28', '2022-12-31 12:47:28'),
(25, 'The word \"Bank\" has been derived from the word ', 'Beginner', 'Back', 'Bancus', 'Banco', 'None of the above', 'Bancus', 3, '2022-12-31 12:49:06', '2022-12-31 12:49:06'),
(26, 'The part of deposits kept with the Central Bank is called ', 'Intermediate', 'Cash reserve', 'Margin', 'Interest rate', 'All the above', 'Cash reserve', 3, '2022-12-31 12:51:42', '2022-12-31 12:51:42'),
(27, 'Capitalism refers to ', 'Intermediate', 'the use of markets', 'Government ownership of capital goods', 'Private ownership of capital goods', 'private ownership of homes and cars', 'the use of markets', 3, '2022-12-31 12:53:58', '2022-12-31 12:53:58'),
(28, 'If the Mean is 48, the Median is 47. Mode will be', 'Intermediate', '44', '50', '45', '49', '45', 3, '2022-12-31 12:55:52', '2022-12-31 12:55:52'),
(29, 'State Bank of Pakistan was formed by', 'Professional', 'Royal Charter', 'Special Ordinance', 'Joint Stock Companies Act', 'Banking Companies Ordinance Act ', 'Special Ordinance', 3, '2022-12-31 12:58:25', '2022-12-31 12:58:25'),
(30, 'The best form of a partnership deed is ', 'Professional', 'Oral', 'Written', 'Written & Registered ', 'Registered', 'Written & Registered ', 3, '2022-12-31 13:00:35', '2022-12-31 13:00:35'),
(31, 'The shareholders of Joint Stock Company are ', 'Professional', 'Debtors', 'Creditors', 'Owners', 'Outsiders', 'Owners', 3, '2022-12-31 13:02:12', '2022-12-31 13:02:12'),
(32, 'Name the first woman Prime Minister of Israel.', 'Beginner', 'Tadeusz Mazowiecki', 'Golda Meir', 'Aneurin Bevan', 'Otto von Bismarck', 'Golda Meir', 4, '2022-12-31 13:07:41', '2022-12-31 13:07:41'),
(33, 'What is the name of Queen Elizabeth II\'s youngest son?', 'Beginner', 'Ramsay MacDonald', 'Winston Churchill', 'Edward', 'Robert Peel', 'Edward', 4, '2022-12-31 13:10:02', '2022-12-31 13:10:02'),
(34, 'In which country is the Cortes Parliament?', 'Beginner', 'Spain', 'US', 'UK', 'Russia', 'Spain', 4, '2022-12-31 13:11:12', '2022-12-31 13:11:12'),
(35, 'Who lived at Lambeth Palace?', 'Beginner', 'Self-governing country\'s Queen', 'President of the country', 'Prime Minister of the Country', 'The Archbishop of Canterbury', 'The Archbishop of Canterbury', 4, '2022-12-31 13:16:20', '2022-12-31 13:16:20'),
(36, 'In the World of International Alliances what is O.A.U?', 'Intermediate', 'The Organization of African Unity', 'The Organization of American Unity', 'The Organization of Indian Unity', 'The Organization of Russian Unity', 'The Organization of African Unity', 4, '2022-12-31 13:19:48', '2022-12-31 13:19:48'),
(37, 'What are the two main political parties in the Republic of Ireland called?', 'Intermediate', 'Democratic Party and Republican Party', 'Libertarian Party and Independent Party', 'Fianna Fail and Fine Gael', 'New Progressive Party and Popular Democratic Party', 'Fianna Fail and Fine Gael', 4, '2022-12-31 13:26:36', '2022-12-31 13:26:36'),
(38, 'For fifteen years, who was India\'s Prime Minister?', 'Intermediate', 'Narendra Modi', 'Indria Gandhi', 'Nehru', 'Manmohan Singh', 'Indria Gandhi', 4, '2022-12-31 13:29:07', '2022-12-31 13:29:07'),
(39, 'Who was the last King of Ethiopia?', 'Professional', 'Haile Selassie', 'Sukarno', 'Juan Carlos', 'Joseph Kasavubu', 'Haile Selassie', 4, '2022-12-31 13:30:53', '2022-12-31 13:30:53'),
(40, 'Who banned slavery in America?', 'Professional', 'Donald Trump', 'Abraham Lincoln', 'Barack Obama', 'Jeo Biden', 'Abraham Lincoln', 4, '2022-12-31 13:35:24', '2022-12-31 13:35:24'),
(41, 'What is the color of the seats in the House of Lords?', 'Professional', 'Green', 'Blue', 'Yellow', 'Red', 'Red', 4, '2022-12-31 13:37:16', '2022-12-31 13:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `topic` varchar(150) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `topic`, `createdate`, `updatedate`) VALUES
(1, 'Sports', '2023-01-02 03:56:13', '2023-01-02 03:56:13'),
(2, 'Science & Technology', '2023-01-02 03:56:13', '2023-01-02 03:56:13'),
(3, 'Arts', '2023-01-02 03:56:45', '2023-01-02 03:56:45'),
(4, 'Politics', '2023-01-02 03:56:45', '2023-01-02 03:56:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic` (`topic`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`topic`) REFERENCES `subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
