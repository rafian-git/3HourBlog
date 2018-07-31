-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2018 at 04:05 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodelogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cId` int(11) NOT NULL,
  `pId` varchar(20) NOT NULL,
  `uId` varchar(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cId`, `pId`, `uId`, `comment`) VALUES
(1, '2JOCs62WC', '3', 'nice post dude'),
(2, '2JOCs62WC', '2', 'good piece of writing .. keep up'),
(3, '2JOCs62WC', '1', 'great work'),
(4, 'W98gT75y3', '1', 'cool story bro'),
(5, 'W98tYa9E3', '2', 'nice writing man'),
(6, 'W98tYa9E3', '4', 'agreed');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `postId` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `topic` text NOT NULL,
  `descr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postId`, `userId`, `topic`, `descr`) VALUES
('2JOCs62WC', 1, 'Lorem ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
('hnDTWmczm', 2, 'Aliquam ', 'Nullam sagittis et nunc nec venenatis. Morbi hendrerit tellus quis bibendum pretium. Suspendisse ut nisi quis mi suscipit euismod ut ac metus. Vestibulum sollicitudin, arcu quis vulputate hendrerit, ligula dui interdum lorem, vel ullamcorper nulla elit nec purus. Praesent rutrum ac mi ut efficitur. Duis eu eleifend justo, in condimentum mi. Curabitur quis risus lorem. Donec eu lorem quis quam pretium suscipit non sed diam. Suspendisse maximus euismod pretium. Vivamus a lorem velit. Nulla rhoncus mauris sit amet nisi dictum congue. Praesent metus libero, iaculis '),
('hZNbke_9a', 1, 'finibus.', 'finibus rhoncus turpis. Maecenas mattis hendrerit augue a maximus. Ut pulvinar ultricies sapien sit amet rhoncus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Donec ac ullamcorper diam, ac ornare risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin sapien neque, cursus ac sagittis in, malesuada nec dui. Donec sodales metus id venenatis molestie. In bibendum, tellus ac convallis bibendum, lorem velit varius metus, sit amet cursus lectus lorem ac dui. Suspendisse dignissim, metus sed iaculis sodales, augue nisl euismod dui, a semper odio nisi eget ligula. Nulla at accumsan metus, quis aliquam neque. Fusce ultricies odio eget ipsum eleifend, nec laoreet ante commodo. Morbi dictum iaculis arcu vitae dapibus. Integer eros enim, convallis in lectus nec, mollis scelerisque nisl. Aenean egestas, felis vitae viverra sollicitudin, erat purus scelerisque ligula, in dapibus urna elit et'),
('SMM-xi8br', 3, 'Curabitur', 'fringilla sodales blandit. Maecenas mattis tempus magna. Mauris blandit, lorem non euismod vestibulum, libero purus finibus sapien, sit amet suscipit nulla magna ut dolor. Praesent dapibus enim non lacus consectetur volutpat. Aenean accumsan ultricies sapien, id vulputate libero rutrum a. Sed tempor, nunc eget hendrerit tincidunt, justo justo auctor leo, ac venenatis urna purus tempor mi. Vestibulum et elit molestie, aliquam elit quis, mollis erat. Vivamus eleifend interdum maximus. Nam vestibulum tortor a ipsum ullamcorper pretium nec et ante. Nullam ac est luctus, convallis justo ac, laoreet quam. Pellentesque vel ipsum eget mi sollicitudin ultricies.'),
('W98gRa9R8', 2, 'Ipsum', 'Ut vehicula ante metus, in congue risus elementum lacinia. Etiam et ipsum viverra diam consequat bibendum vel at mauris. Nulla libero libero, ullamcorper eu maximus non, mollis non magna. In ultricies tortor sit amet orci molestie, sit amet placerat sapien consectetur. Sed in nibh fringilla, dictum dolor sit amet, dignissim urna. Fusce ut tristique ex. Ut ac magna metus. Aliquam ex elit, condimentum vel porttitor ut, lacinia sit amet sem. Cras rutrum id neque non facilisis. Suspendisse condimentum auctor quam sed rhoncus. Ut at egestas nulla. Integer cursus elit eget dolor tincidunt, vitae dignissim est ultricies. Cras faucibus laoreet libero eget fermentum. Praesent semper mauris dictum sapien finibus, ut suscipit est tristique. Nullam sollicitudin viverra justo, vitae cursus felis consequat a.\r\n\r\nCurabitur fringilla sodales blandit. Maecenas mattis tempus magna. Mauris blandit, lorem non euismod vestibulum, libero purus finibus sapien, sit amet suscipit nulla magna ut dolor. Praesent dapibus enim non lacus consectetur volutpat. Aenean accumsan ultricies sapien, id vulputate libero rutrum a. Sed tempor, nunc eget hendrerit tincidunt, justo justo auctor leo, ac venenatis urna purus tempor mi. Vestibulum et elit molestie, aliquam elit quis, mollis erat. Vivamus eleifend interdum maximus. Nam vestibulum tortor a ipsum ullamcorper pretium nec et ante. Nullam ac est luctus, convallis justo ac, laoreet quam. Pellentesque vel ipsum eget mi sollicitudin ultricies. Nulla eget nunc vel sapien vestibulum fringilla et in tortor. Integer molestie vel sapien nec laoreet. Nam turpis libero, rhoncus quis ex placerat, tempor egestas augue.'),
('W98gT75y3', 4, 'Amet', 'Aenean finibus rhoncus turpis. Maecenas mattis hendrerit augue a maximus. Ut pulvinar ultricies sapien sit amet rhoncus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Donec ac ullamcorper diam, ac ornare risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin sapien neque, cursus ac sagittis in, malesuada nec dui. Donec sodales metus id venenatis molestie. In bibendum, tellus ac convallis bibendum, lorem velit varius metus, sit amet cursus lectus lorem ac dui. Suspendisse dignissim, metus sed iaculis sodales, augue nisl euismod dui, a semper odio nisi eget ligula. Nulla at accumsan metus, quis aliquam neque. Fusce ultricies odio eget ipsum eleifend, nec laoreet ante commodo. Morbi dictum iaculis arcu vitae dapibus. Integer eros enim, convallis in lectus nec, mollis scelerisque nisl. Aenean egestas, felis vitae viverra sollicitudin, erat purus scelerisque ligula, in dapibus urna elit et felis.'),
('W98tYa9E3', 3, 'Dolor', 'Aliquam tristique vehicula sem vel interdum. Ut ornare iaculis ex, ac finibus nulla aliquam et. Integer non ex viverra eros venenatis consectetur. Nullam sagittis et nunc nec venenatis. Morbi hendrerit tellus quis bibendum pretium. Suspendisse ut nisi quis mi suscipit euismod ut ac metus. Vestibulum sollicitudin, arcu quis vulputate hendrerit, ligula dui interdum lorem, vel ullamcorper nulla elit nec purus. Praesent rutrum ac mi ut efficitur. Duis eu eleifend justo, in condimentum mi. Curabitur quis risus lorem. Donec eu lorem quis quam pretium suscipit non sed diam. Suspendisse maximus euismod pretium. Vivamus a lorem velit. Nulla rhoncus mauris sit amet nisi dictum congue. Praesent metus libero, iaculis ac nibh et, aliquet convallis justo. In suscipit interdum mi, malesuada molestie quam ultrices eu.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fName` varchar(30) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fName`, `userName`, `password`) VALUES
(1, 'zaber rafian', 'rafz', '1234'),
(2, 'donald trump', 'dTrump', '1234'),
(3, 'chuck norris', 'cNorris', '1234'),
(4, 'bashar asad', 'bAsad', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
