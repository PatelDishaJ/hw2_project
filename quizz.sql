-- Active: 1682658430517@@localhost@3306


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'np1646122@gmail.com', 'xyzwqwer');



CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71978be'),
('5b141d71ddb46', '5b141d71e5f43'),
('5b141d721a738', '5b141d7222884'),
('5b141d7260b7d', '5b141d7268b9a'),
('5b141d72a6fa1', '5b141d72aefcb'),
('5b141d72d7a1c', '5b141d72dfa7b'),
('5b141d731429b', '5b141d731c234'),
('5b141d7345176', '5b141d734cd1b'),
('5b141d737ddfc', '5b141d73858df'),
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d052'),
('5b142265b5d08', '5b142265c09fa'),
('5b1422661d93f', '5b14226635e0d'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8dc'),
('5b142266c525c', '5b142266cd353'),
('5b14226711d91', '5b14226719fb7'),
('5b1422674286d', '5b1422674aa01'),
('5b1422677371f', '5b1422677b3e9');



CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `history` (`email`, `eid`, `score`, `level`, `right`, `wrong`, `date`) VALUES
('np1646122@gmail.com', '5b141b8009cf0', 27, 10, 8, 2, '2018-06-03 16:56:00'),
('pinky@gmail.com', '5b141b8009cf0', 30, 10, 10, 0, '2018-06-03 16:57:45'),
('nehay123@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:59:06'),
('dishap8@gmail.com', '5b141f1e8399e', 26, 10, 9, 1, '2018-06-03 17:17:26');



CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES

('5b141d712647f', 'Personal Home Page', '5b141d71485b9'),
('5b141d712647f', 'Private Home Page', '5b141d71485dc'),
('5b141d712647f', 'Pretext Hypertext Processor', '5b141d71485e0'),
('5b141d712647f', 'Preprocessor Home Page', '5b141d71485e4'),
('5b141d718f873', 'turns domain names into IP addreddesses', '5b141d71978be'),
('5b141d718f873', 'IP truns in to domains name', '5b141d71978cc'),
('5b141d718f873', 'all above', '5b141d71978d1'),
('5b141d718f873', 'not any option is correct ', '5b141d71978d4'),
('5b141d71ddb46', '.html', '5b141d71e5f2b'),
('5b141d71ddb46', '.ph', '5b141d71e5f3c'),
('5b141d71ddb46', '.php', '5b141d71e5f43'),
('5b141d71ddb46', '.xml', '5b141d71e5f48'),
('5b141d721a738', 'for loop', '5b141d7222820'),
('5b141d721a738', 'do-while loop', '5b141d722282f'),
('5b141d721a738', 'foreach loop', '5b141d7222880'),
('5b141d721a738', 'All of the above', '5b141d7222884'),
('5b141d7260b7d', 'echo (â€œHello Worldâ€);', '5b141d7268b8a'),
('5b141d7260b7d', 'print (â€œHello Worldâ€);', '5b141d7268b95'),
('5b141d7260b7d', 'printf (â€œHello Worldâ€);', '5b141d7268b98'),
('5b141d7260b7d', 'All of the above', '5b141d7268b9a'),
('5b141d72a6fa1', 'file()', '5b141d72aefcb'),
('5b141d72a6fa1', 'arr_file()', '5b141d72aefd8'),
('5b141d72a6fa1', 'arrfile()', '5b141d72aefdc'),
('5b141d72a6fa1', 'file_arr()', '5b141d72aefe0'),
('5b141d72d7a1c', 'Magic Function', '5b141d72dfa7b'),
('5b141d72d7a1c', 'Inbuilt Function', '5b141d72dfa85'),
('5b141d72d7a1c', 'Default Function', '5b141d72dfa88'),
('5b141d72d7a1c', 'User Defined Function', '5b141d72dfa8b'),
('5b141d731429b', 'CREATE TABLE table_name (column_name column_type);', '5b141d731c234'),
('5b141d731429b', 'CREATE table_name (column_type column_name);', '5b141d731c242'),
('5b141d731429b', 'CREATE table_name (column_name column_type);', '5b141d731c248'),
('5b141d731429b', 'CREATE TABLE table_name (column_type column_name);', '5b141d731c24b'),
('5b141d7345176', 'get_array() and get_row()', '5b141d734cd10'),
('5b141d7345176', 'fetch_array() and fetch_row()', '5b141d734cd1b'),
('5b141d7345176', 'get_array() and get_column()', '5b141d734cd1d'),
('5b141d7345176', 'fetch_array() and fetch_column()', '5b141d734cd20'),
('5b141d737ddfc', 'explode()', '5b141d73858d0'),
('5b141d737ddfc', 'implode()', '5b141d73858df'),
('5b141d737ddfc', 'concat()', '5b141d73858e3'),
('5b141d737ddfc', 'concatenate()', '5b141d73858e8'),
('5b1422651fdde', '32 bits', '5b1422654ab3a'),
('5b1422651fdde', '128 bytes', '5b1422654ab48'),
('5b1422651fdde', '64 bits', '5b1422654ab4d'),
('5b1422651fdde', 'compiler depends', '5b1422654ab51'),
('5b14226574ed5', 'reuseability', '5b1422657d052'),
('5b14226574ed5', 'abstrac', '5b1422657d05f'),
('5b14226574ed5', 'data-hiding', '5b1422657d064'),
('5b14226574ed5', 'all above', '5b1422657d069'),
('5b142265b5d08', 'constructore', '5b142265c09e3'),
('5b142265b5d08', 'destrucotre', '5b142265c09f5'),
('5b142265b5d08', 'A & B both', '5b142265c09fa'),
('5b142265b5d08', 'all functions', '5b142265c09ff'),
('5b1422661d93f', 'activation recoerd', '5b14226635df5'),
('5b1422661d93f', 'stack', '5b14226635e04'),
('5b1422661d93f', 'heap', '5b14226635e09'),
('5b1422661d93f', 'not any', '5b14226635e0d'),
('5b14226663cf4', 'referance', '5b1422666bf2b'),
('5b14226663cf4', 'pointer', '5b1422666bf39'),
('5b14226663cf4', 'address', '5b1422666bf3e'),
('5b14226663cf4', 'all above', '5b1422666bf42'),
('5b1422669481b', 'c programing language', '5b1422669c8dc'),
('5b1422669481b', 'java', '5b1422669c8ea'),
('5b1422669481b', 'python', '5b1422669c8ef'),
('5b1422669481b', 'rust', '5b1422669c8f3'),
('5b142266c525c', 'no', '5b142266cd353'),
('5b142266c525c', 'yes', '5b142266cd361'),
('5b142266c525c', 'dont know', '5b142266cd365'),
('5b142266c525c', 'not any option is correct', '5b142266cd369'),
('5b14226711d91', 'try', '5b14226719fa0'),
('5b14226711d91', 'catch', '5b14226719fb1'),
('5b14226711d91', 'A & B both', '5b14226719fb7'),
('5b14226711d91', 'throw', '5b14226719fbb'),
('5b1422674286d', '_var', '5b1422674a9ee'),
('5b1422674286d', '1num', '5b1422674aa01'),
('5b1422674286d', 'MU_qwe', '5b1422674aa06'),
('5b1422674286d', 'num1', '5b1422674aa0b'),
('5b1422677371f', 'new', '5b1422677b3e9'),
('5b1422677371f', 'vectore', '5b1422677b3f7'),
('5b1422677371f', 'delete', '5b1422677b3fc'),
('5b1422677371f', 'create', '5b1422677b400');


CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b141b8009cf0', '5b141d712647f', 'What does PHP stand for?', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'What Is The Prurpose of DNS?', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'PHP files have a default file extension of.', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'Which of the looping statements is/are supported by PHP?', 4, 4),
('5b141b8009cf0', '5b141d7260b7d', 'Which of the following PHP statements will output Hello World on the screen?', 4, 5),
('5b141b8009cf0', '5b141d72a6fa1', 'Which one of the following function is capable of reading a file into an array?', 4, 6),
('5b141b8009cf0', '5b141d72d7a1c', 'A function in PHP which starts with __ (double underscore) is know as..', 4, 7),
('5b141b8009cf0', '5b141d731429b', 'Which one of the following statements is used to create a table?', 4, 8),
('5b141b8009cf0', '5b141d7345176', 'Which of the methods are used to manage result sets using both associative and indexed arrays?', 4, 9),
('5b141b8009cf0', '5b141d737ddfc', 'Which one of the following functions can be used to concatenate array elements to form a single delimited string?', 4, 10),
('5b141f1e8399e', '5b1422651fdde', 'Size of Int in Cpp?', 4, 1),
('5b141f1e8399e', '5b14226574ed5', 'INheritance MEANS?', 4, 2),
('5b141f1e8399e', '5b142265b5d08', 'Which have NO Return Type?', 4, 3),
('5b141f1e8399e', '5b1422661d93f', 'Vectores Elements Are Store in?', 4, 4),
('5b141f1e8399e', '5b14226663cf4', 'Copy Construcotre Have ______ As  Argument?', 4, 5),
('5b141f1e8399e', '5b1422669481b', 'CPP Compiler Written in?', 4, 6),
('5b141f1e8399e', '5b142266c525c', 'All Namespace Have Name ? ', 4, 7),
('5b141f1e8399e', '5b14226711d91', 'which have block?', 4, 8),
('5b141f1e8399e', '5b1422674286d', '- Choose the invalid identifier from the below', 4, 9),
('5b141f1e8399e', '5b1422677371f', 'which keyword use to create dynamic memory ', 4, 10);




CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `quiz` (`eid`, `title`, `right`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'Php & Mysqli', 3, 1, 10, '2018-06-03 16:46:56'),
('5b141f1e8399e', 'CPP', 3, 1, 10, '2018-06-03 17:02:22');



CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('pinky@gmail.com', 30, '2018-06-03 16:57:45'),
('priyanka@gmail.com', 22, '2018-06-03 16:59:06');



CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('Swagatika Padhi', 'National Institute of Science and Technology, surat', 'pinky@gmail.com', 'pinky'),
('Priyanka Pattnaik', 'National Institute of Science and Technology, surat', 'priyanka@gmail.com', 'pinka');
CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `file` varchar(255) NOT NULL,
  `directory` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `Name`, `Date`, `file`, `directory`) VALUES
(1, 'PPS', '2023-05-02', '1.Manipulator.cpp', '1.Manipulator.cpp'),
(2, 'PPS', '2023-05-03', 'fiber.pdf', 'fiber.pdf'),
(4, 'Image', '2023-05-06', 'i.jpg', 'i.jpg'),
(5, 'physics', '2023-05-07', 'photo_detector.pdf', 'photo_detector.pdf'),
(6, 'doc', '2023-05-07', 'ViewGeneratedDocs.ashx-2.pdf', 'ViewGeneratedDocs.ashx-2.pdf'),
(7, 'video', '2023-05-07', 'hv.mp4', 'hv.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `material`
--
CREATE TABLE `doubt` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `query` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doubt`
--

INSERT INTO `doubt` (`id`, `name`, `email`, `subject`, `query`) VALUES
(1, 'Patel Disha J.', 'disha.patel0608@gmail.com', 'PHP', 'i can\'t understand php code for storing data in database'),
(29, 'Patel Jiya D.', 'JD@2911.com', 'PPS', 'I can\'t understand data hiding.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doubt`
--
ALTER TABLE `doubt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doubt`
--
ALTER TABLE `doubt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

