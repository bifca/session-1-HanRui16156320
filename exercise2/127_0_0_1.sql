-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-05-31 07:37:28
-- 服务器版本： 10.1.38-MariaDB
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `alola pokedex`
--
CREATE DATABASE IF NOT EXISTS `alola pokedex` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `alola pokedex`;

-- --------------------------------------------------------

--
-- 表的结构 `alola`
--

CREATE TABLE `alola` (
  `icons` varchar(20) CHARACTER SET utf8 NOT NULL,
  `pokedex_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `number` int(3) NOT NULL,
  `category` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type1` varchar(15) CHARACTER SET utf8 NOT NULL,
  `type2` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `abilities` varchar(150) CHARACTER SET utf8 NOT NULL,
  `sort` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `alola`
--

INSERT INTO `alola` (`icons`, `pokedex_name`, `number`, `category`, `type1`, `type2`, `abilities`, `sort`) VALUES
('icons/722.png', 'Rowlet', 722, 'Grass Quill Pokemon', 'Grass', 'Flying', '[\'Overgrow\',\'Long Reach\']', 1),
('icons/723.png', 'Dartrix', 723, 'Blade Quill Pokemon', 'Grass', 'Flying', '[\'Overgrow\',\'Long Reach\']', 2),
('icons/724.png', 'Decidueye', 724, 'Arrow Quill Pokemon', 'Grass', 'Flying', '[\'Overgrow\',\'Long Reach\']', 3),
('icons/725.png', 'Litten', 725, 'Fire Cat Pokemon', 'Fire', NULL, '[\'Blaze\',\'Intimidate\']', 4),
('icons/726.png', 'Torracat', 726, 'Fire Cat Pokemon', 'Fire', NULL, '[\'Blaze\',\'Intimidate\']', 5),
('icons/727.png', 'Incineroar', 727, 'Heel Pokemon', 'Fire', 'Dark', '[\'Blaze\',\'Intimidate\']', 6),
('icons/728.png', 'Popplio', 728, 'Sea Lion Pokemon', 'Water', NULL, '[\'Torrent\',\'Liquid Voice\']', 7),
('icons/729.png', 'Brionne', 729, 'Pop Star Pokemon', 'Water', NULL, '[\'Torrent\',\'Liquid Voice\']', 8),
('icons/730.png', 'Primarina', 730, 'Soloist Pokemon', 'Water', 'Fairy', '[\'Torrent\',\'Liquid Voice\']', 9),
('icons/731.png', 'Pikipek', 731, 'Woodpecker Pokemon', 'Normal', 'Flying', '[\'Keen Eye\',\'Skill Link\',\'Pickup\']', 10),
('icons/732.png', 'Trumbeak', 732, 'Bugle Beak Pokemon', 'Normal', 'Flying', '[\'Keen Eye\',\'Skill Link\',\'Pickup\']', 11),
('icons/733.png', 'Toucaanon', 733, 'Cannon Pokemon', 'Normal', 'Flying', '[\'Keen Eye\',\'Skill Link\',\'Sheer Force\']', 12),
('icons/734.png', 'Yungoos', 734, 'Loitering Pokemon', 'Normal', NULL, '[\'Stakeout\',\'Strong Jaw\',\'Adaptability\']', 13),
('icons/735.png', 'Gumshoos', 735, 'Stakeout Pokemon', 'Normal', NULL, '[\'Stakeout\',\'Strong Jaw\',\'Adaptability\']', 14),
('icons/736.png', 'Grubbin', 736, 'Larva Pokemon', 'Bug', NULL, '[\'Swarm\']', 15),
('icons/737.png', 'Charjabug', 737, 'Battery Pokemon', 'Bug', 'Electirc', '[\'Battery\']', 16),
('icons/738.png', 'Vikavolt', 738, 'Stag Beetle Pokemon', 'Bug', 'Electirc', '[\'Levitate\']', 17),
('icons/739.png', 'Crabrawler', 739, 'Boxing Pokemon', 'Fighting', NULL, '[\'Hyper Cutter\',\'Iron Fist\',\'Anger Point\']', 18),
('icons/740.png', 'Crabominab', 740, 'Woolly Crab Pokemon', 'Fighting', 'Ice', '[\'Hyper Cutter\',\'Iron Fist\',\'Anger Point\']', 19),
('icons/741.png', 'Oricorio', 741, 'Dacing Pokemon', 'Fire', 'Flying', '[\'Dancer\']', 20),
('icons/741hu.png', 'Oricorio Pa\'u Style', 741, 'Dancing Pokemon', 'Psychic', 'Flying', '[\'Dancer\']', 21),
('icons/741pazi.png', 'Oricorio Pom-Pom Style', 741, 'Dancing Pokemon', 'Electric', 'Flying', '[\'Dancer\']', 23),
('icons/741qy.png', 'Oricorio Sensu Style', 741, 'Dancing Pokemon', 'Ghost', 'Flying', '[\'Dancer\']', 22),
('icons/742.png', 'Cutiefly', 742, 'Bee Fly Pokemon', 'Bug', 'Fairy', '[\'Honey Gather\',\'Shield Dust\',\'Sweet Veil\']', 24),
('icons/743.png', 'Ribombee', 743, 'Bee Fly Pokemon', 'Bug', 'Fairy', '[\'Honey Gather\',\'Shield Dust\',\'Sweet Veil\']', 25),
('icons/744.png', 'Rockruff', 744, 'Puppy Pokemon', 'Rock', NULL, '[\'Keen Eye\',\'Vital Spirit\',\'Steadfast\']', 26),
('icons/745.png', 'Lycanroc Midday Form', 745, 'Wolf Pokemon', 'Rock', NULL, '[\'Keen Eye\',\'Sand Rush\',\'Steadfast\']', 27),
('icons/745dark.png', 'Lycanroc Midnight Form', 745, 'Wolf Pokemon', 'Rock', NULL, '[\'Keen Eye\',\'Vital Spirit\',\'No Guard\']', 28),
('icons/745dusk.png', 'Lycanroc Dusk Form', 745, 'Wolf Pokemon', 'Rock', NULL, '[\'Tough Claws\']', 29),
('icons/746.png', 'Wishiwashi', 746, 'Small Fry Pokemon', 'Water', NULL, '[\'Schooling\']', 30),
('icons/746qun.png', 'Wishiwashi School Form', 746, 'Small Fry Pokemon', 'Water', NULL, '[\'Schooling\']', 31),
('icons/747.png', 'Mareanie', 747, 'Brutal Star Pokemon', 'Poison', 'Water', '[\'Merciless\',\'Limber\',\'Regenerator\']', 32),
('icons/748.png', 'Toxapex', 748, 'Brutal Star Pokemon', 'Poison', 'Water', '[\'Merciless\',\'Limber\',\'Regenerator\']', 33),
('icons/749.png', 'Mudbray', 749, 'Donkey Pokemon', 'Ground', NULL, '[\'Own Tempo\'.\'Stamina\'.\'Inner Focus\']', 34),
('icons/750.png', 'Mudsdale', 750, 'Draft Horse Pokemon', 'Ground', NULL, '[\'Own Tempo\'.\'Stamina\'.\'Inner Focus\']', 35),
('icons/751.png', 'Dewpider', 751, 'Water Bubble Pokemon', 'Water', 'Bug', '[\'Water\',\'Water Absorb\']', 36),
('icons/752.png', 'Araquanid', 752, 'Water Bubble Pokemon', 'Water', 'Bug', '[\'Water\',\'Water Absorb\']', 37),
('icons/753.png', 'Fomantis', 753, 'Sickle Grass Pokemon', 'Grass', NULL, '[\'Leaf Guard\',\'Contrary\']', 38),
('icons/754.png', 'Lurantis', 754, 'Bloom Sickle Pokemon', 'Grass', NULL, '[\'Leaf Guard\',\'Contrary\']', 39),
('icons/755.png', 'Morelull', 755, 'Illuminating Pokemon', 'Grass', 'Fairy', '[\'Illuminate\',\'Effect Spore\',\'Rain Dish\']', 40),
('icons/756.png', 'Shiinotic', 756, 'Illuminating Pokemon', 'Grass', 'Fairy', '[\'Illuminate\',\'Effect Spore\',\'Rain Dish\']', 41),
('icons/757.png', 'Salamdit', 757, 'Toxic Lizard Pokemon', 'Poison', 'Fire', '[\'Corrosion\',\'Oblivious\']', 42),
('icons/758.png', 'Salazzle', 758, 'Toxic Lizard Pokemon', 'Poison', 'Fire', '[\'Corrosion\',\'Oblivious\']', 43),
('icons/759.png', 'Stufful', 759, 'Flailing Pokemon', 'Normal', 'Fighting', '[\'Fluffy\',\'Klutz\',\'Cute Charm\']', 44),
('icons/760.png', 'Bewear', 760, 'Strong Arm Pokemon', 'Normal', 'Fighting', '[\'Fluffy\',\'Klutz\',\'Unnerve\']', 45),
('icons/761.png', 'Bounsweet', 761, 'Fruit Pokemon', 'Grass', NULL, '[\'Leaf Guard\',\'Oblivious\',\'Sweet Veil\']', 46),
('icons/762.png', 'Steenee', 762, 'Fruit Pokemon', 'Grass', NULL, '[\'Leaf Guard\',\'Oblivious\',\'Sweet Veil\']', 47),
('icons/763.png', 'Tsareena', 763, 'Fruit Pokemon', 'Grass', NULL, '[\'Leaf Guard\',\'Queenly Majesty\',\'Sweet Veil\']', 48),
('icons/764.png', 'Comfey', 764, 'Posy Picker Pokemon', 'Fairy', NULL, '[\'Flower Veil\',\'Triage\',\'Natural Cure\']', 49),
('icons/765.png', 'Oranguru', 765, 'Sage Pokemon', 'Normal', ' Psychic', '[\'Inner Focus\',\'Telepathy\',\'Symbiosis\']', 50),
('icons/766.png', 'Passimian', 766, 'Teamwork Pokemon', 'Fighting', NULL, '[\'Receiver\',\'Defiant\']', 51),
('icons/767.png', 'Wimpod', 767, 'Turn Tail Pokemon', 'Bug', 'Water', '[\'Wimp Out\']', 52),
('icons/768.png', 'Golisopod', 768, 'Hard Scale Pokemon', 'Bug', 'Water', '[\'Emergency Exit\']', 53),
('icons/769.png', 'Sandygast', 769, 'Sand Heap Pokemon', 'Ghost', 'Ground', '[\'Water Compaction\',\'Sand Veil\']', 54),
('icons/770.png', 'Palossand', 770, 'Sand Castle Pokemon', 'Ghost', 'Ground', '[\'Water Compaction\',\'Sand Veil\']', 55),
('icons/771.png', 'Pyukumuku', 771, 'Sea Cucumber Pokemon', 'Water', NULL, '[\'Innards Out\',\'Unware\']', 56),
('icons/772.png', 'Type:Null', 772, 'Synthetic Pokemon', 'Normal', NULL, '[\'Battle Armor\']', 57),
('icons/773.png', 'Silvally', 773, 'Synthetic Pokemon', 'Normal', NULL, '[\'RKS System\']', 58),
('icons/774.png', 'Minior', 774, 'Meteor Pokemon', 'Rock', 'Flying', '[\'Shields Down\']', 59),
('icons/775.png', 'Komala', 775, 'Drowsing Pokemon', 'Normal', NULL, '[\'Comatose\']', 60),
('icons/776.png', 'Turtonator', 776, 'Blast  Turtle Pokemon', 'Fire', 'Dragon', '[\'Shell Armor\']', 61),
('icons/777.png', 'Togedemaru', 777, 'Roly-Poly Pokemon', 'Electric', 'Steel', '[\'Iron Barbs\',\'Lightning Rod\',\'Sturdy\']', 62),
('icons/778.png', 'Mimikyu', 778, 'Disguise Pokemon', 'Ghost', 'Fairy', '[\'Disguise\']', 63),
('icons/779.png', 'Bruxish', 779, 'Gnash Teeth Pokemon', 'Water', 'Psychic', '[\'Dazzling\',\'Strong Jaw\',\'Wonder Skin\']', 64),
('icons/780.png', 'Drampa', 780, 'Placid Pokemon', 'Normal', 'Dragon', '[\'Berserk\',\'Sap Sipper\',\'Cloud Nine\']', 65),
('icons/781.png', 'Dhelmise', 781, 'Sea Creeper Pokemon', 'Ghost', 'Grass', '[\'Steelworker\']', 66),
('icons/782.png', 'Jangmo-o', 782, 'Scaly Pokemon', 'Dragon', NULL, '[\'Bulletproof\',\'Soundproof\',\'Overcoat\']', 67),
('icons/783.png', 'Hakamo-o', 783, 'Scaly Pokemon', 'Dragon', 'Fighting', '[\'Bulletproof\',\'Soundproof\',\'Overcoat\']', 68),
('icons/784.png', 'Kommo-o', 784, 'Scaly Pokemon', 'Dragon', 'Fighting', '[\'Bulletproof\',\'Soundproof\',\'Overcoat\']', 69),
('icons/785.png', 'Tapu Koko', 785, 'Land Spirit Pokemon', 'Electric', 'Fairy', '[\'Electric Surge\',\'Telepathy\']', 70),
('icons/786.png', 'Tapu Lele', 786, 'Land Spirit Pokemon', 'Psychic', 'Fairy', '[\'Psychic Surge\',\'Telepathy\']', 71),
('icons/787.png', 'Tapu Bulu', 787, 'Land Spirit Pokemon', 'Grass', 'Fairy', '[\'Grass Surge\',\'Telepathy\']', 72),
('icons/788.png', 'Tapu Fini', 788, 'Land Spirit Pokemon', 'Water', 'Fairy', '[\'Misty Surge\',\'Telepathy\']', 73),
('icons/789.png', 'Cosmog', 789, 'Nebula Pokemon', 'Psychic', NULL, '[Unware]', 74),
('icons/790.png', 'Cosmoem', 790, 'Prosostar Pokemon', 'Psychic', NULL, '[Sturdy]', 75),
('icons/791.png', 'Solgaleo', 791, 'Sunne Pokemon', 'Psychic', 'Steel', '[Full Metal Body]', 76),
('icons/792.png', 'Lunala', 792, 'Moone Pokemon', 'Psychic', 'Ghost', '[\'Shadow Shield\']', 77),
('icons/793.png', 'Nihilego', 793, 'Parasite', 'Rock', 'Poison', '[\'Beast Boost\']', 78),
('icons/794.png', 'Buzzwole', 794, 'Swollen Pokemon', 'Bug', 'Fighting', '[\'Beast Boost\']', 79),
('icons/795.png', 'Pheromosa', 795, 'Lissome Pokemon', 'Bug', 'Fighting', '[\'Beast Boost\']', 80),
('icons/796.png', 'Xurkitree', 796, 'Glowing Pokemon', 'Electric', NULL, '[\'Beast Boost\']', 81),
('icons/797.png', 'Celesteela', 797, 'Launch Pokemon', 'Steel', 'Flying', '[\'Beast Boost\']', 82),
('icons/798.png', 'Kartana', 798, 'Drawn Sword Pokemon', 'Grass', 'Steel', '[\'Beast Boost\']', 83),
('icons/799.png', 'Guzzlord', 799, 'Junkivore Pokemon', 'Dark', 'Dragon', '[\'Beast Boost\']', 84),
('icons/800.png', 'Necrozma', 800, 'Prism Pokemon', 'Psychic', NULL, '[\'Prism Armor\']', 85),
('icons/800dawn.png', 'Dawn Wings Necrozma', 800, 'Prism Pokemon', 'Psychic', 'Ghost', '[\'Prism Armor\']', 86),
('icons/800dusk.png', 'Dusk Mane Necrozma', 800, 'Prism Pokemon', 'Psychic', 'Steel', '[\'Prism Armor\']', 87),
('icons/800ultra.png', 'Ultra Necrozma', 800, 'Prism Pokemon', 'Psychic', 'Dragon', 'Neuroforce', 88),
('icons/801.png', 'Magearna', 801, 'Artificial Pokemon', 'Steel', ' Fairy', '[\'Soul-Heart\']', 89),
('icons/802.png', 'Marshadow', 802, 'Gloomdweller Pokemon', 'Fighting', 'Ghost', '[\'Technician\']', 90),
('icons/803.png', 'Poipole', 803, 'Poison Pin Pokemon', 'Poison', NULL, '[\'Beast Boost\']', 91),
('icons/804.png', 'Naganadel', 804, 'Poison Pin Pokemon', 'Poison', 'Dragon', '[\'Beast Boost\']', 92),
('icons/805.png', 'Stakataka', 805, 'Rampart Pokemon', 'Rock', 'Steel', '[\'Beast Boost\']', 93),
('icons/806.png', 'Blacephalon', 806, 'Fireworks Pokemon', 'Fire', 'Ghost', '[\'Beast Boost\']', 94),
('icons/807.png', 'Zeraora', 807, 'Thunderclap Pokemon', 'Electric', NULL, '[\'Volt Absorb\']', 95);

--
-- 转储表的索引
--

--
-- 表的索引 `alola`
--
ALTER TABLE `alola`
  ADD PRIMARY KEY (`icons`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
