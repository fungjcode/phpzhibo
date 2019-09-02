-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2019-09-02 06:49:38
-- 服务器版本： 5.7.23
-- PHP 版本： 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `avi`
--

-- --------------------------------------------------------

--
-- 表的结构 `avi_roomlist`
--

DROP TABLE IF EXISTS `avi_roomlist`;
CREATE TABLE IF NOT EXISTS `avi_roomlist` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL COMMENT '房间名',
  `xinimg` varchar(255) NOT NULL COMMENT '房间编码',
  `Number` int(255) NOT NULL COMMENT '主播数',
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `avi_roomlist`
--

INSERT INTO `avi_roomlist` (`id`, `address`, `xinimg`, `Number`, `title`) VALUES
(1, 'jsonxingguang.txt', 'http://ww1.sinaimg.cn/large/87c01ec7gy1fqi47x1heoj2020020748.jpg', 21, '星光'),
(2, 'jsonlongzhu.txt', 'http://ww3.sinaimg.cn/large/87c01ec7gy1fqi4cgzdv6j2020020q2v.jpg', 10, '龙珠'),
(3, 'jsonyingke.txt', 'http://ww4.sinaimg.cn/large/87c01ec7ly1fr5dlbjj3xj204501u0sl.jpg', 34, '映客'),
(4, 'jsonxiaohuaxia.txt', 'http://ww2.sinaimg.cn/large/87c01ec7gy1fs8h3ls6tvj2049042web.jpg', 56, '小画匣'),
(5, 'jsonxiaohongmao.txt', 'http://xhm.xhmlives.com/data/upload/20190720/5d331ab3e1a36.jpg', 100, '小红帽'),
(6, 'jsonshibajin.txt', 'http://jk.kblives.com/data/upload/20190714/5d2b2f400cc8e.png', 76, '十八禁'),
(7, 'jsonkawayi.txt', 'http://wx3.sinaimg.cn/mw690/0060lm7Tly1fu6p7zazkzj303t03imx2.jpg', 0, '卡哇伊'),
(8, 'jsonmeiyan.txt', 'http://ww4.sinaimg.cn/large/87c01ec7gy1fr1m2fre6rj2036036jra.jpg', 18, '眉眼'),
(9, 'jsonGboy.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g2qfsu76kbj30sg0sgta4.jpg', 55, 'Gboy'),
(10, 'jsontaohuayun.txt', 'http://ww1.sinaimg.cn/large/87c01ec7gy1fsopkqqavbj205x05bwfc.jpg', 48, '桃花运'),
(11, 'jsonyizhibo.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g2box35n90j30320323ya.jpg', 42, '一直播'),
(12, 'jsonweila.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g0ge1038vgj30u00u07wh.jpg', 47, '维拉'),
(13, 'jsonyoulemei.txt', 'http://ws3.sinaimg.cn/large/005BYqpgly1g5zhjb16anj30500503yw.jpg', 50, '优乐美'),
(14, 'jsonxiaotianxian.txt', 'http://ws3.sinaimg.cn/large/005BYqpgly1g5zhiu1crrj305c05cmxa.jpg', 53, '小天仙'),
(15, 'jsonxiaomili.txt', 'http://ws3.sinaimg.cn/large/005BYqpgly1g5zhi9g4mlj305c05c3z9.jpg', 55, '小米粒'),
(16, 'jsonyueman.txt', 'http://ws3.sinaimg.cn/large/005BYqpgly1g5zhjs8q0mj30280280sr.jpg', 58, '月漫'),
(17, 'jsonxiaohuaidan.txt', 'https://ws3.sinaimg.cn/large/005BYqpggy1g27xusrxupj30ks0m8mye.jpg', 57, '小坏蛋'),
(18, 'jsonhuaying.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g0ge0f8wh8j30e80e8dll.jpg', 44, '花影'),
(19, 'jsonpiaoxue.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g1r1ghplmcj303c03cq2v.jpg', 52, '飘雪'),
(20, 'jsonxiaogongzhu.txt', 'http://ws3.sinaimg.cn/large/005BYqpgly1g50ocvnjp9j30sg0sg179.jpg', 22, '小公主'),
(21, 'jsonkaluli.txt', 'https://ws3.sinaimg.cn/large/005BYqpggy1g1zwwpvkv2j30rs0rsn00.jpg', 42, '卡路里'),
(22, 'jsonfubao.txt', 'http://ww1.sinaimg.cn/large/0060lm7Tly1fpgvxskde1j302o02ojr7.jpg', 42, '付宝'),
(23, 'jsonxiaohuangshu.txt', 'http://ws3.sinaimg.cn/large/005BYqpgly1g5qcmswvttj30640640sy.jpg', 0, '小黄书'),
(24, 'jsonxiaoqingren.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g0fkejgu3tj305c05cq2v.jpg', 65, '小情人'),
(25, 'jsonersao.txt', 'http://ww2.sinaimg.cn/large/0060lm7Tly1fpgvx648ihj30mu0kz0tl.jpg', 67, '二嫂'),
(26, 'jsonhuaguoshan.txt', 'https://ws3.sinaimg.cn/large/005BYqpggy1g1zwxylk2yj3044044weg.jpg', 54, '花果山'),
(27, 'jsonyunlu.txt', 'http://ws3.sinaimg.cn/large/005BYqpgly1g3syzzg67hj30j70f5gp1.jpg', 47, '云鹿'),
(28, 'jsonxingbaobei.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g2bov2vpuvj302o02owe9.jpg', 50, '星宝贝'),
(29, 'jsonyeyan.txt', 'https://ws1.sinaimg.cn/large/0070NZDLgy1fpwds8swwhj302q02r74i.jpg', 56, '夜艳'),
(30, 'jsonlanguifang.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g2bot5m8k0j30io0f3jrq.jpg', 58, '兰桂坊'),
(31, 'jsonaike.txt', 'http://ww3.sinaimg.cn/large/87c01ec7gy1fs2fvatvwwj203c03cmxk.jpg', 76, '艾克'),
(32, 'jsonDancelife.txt', 'http://wx2.sinaimg.cn/mw690/0060lm7Tly1fw834mqtmbj30sg0sgjut.jpg', 54, 'Dancelife'),
(33, 'jsonhonggaoliang.txt', 'http://ws3.sinaimg.cn/large/005BYqpgly1g46bapwcrej3048048t8t.jpg', 101, '红高粱'),
(34, 'jsonxiaomengzhu.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g2bous7qzoj302801u0sj.jpg', 40, '小萌猪'),
(35, 'jsontaolu.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g2bou2h3e0j304g04gt8j.jpg', 54, '套路'),
(36, 'jsonhudiefei.txt', 'http://s.ssm001.com/hdf/logo.png', 142, '蝴蝶飞'),
(37, 'jsonyoumeng.txt', 'http://wx3.sinaimg.cn/mw690/0060lm7Tly1fupe5f1jjtj304103owee.jpg', 54, '幽梦'),
(38, 'jsonfanjiashequ.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g2boslpi3oj303m03mglh.jpg', 44, '番茄社区'),
(39, 'jsonliguiting.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g2botih48oj303y03ya9v.jpg', 51, '丽柜厅'),
(40, 'jsonhuafeizi.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g2botsx8kpj305c05cwee.jpg', 71, '花妃子'),
(41, 'jsonjiaolong.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g0fkf60294j305c05caa1.jpg', 50, '蛟龙'),
(42, 'jsonyanruyu.txt', 'https://ws3.sinaimg.cn/large/005BYqpggy1g1zx0py9qzj3040040aa1.jpg', 57, '颜如玉'),
(43, 'jsonchengxiu.txt', 'https://ws3.sinaimg.cn/large/005BYqpggy1g1zwxlsy33j30sg0sgtbh.jpg', 50, '橙秀'),
(44, 'jsonbaoyul.txt', 'https://ws3.sinaimg.cn/large/005BYqpggy1g1zwxb0jnxj30e80e80tk.jpg', 52, '豹娱l'),
(45, 'jsonxiaohualuo.txt', 'https://ws3.sinaimg.cn/large/005BYqpggy1g1anux5rrig30200200sj.jpg', 56, '小花螺'),
(46, 'jsonhuanghou.txt', 'https://ws3.sinaimg.cn/large/005BYqpgly1g1ansdwxtdj30dz0aagm0.jpg', 55, '皇后'),
(47, 'jsonxinzhilian.txt', 'https://ws3.sinaimg.cn/large/005BYqpggy1g1antliq3sj3042042glo.jpg', 24, '心之恋'),
(48, 'jsonmeiguoAM.txt', 'http://ww4.sinaimg.cn/large/87c01ec7gy1fr5cwlyeutj201u01c0si.jpg', 63, '美国AM'),
(49, 'jsonoumeiFEATURED.txt', 'http://wx3.sinaimg.cn/mw690/0060lm7Tly1fvjxt5tz3ij30a007imx6.jpg', 27, '欧美FEATURED'),
(50, 'jsonoumeiFEMALE.txt', 'http://wx3.sinaimg.cn/mw690/0060lm7Tly1fvjxt5tz3ij30a007imx6.jpg', 23, '欧美FEMALE'),
(51, 'jsonoumeiMALE.txt', 'http://wx3.sinaimg.cn/mw690/0060lm7Tly1fvjxt5tz3ij30a007imx6.jpg', 25, '欧美MALE'),
(52, 'jsonoumeiCOUPLE.txt', 'http://wx3.sinaimg.cn/mw690/0060lm7Tly1fvjxt5tz3ij30a007imx6.jpg', 26, '欧美COUPLE'),
(53, 'jsonoumeiTRANS.txt', 'http://wx3.sinaimg.cn/mw690/0060lm7Tly1fvjxt5tz3ij30a007imx6.jpg', 25, '欧美TRANS'),
(54, 'jsontaimeil.txt', 'https://ws3.sinaimg.cn/large/005BYqpggy1g1zwzmpi8qj303c03cjr7.jpg', 54, '台妹l'),
(55, 'jsonyumeng.txt', 'http://ww3.sinaimg.cn/large/87c01ec7gy1frc0qchto4j20e80e9wgd.jpg', 58, '欲梦'),
(56, 'jsonhuajian.txt', 'http://wx4.sinaimg.cn/mw690/0060lm7Tly1fwmqgltbsqj30e80e8wg0.jpg', 55, '花间'),
(57, 'jsonailian.txt', 'http://wx2.sinaimg.cn/mw690/0060lm7Tly1fwmqmf39xqj30sg0sgwij.jpg', 54, '爱恋'),
(58, 'json903yule.txt', 'http://wx3.sinaimg.cn/mw690/0060lm7Tly1fwmqvf02ijj30sg0sgwib.jpg', 49, '903娱乐'),
(59, 'jsondouyin.txt', 'http://wx1.sinaimg.cn/mw690/0060lm7Tly1fwmqq9l066j304p04jt8u.jpg', 0, '抖阴'),
(60, 'jsonjiuweihu.txt', 'http://wx2.sinaimg.cn/mw690/0060lm7Tly1fwmqo8bw08j30sg0sgn0s.jpg', 53, '九尾狐'),
(61, 'jsonyidianyuan.txt', 'https://i.loli.net/2018/10/02/5bb391102b037.png', 46, '伊甸园'),
(62, 'jsonxiaoying.txt', 'http://ww1.sinaimg.cn/large/87c01ec7gy1fsyulcw2g9j204602waa4.jpg', 42, '筱颖'),
(63, 'jsonxiaomifeng.txt', 'http://wx1.sinaimg.cn/mw690/0060lm7Tly1fucpl34v35j30500503zi.jpg', 54, '小蜜蜂'),
(64, 'jsonjiaomei.txt', 'http://wx2.sinaimg.cn/mw690/0060lm7Tly1fu14duxmp6j303y03f745.jpg', 53, '娇媚'),
(65, 'jsonhaojiyou.txt', 'https://i.loli.net/2018/07/20/5b51545cb1b3a.jpg', 66, '好基友'),
(66, 'jsonsky.txt', 'https://i.loli.net/2018/07/20/5b51519e4d777.jpg', 53, 'sky'),
(67, 'jsonjiaochuan.txt', 'https://i.loli.net/2018/07/24/5b56cab496d83.jpg', 56, '娇喘'),
(68, 'jsonmangguopai.txt', 'https://i.loli.net/2018/07/24/5b56e95dd5b47.jpg', 59, '芒果派'),
(69, 'jsontanke.txt', 'https://i.loli.net/2018/09/29/5baf97d97c118.png', 43, '坦克'),
(70, 'jsonyenulang.txt', 'http://wx2.sinaimg.cn/mw690/0060lm7Tly1fvjduokhnlj3050050dfv.jpg', 54, '夜女郎'),
(71, 'jsonmitao.txt', 'https://i.loli.net/2018/07/24/5b56cfeb2ce8c.jpg', 60, '蜜桃'),
(72, 'jsonjiudian.txt', 'https://i.loli.net/2018/09/09/5b9493dce8c83.jpg', 53, '九点'),
(73, 'jsonsequ.txt', 'http://wx1.sinaimg.cn/mw690/0060lm7Tly1fv0apoo8zuj3046046747.jpg', 64, '色趣'),
(74, 'jsonyouwudao.txt', 'http://wx1.sinaimg.cn/mw690/0060lm7Tly1fw834re2oxj30sg0sgtc3.jpg', 55, '尤物岛'),
(75, 'jsonmeiyan.txt', 'http://ww2.sinaimg.cn/large/87c01ec7gy1fqi4hjn11nj2040040t8x.jpg', 18, '媚颜'),
(76, 'jsonyelaixiang.txt', 'http://ww2.sinaimg.cn/large/87c01ec7gy1fqi4lcae2fj204g04gwej.jpg', 15, '夜来香'),
(77, 'jsonfengliu.txt', 'https://i.loli.net/2018/07/24/5b56c3f1b8562.jpg', 32, '风流'),
(78, 'jsonyelu.txt', 'http://ww4.sinaimg.cn/large/0060lm7Tly1fobhirdep9j303c03cwec.jpg', 18, '夜律'),
(79, 'jsonlinglong.txt', 'http://ww1.sinaimg.cn/large/87c01ec7gy1ft3n1upwrrj2055046glp.jpg', 23, '玲珑'),
(80, 'jsonyuhuo.txt', 'https://i.loli.net/2018/07/20/5b515f91ad065.jpg', 37, '浴火'),
(81, 'jsoncuiniao.txt', 'http://wx4.sinaimg.cn/mw690/0060lm7Tly1fucnaos2wgj305004dwef.jpg', 44, '翠鸟'),
(82, 'jsonxingyunxing.txt', 'https://i.loli.net/2018/07/20/5b515be78268e.jpg', 37, '幸运星'),
(83, 'jsontaxiu.txt', 'http://ww2.sinaimg.cn/large/87c01ec7gy1fs8gcg0bbbj204i03la9x.jpg', 20, '她秀'),
(84, 'jsonzhaocaimao.txt', 'http://ww4.sinaimg.cn/large/87c01ec7gy1fs2fcicv7tj205c05cwei.jpg', 19, '招财猫'),
(85, 'jsonshuangdie.txt', 'http://ww2.sinaimg.cn/large/87c01ec7gy1fs8g1ra45ij204l03nt8i.jpg', 25, '双碟'),
(86, 'jsontangguo.txt', 'https://i.loli.net/2018/07/20/5b5159200c8ec.jpg', 39, '糖果'),
(87, 'jsonmemeda.txt', 'https://i.loli.net/2018/07/31/5b5fdbe25edb2.jpg', 50, '么么哒'),
(88, 'jsonxiaoxinggan.txt', 'https://i.loli.net/2018/07/31/5b5fdc32c6887.jpg', 50, '小性感'),
(89, 'jsonxiaomiaochong.txt', 'https://i.loli.net/2018/07/31/5b5fdc225c7a3.jpg', 63, '小喵宠'),
(90, 'jsontunulang.txt', 'http://wx4.sinaimg.cn/mw690/0060lm7Tly1fucolzj7avj303y03pmx2.jpg', 59, '兔女郎'),
(91, 'jsonshuimeiren.txt', 'https://i.loli.net/2018/07/14/5b49bc21c28bb.jpg', 46, '睡美人'),
(92, 'jsonjinbei.txt', 'http://wx1.sinaimg.cn/mw690/0060lm7Tly1fr222o0cg8j30ku0kuwei.jpg', 50, '金呗'),
(93, 'jsonmeixi.txt', 'https://i.loli.net/2018/07/20/5b5156bb79432.jpg', 58, '美夕'),
(94, 'jsonxiaoyao.txt', 'http://wx4.sinaimg.cn/mw690/0060lm7Tly1fv0bd2efh3j30e80e8wel.jpg', 59, '小妖'),
(95, 'jsonyuezhibo.txt', 'https://i.loli.net/2018/07/14/5b49bf9314319.jpg', 57, '约直播'),
(96, 'jsonhuaxianzi.txt', 'http://ww3.sinaimg.cn/large/87c01ec7gy1fr0tcmjjhmj20dw0dwjs7.jpg', 62, '花仙子'),
(97, 'jsontuhao.txt', 'http://ww3.sinaimg.cn/large/87c01ec7gy1fqklayx7c2j203d023jr7.jpg', 18, '土豪'),
(98, 'jsonhongzhuang.txt', 'http://ww1.sinaimg.cn/large/87c01ec7gy1fs8em07lktj204f03umwz.jpg', 52, '红妆'),
(99, 'jsonniuniu.txt', 'http://wx2.sinaimg.cn/mw690/0060lm7Tly1fu13kpidboj3048044a9z.jpg', 49, '妞妞'),
(100, 'jsonyanhou.txt', 'http://wx4.sinaimg.cn/mw690/0060lm7Tly1fw84rcmgwsj30sg0sg77i.jpg', 50, '艳后'),
(101, 'jsonmengmei.txt', 'http://ww1.sinaimg.cn/large/87c01ec7gy1ft3nd13150j204e03waa4.jpg', 54, '萌妹'),
(102, 'jsonsile.txt', 'https://i.loli.net/2018/07/31/5b5fdc126ff21.jpg', 54, '思乐'),
(103, 'jsonmoon.txt', 'http://wx1.sinaimg.cn/mw690/0060lm7Tly1fu0zi4g62qj303n03bq2s.jpg', 56, 'moon'),
(104, 'jsonxiaomimei.txt', 'http://wx1.sinaimg.cn/mw690/0060lm7Tly1fucqv57l1jj30xo0xt7lv.jpg', 56, '小迷妹'),
(105, 'jsonshuangyue.txt', 'http://wx3.sinaimg.cn/mw690/0060lm7Tly1fv5w4qfowmj30e80e8q68.jpg', 45, '爽约'),
(106, 'jsontianmi.txt', 'http://wx1.sinaimg.cn/mw690/0060lm7Tly1fu6oziazuuj303y03tmx1.jpg', 38, '甜咪'),
(107, 'jsonlanmao.txt', 'http://wx1.sinaimg.cn/mw690/0060lm7Tly1fu6uak5s6zj308c08c762.jpg', 54, '蓝猫'),
(108, 'jsonmeirenzhuang.txt', 'https://i.loli.net/2018/07/31/5b5fdbf439dd2.jpg', 48, '美人妆'),
(109, 'jsonruxiang.txt', 'http://ww3.sinaimg.cn/large/87c01ec7gy1fsop2jy4klj206o05kwf7.jpg', 56, '入巷'),
(110, 'jsonchijiunan.txt', 'http://wx2.sinaimg.cn/mw690/0060lm7Tly1fqi3dtothcj305c05cjrp.jpg', 49, '持久男'),
(111, 'jsonqingxin.txt', 'http://ww2.sinaimg.cn/large/87c01ec7gy1fse1yr65esj204u04qjs2.jpg', 52, '倾心'),
(112, 'jsonxiaojingling.txt', 'https://i.loli.net/2018/07/14/5b49b3a7d0e0a.jpg', 57, '小精灵'),
(113, 'jsonwoniu.txt', 'https://i.loli.net/2018/07/14/5b49afc0f40ae.jpg', 64, '蜗牛'),
(114, 'jsonouyu.txt', 'https://i.loli.net/2018/07/14/5b4990d0c7a90.jpg', 44, '偶遇'),
(115, 'jsonhuihui.txt', 'https://i.loli.net/2018/07/14/5b496a7b3719e.jpg', 46, '灰灰'),
(116, 'jsonmaotouying.txt', 'https://i.loli.net/2018/07/14/5b498cb385a08.jpg', 56, '猫头鹰'),
(117, 'jsonxihuanni.txt', 'https://i.loli.net/2018/07/14/5b49b93ecb51a.jpg', 48, '喜欢你'),
(118, 'jsonxiaomonu.txt', 'http://ww3.sinaimg.cn/large/87c01ec7gy1fsyt9hwylrj207g05s3yl.jpg', 46, '小魔女'),
(119, 'jsonqixiannu.txt', 'http://ww4.sinaimg.cn/large/87c01ec7gy1fsyubbc8vrj205g047dga.jpg', 70, '七仙女'),
(120, 'jsonjiatelin.txt', 'http://ww2.sinaimg.cn/large/87c01ec7gy1fsytzgfhqaj206f04mwfg.jpg', 50, '加特林'),
(121, 'jsonyechun.txt', 'http://ww1.sinaimg.cn/large/87c01ec7gy1fsytlbmap3j205p05g0su.jpg', 51, '夜纯'),
(122, 'jsonxingbo.txt', 'http://wx3.sinaimg.cn/mw690/0060lm7Tly1fq6xvf6ufoj305c05cjry.jpg', 57, '杏播'),
(123, 'jsonmingliu.txt', 'http://ww1.sinaimg.cn/large/87c01ec7gy1fs1spk8jkoj204u0433ye.jpg', 44, '名流'),
(124, 'jsonxiaolajiao.txt', 'http://ww4.sinaimg.cn/large/87c01ec7gy1fsos1z1qhhj205j04bq30.jpg', 39, '小辣椒'),
(125, 'jsonwenxiangshe.txt', 'http://ww1.sinaimg.cn/large/87c01ec7gy1fsoqb5ffq4j2064052mxe.jpg', 51, '蚊香社'),
(126, 'jsonqianshou.txt', 'http://ww4.sinaimg.cn/large/87c01ec7gy1fsool1hakbj205v053gn1.jpg', 59, '牵手'),
(127, 'jsonqingqu.txt', 'http://wx1.sinaimg.cn/mw690/0060lm7Tly1fu11evou6aj303d03cwec.jpg', 46, '情趣'),
(128, 'jsonlanyueliang.txt', 'http://wx1.sinaimg.cn/mw690/0060lm7Tly1fu6svpgz93j304q0440sl.jpg', 52, '蓝月亮'),
(129, 'jsonfengkuang.txt', 'http://ww1.sinaimg.cn/large/87c01ec7gy1fsk4j4mbwqj206n05dmxj.jpg', 48, '疯狂'),
(130, 'jsonzhuoyao.txt', 'https://i.loli.net/2018/05/29/5b0cfbe9e606d.jpg', 49, '捉妖'),
(131, 'jsonyile.txt', 'https://i.loli.net/2018/05/29/5b0cff1f739dd.jpg', 44, '伊乐'),
(132, 'jsonlaosiji.txt', 'https://i.loli.net/2018/09/10/5b954e2d7f39b.png', 47, '老司机');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
