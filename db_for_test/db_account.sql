-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/03/2025 às 17:30
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_account`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_account`
--

CREATE TABLE `t_account` (
  `accountid` bigint(21) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  `pw2` varchar(32) DEFAULT NULL,
  `sc` varchar(32) DEFAULT NULL,
  `pp` varchar(250) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `bd` int(11) DEFAULT 0,
  `pv` int(11) DEFAULT 0,
  `pt` int(11) DEFAULT 0,
  `el` int(11) DEFAULT 0,
  `ac` varchar(128) DEFAULT NULL,
  `ai` varchar(128) DEFAULT NULL,
  `lr` varchar(250) DEFAULT NULL,
  `ld` tinyint(4) DEFAULT 0,
  `ls` int(11) DEFAULT 0,
  `le` int(11) DEFAULT 0,
  `ll` int(11) DEFAULT 0,
  `ct` int(11) DEFAULT 0,
  `cn` int(11) DEFAULT 0,
  `ot` int(11) DEFAULT 0,
  `vt` int(11) DEFAULT 0,
  `vl` int(11) DEFAULT 0,
  `p1` int(11) DEFAULT 0,
  `p2` int(11) DEFAULT 0,
  `lg` int(11) DEFAULT 0,
  `lt` int(11) DEFAULT 0,
  `ck` int(11) DEFAULT 0,
  `gd` int(11) DEFAULT 0,
  `st` int(11) DEFAULT 0,
  `cc` int(11) DEFAULT 0,
  `ut` int(11) DEFAULT 0,
  `cr` int(11) DEFAULT 0,
  `dc` int(11) DEFAULT 0,
  `di` int(11) DEFAULT 0,
  `ic` int(11) DEFAULT 0,
  `do` int(11) DEFAULT 0,
  `oc` int(11) DEFAULT 0,
  `gn` int(11) DEFAULT 0,
  `bc` int(11) DEFAULT 0,
  `cy` int(11) DEFAULT 0,
  `cs` int(11) DEFAULT 0,
  `cm` int(11) DEFAULT 0,
  `mc` int(11) DEFAULT 0,
  `uc` int(11) DEFAULT 0,
  `svc` int(11) DEFAULT 0,
  `svcc` int(11) DEFAULT 0,
  `svd` int(11) DEFAULT 0,
  `svdc` int(11) DEFAULT 0,
  `svb` int(11) DEFAULT 0,
  `svbc` int(11) DEFAULT 0,
  `pwt` int(11) DEFAULT 0,
  `pwp1` int(11) DEFAULT 0,
  `pwp2` int(11) DEFAULT 0,
  `pwp3` int(11) DEFAULT 0,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `t_account`
--

INSERT INTO `t_account` (`accountid`, `name`, `pwd`, `pw2`, `sc`, `pp`, `city`, `bd`, `pv`, `pt`, `el`, `ac`, `ai`, `lr`, `ld`, `ls`, `le`, `ll`, `ct`, `cn`, `ot`, `vt`, `vl`, `p1`, `p2`, `lg`, `lt`, `ck`, `gd`, `st`, `cc`, `ut`, `cr`, `dc`, `di`, `ic`, `do`, `oc`, `gn`, `bc`, `cy`, `cs`, `cm`, `mc`, `uc`, `svc`, `svcc`, `svd`, `svdc`, `svb`, `svbc`, `pwt`, `pwp1`, `pwp2`, `pwp3`, `email`) VALUES
(1, 'dion', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 9, 0, 0, NULL, NULL, NULL, 0, 0, 0, 1442624465, 0, 0, 15156, 0, 0, 0, 0, 0, 0, 15143, 9000, 0, 0, 7, 2882, 12250, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com'),
(2, 'dion1', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 9, 0, 0, NULL, NULL, NULL, 0, 0, 0, 1440779050, 0, 0, 2792, 0, 0, 0, 0, 0, 0, 54863, 14300, 0, 0, 5, 13062, 9370, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com'),
(3, 'dion2', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 9, 0, 0, NULL, NULL, NULL, 0, 0, 0, 1439920854, 0, 0, 1982, 0, 0, 0, 0, 0, 0, 61910, 3700, 0, 0, 3, 31999, 59018, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com'),
(4, 'xuxu', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 9, 0, 0, NULL, NULL, NULL, 0, 0, 0, 1441051715, 0, 0, 17635, 0, 0, 0, 0, 0, 0, 15143, 9000, 0, 0, 7, 2882, 12250, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com'),
(5, 'asdf', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com'),
(6, 'asdf23', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com'),
(7, 'dion23', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com'),
(8, 'dqwer', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com'),
(9, 'qqq12', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com'),
(10, 'ultrat5', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 9, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com'),
(11, 'ultrat16', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com'),
(12, 'qwwqe', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teste@123.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_card_saving`
--

CREATE TABLE `t_card_saving` (
  `idx` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `cardid` varchar(45) DEFAULT NULL,
  `cardpwd` varchar(32) DEFAULT NULL,
  `gold` int(11) DEFAULT 0,
  `stime` int(11) DEFAULT 0,
  `type` int(11) DEFAULT 0,
  `got` int(11) DEFAULT 0,
  `num` int(11) DEFAULT 0,
  `opid` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_cct`
--

CREATE TABLE `t_cct` (
  `tm` int(11) DEFAULT 0,
  `cnt` int(11) DEFAULT 0,
  `svcnt` int(11) DEFAULT 0,
  `s01` int(11) DEFAULT 0,
  `s02` int(11) DEFAULT 0,
  `s03` int(11) DEFAULT 0,
  `s04` int(11) DEFAULT 0,
  `s05` int(11) DEFAULT 0,
  `s06` int(11) DEFAULT 0,
  `s07` int(11) DEFAULT 0,
  `s08` int(11) DEFAULT 0,
  `s09` int(11) DEFAULT 0,
  `s10` int(11) DEFAULT 0,
  `s11` int(11) DEFAULT 0,
  `s12` int(11) DEFAULT 0,
  `s13` int(11) DEFAULT 0,
  `s14` int(11) DEFAULT 0,
  `s15` int(11) DEFAULT 0,
  `s16` int(11) DEFAULT 0,
  `s17` int(11) DEFAULT 0,
  `s18` int(11) DEFAULT 0,
  `s19` int(11) DEFAULT 0,
  `s20` int(11) DEFAULT 0,
  `s21` int(11) DEFAULT 0,
  `s22` int(11) DEFAULT 0,
  `s23` int(11) DEFAULT 0,
  `s24` int(11) DEFAULT 0,
  `s25` int(11) DEFAULT 0,
  `s26` int(11) DEFAULT 0,
  `s27` int(11) DEFAULT 0,
  `s28` int(11) DEFAULT 0,
  `s29` int(11) DEFAULT 0,
  `s30` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_cct24h`
--

CREATE TABLE `t_cct24h` (
  `idx` int(11) NOT NULL DEFAULT 0,
  `tm` int(11) DEFAULT 0,
  `cnt` int(11) DEFAULT 0,
  `svcnt` int(11) DEFAULT 0,
  `s01` int(11) DEFAULT 0,
  `s02` int(11) DEFAULT 0,
  `s03` int(11) DEFAULT 0,
  `s04` int(11) DEFAULT 0,
  `s05` int(11) DEFAULT 0,
  `s06` int(11) DEFAULT 0,
  `s07` int(11) DEFAULT 0,
  `s08` int(11) DEFAULT 0,
  `s09` int(11) DEFAULT 0,
  `s10` int(11) DEFAULT 0,
  `s11` int(11) DEFAULT 0,
  `s12` int(11) DEFAULT 0,
  `s13` int(11) DEFAULT 0,
  `s14` int(11) DEFAULT 0,
  `s15` int(11) DEFAULT 0,
  `s16` int(11) DEFAULT 0,
  `s17` int(11) DEFAULT 0,
  `s18` int(11) DEFAULT 0,
  `s19` int(11) DEFAULT 0,
  `s20` int(11) DEFAULT 0,
  `s21` int(11) DEFAULT 0,
  `s22` int(11) DEFAULT 0,
  `s23` int(11) DEFAULT 0,
  `s24` int(11) DEFAULT 0,
  `s25` int(11) DEFAULT 0,
  `s26` int(11) DEFAULT 0,
  `s27` int(11) DEFAULT 0,
  `s28` int(11) DEFAULT 0,
  `s29` int(11) DEFAULT 0,
  `s30` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_event`
--

CREATE TABLE `t_event` (
  `idx` int(11) NOT NULL,
  `timestart` int(11) DEFAULT 0,
  `timestop` int(11) DEFAULT 0,
  `duration` int(11) DEFAULT 0,
  `rep` int(11) DEFAULT 0,
  `inte` int(11) DEFAULT 0,
  `peritype` int(11) DEFAULT 0,
  `periinterval` int(11) DEFAULT 0,
  `periflag` int(11) DEFAULT 0,
  `cmdstart` varchar(250) DEFAULT NULL,
  `cmdend` varchar(250) DEFAULT NULL,
  `recever` varchar(250) DEFAULT NULL,
  `memo` varchar(250) DEFAULT NULL,
  `createtime` int(11) DEFAULT 0,
  `deletetime` int(11) DEFAULT 0,
  `deletetype` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_gold_saving`
--

CREATE TABLE `t_gold_saving` (
  `idx` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `gold` int(11) DEFAULT 0,
  `type` int(11) DEFAULT 0,
  `opid` int(11) DEFAULT 0,
  `nidx` int(11) DEFAULT 0,
  `ctime` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_gold_used`
--

CREATE TABLE `t_gold_used` (
  `idx` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `type` int(11) DEFAULT 0,
  `gold` int(11) DEFAULT 0,
  `ng` int(11) DEFAULT 0,
  `utime` int(11) DEFAULT 0,
  `memo` varchar(64) DEFAULT NULL,
  `optype` int(11) DEFAULT 0,
  `opparam1` int(11) DEFAULT 0,
  `opparam2` int(11) DEFAULT 0,
  `buycnt` int(11) DEFAULT 0,
  `serveridx` int(11) DEFAULT 0,
  `actorid` bigint(21) DEFAULT 0,
  `actorname` varchar(128) DEFAULT NULL,
  `actorlev` int(11) DEFAULT 0,
  `ip` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `t_gold_used`
--

INSERT INTO `t_gold_used` (`idx`, `name`, `type`, `gold`, `ng`, `utime`, `memo`, `optype`, `opparam1`, `opparam2`, `buycnt`, `serveridx`, `actorid`, `actorname`, `actorlev`, `ip`) VALUES
(1, 'dion', 0, 1, 999998, 1439860625, 'buy', 1, 1089, 1, 1, 1, 0, '', 0, -1062731765),
(2, 'dion', 0, 1, 999997, 1439861163, 'buy', 1, 4243, 1, 2, 1, 0, '', 0, -1062731765),
(3, 'dion1', 0, 1, 999996, 1439863858, 'buy', 1, 1089, 1, 3, 1, 0, '', 0, -1062731765),
(4, 'dion', 0, 1, 999996, 1439921965, 'buy', 1, 5538, 1, 3, 1, 0, '', 0, -1062731674),
(5, 'dion1', 0, 1, 999995, 1439939605, 'buy', 1, 4178, 1, 4, 1, 0, '', 0, -1062731765),
(6, 'dion1', 0, 1, 999994, 1439939606, 'buy', 1, 4163, 1, 5, 1, 0, '', 0, -1062731765),
(7, 'dion', 0, 4, 999992, 1440012806, 'buy', 1, 3506, 4, 4, 1, 0, '', 0, -1062731671);

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_login`
--

CREATE TABLE `t_login` (
  `loginindex` bigint(21) NOT NULL,
  `accountid` bigint(21) DEFAULT 0,
  `server` bigint(21) DEFAULT 0,
  `logintime` int(11) DEFAULT 0,
  `logouttime` int(11) DEFAULT 0,
  `ip` int(11) DEFAULT 0,
  `point` int(11) DEFAULT 0,
  `flag` int(11) DEFAULT 0,
  `mac` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `t_login`
--

INSERT INTO `t_login` (`loginindex`, `accountid`, `server`, `logintime`, `logouttime`, `ip`, `point`, `flag`, `mac`) VALUES
(2, 1, 0, 1439859639, 1439859649, -1062731765, 0, 1, '80-EE-73-29-C9-66'),
(3, 1, 1, 1439860529, 1439862129, -1062731765, 2, 1, '80-EE-73-29-C9-66'),
(4, 1, 1, 1439862689, 1439862694, -1062731765, 2, 1, '80-EE-73-29-C9-66'),
(5, 1, 1, 1439920595, 1439920752, -1062731674, 2, 1, '80-EE-73-29-C9-66'),
(6, 3, 0, 1439920847, 1439920854, -1062731674, 3, 1, '80-EE-73-29-C9-66'),
(7, 1, 1, 1439921126, 1439921688, -1062731674, 2, 1, '80-EE-73-29-C9-66'),
(8, 1, 1, 1439921688, 1439922423, -1062731674, 3, 1, '80-EE-73-29-C9-66'),
(9, 2, 1, 1439939221, 1439939963, -1062731765, 5, 1, '80-EE-73-29-C9-66'),
(10, 1, 1, 1440011607, 1440011946, -1062731671, 3, 1, '80-EE-73-29-C9-66'),
(11, 1, 1, 1440011946, 1440012240, -1062731671, 3, 1, '80-EE-73-29-C9-66'),
(12, 1, 1, 1440012240, 1440012882, -1062731671, 7, 1, '80-EE-73-29-C9-66'),
(13, 1, 0, 1440013194, 1440013196, -1062731671, 7, 1, '80-EE-73-29-C9-66'),
(14, 1, 1, 1440014079, 1440014424, -1062731671, 7, 1, '80-EE-73-29-C9-66'),
(15, 1, 1, 1440014424, 1440014857, -1062731671, 7, 1, '80-EE-73-29-C9-66'),
(16, 1, 1, 1440015148, 1440015480, -1062731671, 7, 1, '80-EE-73-29-C9-66'),
(17, 1, 1, 1440026071, 1440026361, -1062731765, 7, 1, '80-EE-73-29-C9-66'),
(18, 1, 1, 1440027188, 1440027556, -1062731765, 7, 1, '80-EE-73-29-C9-66'),
(19, 1, 1, 1440028389, 1440028762, -1062731765, 7, 1, '80-EE-73-29-C9-66'),
(20, 1, 1, 1440033661, 1440033830, -1062731765, 7, 1, '80-EE-73-29-C9-66'),
(21, 1, 1, 1440034557, 1440034759, -1062731765, 7, 1, '80-EE-73-29-C9-66'),
(22, 1, 1, 1440034978, 1440035068, -1062731765, 7, 1, '80-EE-73-29-C9-66'),
(23, 1, 1, 1440091238, 1440091242, -1062731676, 7, 1, '80-EE-73-29-C9-66'),
(24, 1, 1, 1440091266, 1440091269, -1062731676, 7, 1, '80-EE-73-29-C9-66'),
(25, 1, 1, 1440091287, 1440092980, -1062731676, 7, 1, '80-EE-73-29-C9-66'),
(26, 1, 1, 1440204828, 1440204880, -1062731765, 7, 1, '80-EE-73-29-C9-66'),
(27, 1, 1, 1440205179, 1440205450, -1062731765, 7, 1, '80-EE-73-29-C9-66'),
(28, 1, 0, 1440205850, 1440205853, -1062731765, 7, 1, '80-EE-73-29-C9-66'),
(29, 1, 1, 1440205997, 1440206055, -1062731765, 7, 1, '80-EE-73-29-C9-66'),
(30, 1, 1, 1440616435, 1440616527, -1062731676, 7, 1, '80-EE-73-29-C9-66'),
(31, 1, 1, 1440695932, 1440701918, -1062731674, 7, 1, '80-EE-73-29-C9-66'),
(32, 2, 1, 1440778975, 1440779050, -1062731671, 5, 1, '80-EE-73-29-C9-66'),
(33, 1, 1, 1441048343, 1441048380, -1062731675, 7, 1, '80-EE-73-29-C9-66'),
(34, 1, 1, 1441048829, 1441048855, -1062731675, 7, 1, '80-EE-73-29-C9-66'),
(35, 4, 1, 1441049223, 1441051715, -1062731675, 7, 1, '80-EE-73-29-C9-66'),
(36, 1, 1, 1442624452, 1442624465, -1062731765, 7, 1, '80-EE-73-29-C9-66');

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_log_acct`
--

CREATE TABLE `t_log_acct` (
  `idx` int(11) NOT NULL,
  `tm` int(11) DEFAULT 0,
  `logtm` int(11) DEFAULT 0,
  `i00` int(11) DEFAULT 0,
  `i01` int(11) DEFAULT 0,
  `i02` int(11) DEFAULT 0,
  `i03` int(11) DEFAULT 0,
  `i04` int(11) DEFAULT 0,
  `i05` int(11) DEFAULT 0,
  `i06` int(11) DEFAULT 0,
  `i07` int(11) DEFAULT 0,
  `i08` int(11) DEFAULT 0,
  `i09` int(11) DEFAULT 0,
  `i10` int(11) DEFAULT 0,
  `i11` int(11) DEFAULT 0,
  `i12` int(11) DEFAULT 0,
  `i13` int(11) DEFAULT 0,
  `i14` int(11) DEFAULT 0,
  `i15` int(11) DEFAULT 0,
  `i16` int(11) DEFAULT 0,
  `i17` int(11) DEFAULT 0,
  `i18` int(11) DEFAULT 0,
  `i19` int(11) DEFAULT 0,
  `i20` int(11) DEFAULT 0,
  `i21` int(11) DEFAULT 0,
  `i22` int(11) DEFAULT 0,
  `i23` int(11) DEFAULT 0,
  `i24` int(11) DEFAULT 0,
  `i25` int(11) DEFAULT 0,
  `i26` int(11) DEFAULT 0,
  `i27` int(11) DEFAULT 0,
  `i28` int(11) DEFAULT 0,
  `i29` int(11) DEFAULT 0,
  `i30` int(11) DEFAULT 0,
  `c00` int(11) DEFAULT 0,
  `c01` int(11) DEFAULT 0,
  `c02` int(11) DEFAULT 0,
  `c03` int(11) DEFAULT 0,
  `c04` int(11) DEFAULT 0,
  `c05` int(11) DEFAULT 0,
  `c06` int(11) DEFAULT 0,
  `c07` int(11) DEFAULT 0,
  `c08` int(11) DEFAULT 0,
  `c09` int(11) DEFAULT 0,
  `c10` int(11) DEFAULT 0,
  `c11` int(11) DEFAULT 0,
  `c12` int(11) DEFAULT 0,
  `c13` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_log_act`
--

CREATE TABLE `t_log_act` (
  `idx` int(11) NOT NULL,
  `tm` int(11) DEFAULT 0,
  `logtm` int(11) DEFAULT 0,
  `level` int(11) DEFAULT 0,
  `totalact` int(11) DEFAULT 0,
  `a15` int(11) DEFAULT 0,
  `a7d` int(11) DEFAULT 0,
  `a1d` int(11) DEFAULT 0,
  `em` int(11) DEFAULT 0,
  `fm` int(11) DEFAULT 0,
  `qc` int(11) DEFAULT 0,
  `bh` int(11) DEFAULT 0,
  `xq` int(11) DEFAULT 0,
  `money` int(11) DEFAULT 0,
  `totallost` int(11) DEFAULT 0,
  `lost1` int(11) DEFAULT 0,
  `oltimemin` int(11) DEFAULT 0,
  `oltimemax` int(11) DEFAULT 0,
  `oltimeavg` int(11) DEFAULT 0,
  `lvup` int(11) DEFAULT 0,
  `lvuptimemin` int(11) DEFAULT 0,
  `lvuptimemax` int(11) DEFAULT 0,
  `lvuptimeavg` int(11) DEFAULT 0,
  `lvuptimeavg2` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_log_gitem`
--

CREATE TABLE `t_log_gitem` (
  `idx` int(11) NOT NULL,
  `tm` int(11) DEFAULT 0,
  `itemid` int(11) DEFAULT 0,
  `price` int(11) DEFAULT 0,
  `cnt` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_log_log`
--

CREATE TABLE `t_log_log` (
  `idx` int(11) NOT NULL,
  `tm` int(11) DEFAULT 0,
  `type` int(11) DEFAULT 0,
  `usetime` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_new`
--

CREATE TABLE `t_new` (
  `idx` int(11) NOT NULL,
  `type` int(11) DEFAULT 0,
  `name` varchar(32) DEFAULT NULL,
  `str1` varchar(64) DEFAULT NULL,
  `str2` varchar(32) DEFAULT NULL,
  `str3` varchar(250) DEFAULT NULL,
  `i1` int(11) DEFAULT 0,
  `i2` int(11) DEFAULT 0,
  `i3` int(11) DEFAULT 0,
  `ctime` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_schedule`
--

CREATE TABLE `t_schedule` (
  `idx` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `schedule` varchar(128) DEFAULT NULL,
  `timestart` int(11) DEFAULT 0,
  `timestop` int(11) DEFAULT 0,
  `duration` int(11) DEFAULT 0,
  `cmdstart` text DEFAULT NULL,
  `cmdend` text DEFAULT NULL,
  `recever` varchar(250) DEFAULT NULL,
  `createtime` int(11) DEFAULT 0,
  `deletetime` int(11) DEFAULT 0,
  `deletetype` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_site_log`
--

CREATE TABLE `t_site_log` (
  `cod_log` int(11) NOT NULL,
  `accountid` int(11) NOT NULL,
  `data_in` varchar(10) NOT NULL,
  `data_out` varchar(10) NOT NULL,
  `hour_in` varchar(5) NOT NULL,
  `hour_out` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `t_site_log`
--

INSERT INTO `t_site_log` (`cod_log`, `accountid`, `data_in`, `data_out`, `hour_in`, `hour_out`) VALUES
(2, 2, '11/03/2025', '11/03/2025', '13:33', '13:34'),
(3, 2, '11/03/2025', '11/03/2025', '13:34', '13:34'),
(4, 2, '11/03/2025', '11/03/2025', '13:54', '13:54'),
(5, 2, '11/03/2025', '', '10:04', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `t_ui`
--

CREATE TABLE `t_ui` (
  `idx` int(11) NOT NULL,
  `txt` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `t_account`
--
ALTER TABLE `t_account`
  ADD PRIMARY KEY (`accountid`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `ll` (`ll`);

--
-- Índices de tabela `t_card_saving`
--
ALTER TABLE `t_card_saving`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `name` (`name`),
  ADD KEY `stime` (`stime`);

--
-- Índices de tabela `t_cct`
--
ALTER TABLE `t_cct`
  ADD KEY `tm` (`tm`);

--
-- Índices de tabela `t_cct24h`
--
ALTER TABLE `t_cct24h`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `tm` (`tm`);

--
-- Índices de tabela `t_event`
--
ALTER TABLE `t_event`
  ADD PRIMARY KEY (`idx`);

--
-- Índices de tabela `t_gold_saving`
--
ALTER TABLE `t_gold_saving`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `name` (`name`),
  ADD KEY `ctime` (`ctime`);

--
-- Índices de tabela `t_gold_used`
--
ALTER TABLE `t_gold_used`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `name` (`name`),
  ADD KEY `utime` (`utime`),
  ADD KEY `actorid` (`actorid`);

--
-- Índices de tabela `t_login`
--
ALTER TABLE `t_login`
  ADD PRIMARY KEY (`loginindex`),
  ADD KEY `accountid` (`accountid`),
  ADD KEY `logintime` (`logintime`);

--
-- Índices de tabela `t_log_acct`
--
ALTER TABLE `t_log_acct`
  ADD PRIMARY KEY (`idx`);

--
-- Índices de tabela `t_log_act`
--
ALTER TABLE `t_log_act`
  ADD PRIMARY KEY (`idx`);

--
-- Índices de tabela `t_log_gitem`
--
ALTER TABLE `t_log_gitem`
  ADD PRIMARY KEY (`idx`);

--
-- Índices de tabela `t_log_log`
--
ALTER TABLE `t_log_log`
  ADD PRIMARY KEY (`idx`);

--
-- Índices de tabela `t_new`
--
ALTER TABLE `t_new`
  ADD PRIMARY KEY (`idx`);

--
-- Índices de tabela `t_schedule`
--
ALTER TABLE `t_schedule`
  ADD PRIMARY KEY (`idx`);

--
-- Índices de tabela `t_site_log`
--
ALTER TABLE `t_site_log`
  ADD PRIMARY KEY (`cod_log`);

--
-- Índices de tabela `t_ui`
--
ALTER TABLE `t_ui`
  ADD PRIMARY KEY (`idx`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `t_account`
--
ALTER TABLE `t_account`
  MODIFY `accountid` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `t_card_saving`
--
ALTER TABLE `t_card_saving`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `t_event`
--
ALTER TABLE `t_event`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `t_gold_saving`
--
ALTER TABLE `t_gold_saving`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `t_gold_used`
--
ALTER TABLE `t_gold_used`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `t_login`
--
ALTER TABLE `t_login`
  MODIFY `loginindex` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `t_log_acct`
--
ALTER TABLE `t_log_acct`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `t_log_act`
--
ALTER TABLE `t_log_act`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `t_log_gitem`
--
ALTER TABLE `t_log_gitem`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `t_log_log`
--
ALTER TABLE `t_log_log`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `t_new`
--
ALTER TABLE `t_new`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `t_schedule`
--
ALTER TABLE `t_schedule`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `t_site_log`
--
ALTER TABLE `t_site_log`
  MODIFY `cod_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `t_ui`
--
ALTER TABLE `t_ui`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
