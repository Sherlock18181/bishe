/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : spbootpet13135jsfkcyy

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2022-05-04 23:49:29
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cx` varchar(50) NOT NULL COMMENT '权限',
  `username` varchar(50) NOT NULL COMMENT '帐号',
  `pwd` varchar(128) NOT NULL COMMENT '密码',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `shouji` varchar(50) NOT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', '管理员', 'admin', '$2y$10$AXGXzge1VW1dcVF.cJHdvufPnFIJkgS8h13XedMIS/DcSqGEmkHR.', '张三', '13800138001');
INSERT INTO `admins` VALUES ('2', '教练', '111', '$2a$10$4AQ0AofyijmuhtDsNdKa5ug8d8wBkFlgJEl4/jzTnwFfc.VO9xQba', '李萱', '13800138006');
INSERT INTO `admins` VALUES ('3', '教练', '222', '$2a$10$MdouL8IKV4LnFuDCKXEzuO6LOh6Hrc2N8q1.gCcy4KtLQILWyPcVS', '王静', '13800138003');
INSERT INTO `admins` VALUES ('4', '教练', '333', '$2a$10$CFJMZXSuMmT6bmQchHo/MeDABA7l3pTUaPWs.rYUoRjGAWt8qmws2', '刘好', '13800138008');

-- ----------------------------
-- Table structure for `bmizhi`
-- ----------------------------
DROP TABLE IF EXISTS `bmizhi`;
CREATE TABLE `bmizhi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `riqi` varchar(25) NOT NULL COMMENT '日期',
  `shengao` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '身高',
  `tizhong` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '体重',
  `bmizhi` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'BMI值',
  `tianjiaren` varchar(50) NOT NULL COMMENT '添加人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='BMI值';

-- ----------------------------
-- Records of bmizhi
-- ----------------------------
INSERT INTO `bmizhi` VALUES ('1', '2022-05-04', '165.00', '125.00', '45.91', '1');
INSERT INTO `bmizhi` VALUES ('2', '2022-05-05', '130.00', '135.00', '79.88', '1');
INSERT INTO `bmizhi` VALUES ('3', '2022-05-04', '175.00', '130.00', '42.45', '1');

-- ----------------------------
-- Table structure for `changguan`
-- ----------------------------
DROP TABLE IF EXISTS `changguan`;
CREATE TABLE `changguan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) NOT NULL COMMENT '编号',
  `changguanmingcheng` varchar(255) NOT NULL COMMENT '场馆名称',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `xiangqing` longtext NOT NULL COMMENT '详情',
  `tianjiaren` varchar(50) NOT NULL COMMENT '添加人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='场馆';

-- ----------------------------
-- Records of changguan
-- ----------------------------
INSERT INTO `changguan` VALUES ('1', '050422484621', '1号场馆', '/upload/7c3383d5d244486cbea18f659e366fb2.png', '<div class=\"para\" data-pid=\"4\">健身房的健身器多达近百种<sup class=\"sup--normal\" data-sup=\"4\" data-ctrmap=\":4,\">&nbsp;[4]</sup><a class=\"sup-anchor\" name=\"ref_[4]_63939\"></a>&nbsp;&nbsp;，但归纳起来，大致可分为三种类型<sup class=\"sup--normal\" data-sup=\"2\" data-ctrmap=\":2,\">&nbsp;[2]</sup><a class=\"sup-anchor\" name=\"ref_[2]_63939\"></a>&nbsp;&nbsp;：</div>\n<div class=\"para\" data-pid=\"5\">①全身性健身器械：如10项综合训练器、家用16功能健身器等<sup class=\"sup--normal\" data-sup=\"2\" data-ctrmap=\":2,\">&nbsp;[2]</sup><a class=\"sup-anchor\" name=\"ref_[2]_63939\"></a>&nbsp;&nbsp;；</div>\n<div class=\"para\" data-pid=\"6\">②局部性健身器械：如健身自行车、<a href=\"https://baike.baidu.com/item/%E5%88%92%E8%88%B9%E5%99%A8\" target=\"_blank\" rel=\"noopener\">划船器</a>、楼梯机、<a href=\"https://baike.baidu.com/item/%E8%B7%91%E6%AD%A5%E6%9C%BA\" target=\"_blank\" rel=\"noopener\">跑步机</a>，以及小腿弯举器、重锤<a href=\"https://baike.baidu.com/item/%E6%8B%89%E5%8A%9B%E5%99%A8\" target=\"_blank\" rel=\"noopener\">拉力器</a>、提踵练习器等<sup class=\"sup--normal\" data-sup=\"2\" data-ctrmap=\":2,\">&nbsp;[2]</sup><a class=\"sup-anchor\" name=\"ref_[2]_63939\"></a>&nbsp;&nbsp;；</div>\n<div class=\"para\" data-pid=\"7\">③小型健身器械：如人们所熟知的<a href=\"https://baike.baidu.com/item/%E5%93%91%E9%93%83\" target=\"_blank\" rel=\"noopener\">哑铃</a>、<a href=\"https://baike.baidu.com/item/%E5%A3%B6%E9%93%83\" target=\"_blank\" rel=\"noopener\">壶铃</a>、<a href=\"https://baike.baidu.com/item/%E6%9B%B2%E6%9F%84%E6%9D%A0%E9%93%83\" target=\"_blank\" rel=\"noopener\">曲柄杠铃</a>、<a href=\"https://baike.baidu.com/item/%E5%BC%B9%E7%B0%A7%E6%8B%89%E5%8A%9B%E5%99%A8\" target=\"_blank\" rel=\"noopener\">弹簧拉力器</a>、健身盘、弹力棒、<a href=\"https://baike.baidu.com/item/%E6%8F%A1%E5%8A%9B%E5%99%A8\" target=\"_blank\" rel=\"noopener\">握力器</a>等。<sup class=\"sup--normal\" data-sup=\"2\" data-ctrmap=\":2,\">&nbsp;[2]</sup><a class=\"sup-anchor\" name=\"ref_[2]_63939\"></a>&nbsp;</div>\n<div class=\"para\" data-pid=\"7\">&nbsp;</div>\n<div class=\"para\" data-pid=\"7\">\n<div class=\"para\" data-pid=\"9\"><strong>（一）全身性</strong></div>\n<div class=\"para\" data-pid=\"10\">属综合性训练器械；可供多人同时在一个器械上进行循环性或选择性练习。这种健身器械体积较大，功能较全，价格不菲，适合健美中心、康复中心及机关或学校健身房使用。应该说明的是，诸如多功能跑步机虽属全身性的健身器械，但它只是在单功能跑步机的基础上增加了划船、蹬车、<a href=\"https://baike.baidu.com/item/%E4%BF%AF%E5%8D%A7%E6%92%91\" target=\"_blank\" rel=\"noopener\">俯卧撑</a>、腰部旋转、按摩等功能，所以体积并不很大，同样适合家庭健身房。</div>\n<div class=\"para\" data-pid=\"11\"><strong>（二）局部性</strong></div>\n<div class=\"para\" data-pid=\"12\">\n<div class=\"lemma-picture J-lemma-picture text-pic layout-right\">&nbsp;</div>\n多属专项训练器械，结构小巧，占地1平方米左右，多数能折叠，有的还兼具趣味性。其功能相对单一，主要侧重局部肌群的锻炼。此类器械既有以配重砝码、液压拉缸为重载的力量型，也有以自身为动力的非力量型，无需拆装组合。有的还配有时间、速度、距离、心率等电子显示装置，使锻炼者可以自己掌握运动量。因此，颇受健身爱好者的青睐，是家庭健身房的&ldquo;主角&rdquo;。<sup class=\"sup--normal\" data-sup=\"1\" data-ctrmap=\":1,\">&nbsp;[1]</sup><a class=\"sup-anchor\" name=\"ref_[1]_63939\"></a>&nbsp;</div>\n<div class=\"para\" data-pid=\"13\"><strong>（三）小型器械</strong></div>\n<div class=\"para\" data-pid=\"14\">体积虽小，可锻炼价值并不低。以可调式哑铃为例，它不仅适合不同年龄、性别和体质的人进行练习，而且可以使全身各部肌肉得到锻炼，更是健美爱好者的必备器械。再比如弹簧拉力器，轻便小巧，价格低廉，既便于存放，又易于携带；同样能达到健身强体的目的。而像健身球一类的小型健身器，则最适合中老年人使用。</div>\n</div>', 'admin');
INSERT INTO `changguan` VALUES ('2', '050422502195', '2号场馆', '/upload/deac6004cfba4099ad70df997ba0fbbf.png', '<div class=\"para\" data-pid=\"17\">GB/T18266的本部分规定了健身房的分等定级原则及评定方法。</div>\n<div class=\"para\" data-pid=\"18\">本部分适用于各类开业一年以上健身中心、健身会所、健身健美俱乐部、健身健美培训学校等健身房的等级划分及评定。</div>\n<div class=\"anchor-list \"><a class=\"lemma-anchor para-title\" name=\"3_2\"></a><a class=\"lemma-anchor \" name=\"sub63939_3_2\"></a><a class=\"lemma-anchor \" name=\"规范文件\"></a><a class=\"lemma-anchor \" name=\"3-2\"></a></div>\n<div class=\"para-title level-3  \" data-index=\"3_2\" data-pid=\"19\">\n<h3 class=\"title-text\">规范文件</h3>\n</div>\n<div class=\"para\" data-pid=\"20\">下列文件中的条款通过GB/T18266的本部分的引用而成为本部分的条款。凡是注日期的引用文件，其随后所有的修改单（不包括勘误的内容）或修订版均不适用于本部分，然而，鼓励根据本部分达成协议的各方研究是否可使用这些文件的最新版本。凡是不注日期的引用文件，其最新版本适用于本部分。</div>\n<div class=\"para\" data-pid=\"21\">GB3096&nbsp;<a href=\"https://baike.baidu.com/item/%E5%9F%8E%E5%B8%82%E5%8C%BA%E5%9F%9F%E7%8E%AF%E5%A2%83%E5%99%AA%E5%A3%B0%E6%A0%87%E5%87%86/2420721\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"2420721\">城市区域环境噪声标准</a></div>\n<div class=\"para\" data-pid=\"22\">GB9668 体育馆卫生标准</div>\n<div class=\"para\" data-pid=\"23\">GB10001.l 标志用公共信息图形符号 第1部分：通用符号</div>\n<div class=\"para\" data-pid=\"24\">GB17498 健身器材的安全通用要求</div>\n<div class=\"anchor-list \"><a class=\"lemma-anchor para-title\" name=\"3_3\"></a><a class=\"lemma-anchor \" name=\"sub63939_3_3\"></a><a class=\"lemma-anchor \" name=\"星级划分\"></a><a class=\"lemma-anchor \" name=\"3-3\"></a></div>\n<div class=\"para-title level-3  \" data-index=\"3_3\" data-pid=\"25\">\n<h3 class=\"title-text\">星级划分</h3>\n</div>\n<div class=\"para\" data-pid=\"26\">4.1 健身房划分为五个星级，即五星级、四星级、三星级、二星级、一星级。最高星级为五星级，最低星级为一星级。星级越高，表示健身房的级别越高。GB/T18266的本部分的标识按有关标识的标准执行。</div>\n<div class=\"para\" data-pid=\"27\">4.2 星级的划分以健身房的清洁卫生、环境与安全救护、设备设施及维护保养、服务水平为依据，具体的评定办法按照国家体育行政主管部门颁布的设施设备评定标准、设施设备的维修保养评定标准、清洁卫生评定标准、服务质量评定标准、顾客意见评定标准等五项标准执行。</div>\n<div class=\"anchor-list \"><a class=\"lemma-anchor para-title\" name=\"3_4\"></a><a class=\"lemma-anchor \" name=\"sub63939_3_4\"></a><a class=\"lemma-anchor \" name=\"规格要求\"></a><a class=\"lemma-anchor \" name=\"3-4\"></a></div>\n<div class=\"para-title level-3  \" data-index=\"3_4\" data-pid=\"28\">\n<h3 class=\"title-text\">规格要求</h3>\n</div>\n<div class=\"para\" data-pid=\"29\">健身房的建筑、附属设施和运行管理应符合国家颁布的有关消防、安全、卫生、环境保护等现行法规和标准的要求。</div>\n<div class=\"para\" data-pid=\"30\">1 服务人员从业资格要求。</div>\n<div class=\"para\" data-pid=\"31\">1 健身房从业人员必须持证上岗。</div>\n<div class=\"para\" data-pid=\"32\">\n<div class=\"lemma-picture J-lemma-picture text-pic layout-right\">&nbsp;</div>\n2 不同星级健身房<a href=\"https://baike.baidu.com/item/%E7%A4%BE%E4%BC%9A%E4%BD%93%E8%82%B2%E6%8C%87%E5%AF%BC%E5%91%98/3370427\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"3370427\">社会体育指导员</a>配比：五星级配备的社会体育指导师（健身类或健美操类）人数不得少于挂牌上岗总人数的50%（且不少于4人）；四星级配备的社会体育指导师（健身类或健美操类）不得少于挂牌上岗总人数的30%（且不少于2人）；三星级配备高级社会体育指导员（健身类或健美操类）人数不得少于挂牌上岗总人数的50%（且不少于3人）；二星级配备中级社会体育指导员（健身类或健美操类）人数不得少于挂牌上岗总人数的50%（且不少于2人）。一星级的挂牌上岗指导员必须为初级以上 （含初级）社会体育指导员（健身类或健美操类）。</div>', 'admin');
INSERT INTO `changguan` VALUES ('3', '050422504667', '3号场馆', '/upload/a1b32674f7cb4c968bffe6a5875d5c80.png', '<div class=\"para\" data-pid=\"35\">这个时段是一天中健身房人流最多的时候，选择这个时间去实地考察，对健身房的人流量、健身氛围、空气质量、场地整洁程度、锻炼空间是否充足、健身设施是否够用等细节都会有一个比较直观的了解。</div>\n<div class=\"para\" data-pid=\"36\"><strong>地理位置：</strong>坐车要方便，车程在20分钟以内为宜</div>\n<div class=\"para\" data-pid=\"37\">选离家近的健身房，这样有利于坚持持续自己的健身计划。坐车要方便，有车族要注意是否有足够的车位。另外，通风好、能保证空气质量是健身房的基本条件，尽量不选在地下室的健身房。</div>\n<div class=\"para\" data-pid=\"38\"><strong>健身环境：</strong>好的环境能有好的心情</div>\n<div class=\"para\" data-pid=\"39\">\n<div class=\"lemma-picture J-lemma-picture text-pic layout-right\">&nbsp;</div>\n健身环境主要根据健身房的空间大小，合理的区域功能划分及布局，现代化的装修，通风条件，场地器械的维护保养及干净卫生程度等进行选择。专业健身房含有氧健身区、抗阻力力量训练区（无氧区）、组合器械训练区、趣味健身区、操课房、瑜伽房、体能测试室、男女更衣室及淋浴区、会员休息区等区域功能。</div>\n<div class=\"para\" data-pid=\"40\"><strong>空气质量：</strong>健身房的基本保证</div>\n<div class=\"para\" data-pid=\"41\">一个好的健身房首先保证锻炼人员对空气的需求，没有人愿意将自己的健康交给一个空气质量都无法得到保证的健身房，这样对健身不但没有保证，还会产生副作用。是否有良好的通风换气设施，是否设置绿色盆景，有无空气净化设施使之干净、清新等。</div>\n<div class=\"para\" data-pid=\"42\"><strong>卫生程度：</strong>对自身健康的要求</div>\n<div class=\"para\" data-pid=\"43\">专业健身房属于公共娱乐健身场所，卫生程度肯定要到位。是否经常有对公用的健身器材进行清洁、维护和保养，是否有消毒水、毛巾等清洁用品，公共环境是否干净、整洁，健身器材是否残留汗渍污渍等，更衣室是否整洁，淋浴区是否干净，拖鞋等公用设施是否清洗消毒等。</div>', 'admin');
INSERT INTO `changguan` VALUES ('4', '050422511156', '4号场馆', '/upload/71d1d34370ed46d58ea1b42e7090030a.png', '<div class=\"para\" data-pid=\"45\">专业健身会所的大部分投资应该在健身器械上，好的健身器材能让使用者正确掌握锻炼和得到有效的保护，减少<a href=\"https://baike.baidu.com/item/%E8%BF%90%E5%8A%A8%E6%8D%9F%E4%BC%A4/3438652\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"3438652\">运动损伤</a>。器械无破损，可正常使用，能针对性的，全方位的锻炼到身体的各个部位，使身体更匀称，线条更优美。&ldquo;好&rdquo;是为了达到更好的锻炼效果；&ldquo;多&rdquo;是为了有足够的运动空间，不至于排队和等待；&ldquo;全&rdquo;是为了使身体得到更全面科学的锻炼。</div>\n<div class=\"para\" data-pid=\"46\"><strong>服务设施：</strong>具备配套完善的服务设施</div>\n<div class=\"para\" data-pid=\"47\">专业的健身俱乐部都会配有冷热水淋浴区，更衣柜。高档健身俱乐部会提供会员休息区，报刊、杂志阅读，洗发水、沐浴露、浴巾等洗浴用品，提供免费的上网、停车服务，拥有营养水吧服务台等。</div>\n<div class=\"para\" data-pid=\"48\"><strong>健身教练：</strong>专业的私人健身教练</div>\n<div class=\"para\" data-pid=\"49\">健身房都配备有巡场教练和私人教练。巡场教练可以在你锻炼时提供免费帮助和指导，也负责应对各种突发情况。私人教练是一对一给会员上课，其收费一般单独计算，并未包含在年卡内。如果是专业的私人教练，在初次训练时，一定会给你做一个全面的身体评估。</div>\n<div class=\"para\" data-pid=\"50\"><strong>课程设置：</strong>看是否丰富，有无额外收费</div>\n<div class=\"para\" data-pid=\"51\">如果你想参加瑜伽、动感单车、搏击等课程，就要注意：有些课程需要单独收费，要事先了解清楚。每个月，健身房都会出一张详细的课程表，看看课程时间是否跟自己的时间相吻合。</div>\n<div class=\"para\" data-pid=\"52\"><strong>服务项目：</strong>价格合理<sup class=\"sup--normal\" data-sup=\"1\" data-ctrmap=\":1,\">&nbsp;[1]</sup><a class=\"sup-anchor\" name=\"ref_[1]_63939\"></a>&nbsp;</div>\n<div class=\"para\" data-pid=\"53\">大多数健身房提供训练时的饮用水，不提供饮用水的需要看一下前台出售的各种饮料是否价格合理。还要看看储藏柜是否安全及空间是否充足，贵重物品能否寄存前台。值得注意的是，有的健身年卡中包含一个<a href=\"https://baike.baidu.com/item/%E5%82%A8%E7%89%A9%E6%9F%9C\" target=\"_blank\" rel=\"noopener\">储物柜</a>的年租金，有的则另外收费，而且价格不菲。</div>\n<div class=\"para\" data-pid=\"54\"><strong>健身器械：</strong>数量够多，够全</div>\n<div class=\"para\" data-pid=\"55\">力量器械应包括卧推架、深蹲架、龙门架、重量大小不等的哑铃和杠铃等。有氧器械有单车、跑步机等。特别要留意一下跑步机等基本器械是否存在严重的排队现象。</div>', 'admin');

-- ----------------------------
-- Table structure for `kecheng`
-- ----------------------------
DROP TABLE IF EXISTS `kecheng`;
CREATE TABLE `kecheng` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) NOT NULL COMMENT '编号',
  `kechengmingcheng` varchar(255) NOT NULL COMMENT '课程名称',
  `leixing` int(10) unsigned NOT NULL COMMENT '类型',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `kechengxiangqing` longtext NOT NULL COMMENT '课程详情',
  `tianjiaren` varchar(50) NOT NULL COMMENT '添加人',
  PRIMARY KEY (`id`),
  KEY `kecheng_leixing_index` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='课程';

-- ----------------------------
-- Records of kecheng
-- ----------------------------
INSERT INTO `kecheng` VALUES ('1', '050422548954', '瑜伽课程', '3', '/upload/0d0161c71cd64fdf80ea021237ed0006.png', '<div class=\"para\" data-pid=\"1\">瑜伽（英文：Yoga，<a href=\"https://baike.baidu.com/item/%E5%8D%B0%E5%9C%B0%E8%AF%AD/1192255\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"1192255\">印地语</a>：योग）是一个汉语词汇，最早是从<a href=\"https://baike.baidu.com/item/%E5%8D%B0%E5%BA%A6/121904\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"121904\">印度</a>梵语&ldquo;yug&rdquo;或&ldquo;yuj&rdquo;而来，其含意为&ldquo;一致&rdquo;、&ldquo;结合&rdquo;或&ldquo;<a href=\"https://baike.baidu.com/item/%E5%92%8C%E8%B0%90/367850\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"367850\">和谐</a>&rdquo;。瑜伽源于<a href=\"https://baike.baidu.com/item/%E5%8F%A4%E5%8D%B0%E5%BA%A6/884824\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"884824\">古印度</a>，是古印度六大哲学派别中的一系，探寻&ldquo;<a href=\"https://baike.baidu.com/item/%E6%A2%B5%E6%88%91%E5%90%88%E4%B8%80/378232\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"378232\">梵我合一</a>&rdquo;的道理与方法。而现代人所称的瑜伽则主要是一系列的修身<a href=\"https://baike.baidu.com/item/%E5%85%BB%E5%BF%83/690879\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"690879\">养心</a>方法。</div>\n<div class=\"para\" data-pid=\"2\">大约在公元前300年，印度的大圣哲瑜伽之祖<a href=\"https://baike.baidu.com/item/%E5%B8%95%E5%9D%A6%E4%BC%BD%E5%88%A9/3535545\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"3535545\">帕坦伽利</a>（英文：Patanjali，<a href=\"https://baike.baidu.com/item/%E5%8D%B0%E5%9C%B0%E8%AF%AD/1192255\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"1192255\">印地语</a>：पतंजलि）创作了《<a href=\"https://baike.baidu.com/item/%E7%91%9C%E4%BC%BD%E7%BB%8F/9792339\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"9792339\">瑜伽经</a>》，<a href=\"https://baike.baidu.com/item/%E5%8D%B0%E5%BA%A6%E7%91%9C%E4%BC%BD/6680011\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"6680011\">印度瑜伽</a>在其基础上才真正成形，瑜伽行法被正式订为完整的八支体系。瑜伽是一个通过提升意识，帮助<a href=\"https://baike.baidu.com/item/%E4%BA%BA%E7%B1%BB/31910\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"31910\">人类</a>充分发挥<a href=\"https://baike.baidu.com/item/%E6%BD%9C%E8%83%BD/981669\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"981669\">潜能</a>的体系。</div>\n<div class=\"para\" data-pid=\"3\">瑜伽姿势运用古老而易于掌握的技巧，<a href=\"https://baike.baidu.com/item/%E6%94%B9%E5%96%84/11014764\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"11014764\">改善</a>人们<a href=\"https://baike.baidu.com/item/%E7%94%9F%E7%90%86/185759\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"185759\">生理</a>、心理、<a href=\"https://baike.baidu.com/item/%E6%83%85%E6%84%9F/189257\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"189257\">情感</a>和精神方面的能力，是一种达到身体、心灵与精神和谐统一的运动方式，包括调身的体位法、调息的呼吸法、调心的<a href=\"https://baike.baidu.com/item/%E5%86%A5%E6%83%B3/35985\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"35985\">冥想</a>法等，以达至身心的合一。</div>\n<div class=\"para\" data-pid=\"4\">瑜伽是一项有着5000年历史的关于身体、心理以及精神的练习，起源于印度，其目的是改善身体和心性。2014年12月11日，联大宣布6月21日为<a href=\"https://baike.baidu.com/item/%E5%9B%BD%E9%99%85%E7%91%9C%E4%BC%BD%E6%97%A5/15848486\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"15848486\">国际瑜伽日</a>，2015年举办了首届<a href=\"https://baike.baidu.com/item/6.21%E5%9B%BD%E9%99%85%E7%91%9C%E4%BC%BD%E6%97%A5/17821419\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"17821419\">6.21国际瑜伽日</a>。</div>\n<div class=\"para\" data-pid=\"4\">&nbsp;</div>\n<div class=\"para\" data-pid=\"4\">瑜伽起源于印度，距今有五千多年的历史文化被人们称为&ldquo;世界的瑰宝&rdquo;。瑜伽发源印度北部的<a href=\"https://baike.baidu.com/item/%E5%96%9C%E9%A9%AC%E6%8B%89%E9%9B%85%E5%B1%B1\" target=\"_blank\" rel=\"noopener\">喜马拉雅山</a>麓地带。古印度瑜伽修行者根据动物的姿势观察、模仿并亲自体验，创立出一系列有益身心的锻炼系统，也就是体位法。</div>', '111');
INSERT INTO `kecheng` VALUES ('2', '050422559653', '立体瑜伽', '3', '/upload/f9731691202e4afc8035cad90866e659.png', '<div class=\"para\" data-pid=\"8\">&ldquo;瑜伽&rdquo;（英文：Yoga，印地语）这个词，是从<a href=\"https://baike.baidu.com/item/%E5%8D%B0%E5%BA%A6\" target=\"_blank\" rel=\"noopener\">印度</a>梵语&ldquo;yug&rdquo;或&ldquo;yuj&rdquo;而来，其含意为&ldquo;一致&rdquo;、&ldquo;结合&rdquo;或&ldquo;和谐&rdquo;。瑜伽源于古印度，是古印度六大哲学派别中的一系，探寻&ldquo;梵我合一&rdquo;的道理与方法。而现代人所称的瑜伽则是主要是一系列的修身养心方法。大约在公元前300年，印度的大圣哲瑜伽之祖帕坦伽利（英文：Patanjali，<a href=\"https://baike.baidu.com/item/%E5%8D%B0%E5%9C%B0%E8%AF%AD\" target=\"_blank\" rel=\"noopener\">印地语</a>）创作了《瑜伽经》，印度瑜伽在其基础上才真正成形，瑜伽行法被正式订为完整的八支体系。瑜伽是一个通过提升意识，帮助人类充分发挥潜能的体系。瑜伽姿势运用古老而易于掌握的技巧，改善人们生理、心理、情感和精神方面的能力，是一种达到身体、心灵与精神和谐统一的运动方式，包括调身的体位法、调息的呼吸法、调心的冥想法等，以达至身心的合一。</div>\n<div class=\"para\" data-pid=\"9\">关于瑜伽的记载最早出现在《<a href=\"https://baike.baidu.com/item/%E5%90%A0%E9%99%80%E7%BB%8F\" target=\"_blank\" rel=\"noopener\">吠陀经</a>》的印度经文中，大约在公元前300年时，瑜伽之祖<strong><a href=\"https://baike.baidu.com/item/%E5%B8%95%E5%9D%A6%E4%BC%BD%E5%88%A9\" target=\"_blank\" rel=\"noopener\">帕坦伽利</a></strong>在<strong>《</strong>瑜伽经》中阐明了使身体健康、精神充实的修炼课程，这门课程被其系统化和规范化，构成当代瑜伽修炼的基础。帕坦伽利提出的哲学原理被公认为是通往瑜伽精神境界的里程碑。</div>\n<div class=\"anchor-list \"><a class=\"lemma-anchor para-title\" name=\"1_2\"></a><a class=\"lemma-anchor \" name=\"sub1772_1_2\"></a><a class=\"lemma-anchor \" name=\"发展\"></a><a class=\"lemma-anchor \" name=\"1-2\"></a></div>\n<div class=\"para-title level-3  \" data-index=\"1_2\" data-pid=\"10\">\n<h3 class=\"title-text\">发展</h3>\n</div>\n<div class=\"para\" data-pid=\"11\">现代学者将瑜伽分为四个时期：</div>\n<div class=\"para\" data-pid=\"12\">\n<div class=\"albumBg\">&nbsp;</div>\n<strong>前古典时期</strong></div>\n<div class=\"para\" data-pid=\"13\">由公元前5000年开始，直到<a href=\"https://baike.baidu.com/item/%E6%A2%A8%E4%BF%B1%E5%90%A0%E9%99%80\" target=\"_blank\" rel=\"noopener\">梨俱吠陀</a>的出现为止，约有3000多年的时期，是瑜伽原始发展，缺少文字记载的时期，瑜伽由一个原始的哲学思想逐渐发展成为修行的法门，其中的<a href=\"https://baike.baidu.com/item/%E9%9D%99%E5%9D%90\" target=\"_blank\" rel=\"noopener\">静坐</a>、<a href=\"https://baike.baidu.com/item/%E5%86%A5%E6%83%B3\" target=\"_blank\" rel=\"noopener\">冥想</a>及<a href=\"https://baike.baidu.com/item/%E8%8B%A6%E8%A1%8C\" target=\"_blank\" rel=\"noopener\">苦行</a>，是瑜伽修行的中心。</div>\n<div class=\"para\" data-pid=\"14\"><strong>古典时期</strong></div>\n<div class=\"para\" data-pid=\"15\">由公元前1500年《<a href=\"https://baike.baidu.com/item/%E5%90%A0%E9%99%80%E7%BB%8F\" target=\"_blank\" rel=\"noopener\">吠陀经</a>》笼统的记载下来，到了《<a href=\"https://baike.baidu.com/item/%E5%A5%A5%E4%B9%89%E4%B9%A6\" target=\"_blank\" rel=\"noopener\">奥义书</a>》明确的记载瑜伽，到《<a href=\"https://baike.baidu.com/item/%E8%96%84%E4%BC%BD%E6%A2%B5%E6%AD%8C\" target=\"_blank\" rel=\"noopener\">薄伽梵歌</a>》出现，完成了瑜伽行法与吠檀多哲学的合一，使瑜伽这一民间的灵修实践变为正统，由强调行法到行为、信仰、知识三者<a href=\"https://baike.baidu.com/item/%E5%B9%B6%E8%A1%8C%E4%B8%8D%E6%82%96\" target=\"_blank\" rel=\"noopener\">并行不悖</a>。</div>', '111');
INSERT INTO `kecheng` VALUES ('3', '050422568847', '健美操课程', '2', '/upload/a84439986fb845acb4920d87f2f326e7.png', '<p>健美操是一项深受广大群众喜爱的、广泛普及，集体操、舞蹈、音乐、健身、娱乐于一体的体育项目。健美操中大量吸收了迪斯科舞、<a href=\"https://baike.baidu.com/item/%E7%88%B5%E5%A3%AB%E8%88%9E/1009786\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"1009786\">爵士舞</a>、霹雳舞中的上下肢、躯干、头颈和足踩动作，特别是髋部动作，这给健美操增添了活力，同时也有利于减少臀部和腹部脂肪的堆积，有利于改善动作的协调性和灵活性。</p>\n<p>&nbsp;</p>\n<div class=\"para\" data-pid=\"3\">古希腊人对人体美的崇尚举世闻名。他们认为，在世界万物之中，只有人体的健美才是最匀称、最和谐、最庄重、最有生气的。古希腊人喜爱采用跑跳、投掷、柔软体操和健美舞蹈等各种体育项目进行人体美的锻炼。他们提出了&ldquo;体操锻炼身体，音乐陶冶精神&rdquo;的主张。体操的出现是健美操得以形成的重要因素。</div>\n<div class=\"para\" data-pid=\"4\">古印度很早就流行一种瑜伽术，它把姿势、呼吸和意念紧密结合起来，通过调身（摆正姿势）、调息（调整呼吸）、调心（意守丹田入静），运用意识对肌体进行自我调节，健美身心，达到延年益寿。<a href=\"https://baike.baidu.com/item/%E7%91%9C%E4%BC%BD%E5%81%A5%E8%BA%AB%E6%9C%AF\" target=\"_blank\" rel=\"noopener\">瑜伽健身术</a>动作包括站立、跪、坐、卧、<a href=\"https://baike.baidu.com/item/%E5%BC%93%E6%AD%A5\" target=\"_blank\" rel=\"noopener\">弓步</a>等各种基本姿势。这些姿势与当前流行的健美操所常用的基本姿势是一致的。古代人对健身健美的追求，以及提倡体操与音乐相结合的主张是现代健美操形成与发展的基础</div>\n<div class=\"para\" data-pid=\"5\">\n<div class=\"lemma-picture J-lemma-picture text-pic layout-right\"><a class=\"image-link\" title=\"\" href=\"https://baike.baidu.com/pic/%E5%81%A5%E7%BE%8E%E6%93%8D/1896492/0/d788d43f8794a4c235aa5ba80ef41bd5ac6e39a3?fr=lemma&amp;ct=single\" target=\"_blank\" rel=\"noopener\"><img class=\"\" src=\"https://bkimg.cdn.bcebos.com/pic/d788d43f8794a4c235aa5ba80ef41bd5ac6e39a3?x-bce-process=image/resize,m_lfit,w_440,limit_1/format,f_auto\" alt=\"\" /></a></div>\n19世纪末，20世纪初，欧洲出现了许多体操流派，他们在理论和实践上的创新对健美操的发展起到了推动作用。20世纪60年代初，则是健美操的萌芽时期。它最早是由<a href=\"https://baike.baidu.com/item/%E7%BE%8E%E5%9B%BD%E5%A4%AA%E7%A9%BA%E6%80%BB%E7%BD%B2/2750291\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"2750291\">美国太空总署</a>的医生库帕博士为太空人设计的体能训练内容。而20世纪80年代初，随着遍及全球的健身热和娱乐体育的发展，健美操以其强大的生命力风靡世界。美国是对世界健美操的发展有着重要影响的国家，其代表人&mdash;&mdash;影视明星简&middot;方达，根据自己的健身体会和经验，撰写了《简&middot;方达健美术》一书。该书自1981年出版后，引起了世界的轰动。她以现身说法，促进了健美操在世界范围内的推广。与此同时，自1985年开始，美国正式举办一年一度的健美操锦标赛，并确定了竞赛项目和规则，使健美操发展成为竞技性运动项目。</div>', '111');
INSERT INTO `kecheng` VALUES ('4', '050422588714', '韵律操课程', '1', '/upload/d588f86a83884c10b6e0fc87ac3df552.png', '<p>得分最高分的选手获得比赛的冠军，裁判会依据选手在比赛中动作难度、艺术表现及动作的平衡性和灵活性来给出选手相应的分数。韵律操的目的在于使人体固有的组织更为精巧又是一种<a href=\"https://baike.baidu.com/item/%E5%9F%B9%E5%85%BB\" target=\"_blank\" rel=\"noopener\">培养</a>心灵与身心<a href=\"https://baike.baidu.com/item/%E8%BF%90%E5%8A%A8%E8%8A%82%E5%A5%8F\" target=\"_blank\" rel=\"noopener\">运动节奏</a>的健康活动</p>\n<p>&nbsp;</p>\n<div class=\"para\" data-pid=\"6\">韵律体操的创始人、<a href=\"https://baike.baidu.com/item/%E7%91%9E%E5%85%B8\" target=\"_blank\" rel=\"noopener\">瑞典</a>著名的体操专家&nbsp;<strong>Meekman</strong>主张韵律操动作的原则是：应将人体的运动规律融贯进动作中去。韵律体操应体现&ldquo;运动员的喜悦、动作的创造性和现代音乐与身心的结合&rdquo;。韵律操&ldquo;可当作节奏体操的新式动作形态体操&rdquo;。Meekman 重点指出了两个方面：人体运动的规律与动作的关系；身心统一发展关系。日本的佐藤正子是 Meekman 的推崇者，认为健美操是：将具有效果的爵士技巧之独立型和多中心性，应用于身体运动之中，使之成为体操之体系化上的一环。佐藤正子意识到了健美操内容的多样性，但只局限于<strong>爵士</strong>技巧的范围，无法消融不同文化背景后的冲突，忽视了锻炼者的身心发展。</div>\n<div class=\"anchor-list \"><a class=\"lemma-anchor para-title\" name=\"2_2\"></a><a class=\"lemma-anchor \" name=\"sub4353055_2_2\"></a><a class=\"lemma-anchor \" name=\"定义\"></a><a class=\"lemma-anchor \" name=\"2-2\"></a></div>\n<div class=\"para-title level-3  \" data-index=\"2_2\" data-pid=\"7\">\n<h3 class=\"title-text\">定义</h3>\n</div>\n<div class=\"para\" data-pid=\"8\">韵律学是让身体的组织结构更加精巧的一种游戏，它是教给我们怎样去开动心灵的游戏，是让心灵和身体理解节奏的游戏。做韵律操会使人的性格也富有韵律感，富有韵律感的性格是美好的，强大的，能够温和地顺应自然的法则。</div>\n<div class=\"anchor-list \"><a class=\"lemma-anchor para-title\" name=\"2_3\"></a><a class=\"lemma-anchor \" name=\"sub4353055_2_3\"></a><a class=\"lemma-anchor \" name=\"表现形式\"></a><a class=\"lemma-anchor \" name=\"2-3\"></a></div>\n<div class=\"para-title level-3  \" data-index=\"2_3\" data-pid=\"9\">\n<h3 class=\"title-text\">表现形式</h3>\n</div>\n<div class=\"para\" data-pid=\"10\">韵律体操和舞蹈是肢体运动的一种艺术表现形式。头和躯干部分的动作姿态，固然是韵律体操和舞蹈的主要组成部分，而臂和腿的动作姿态则是韵律体操和舞蹈这一艺术形式的集中体现。我们平时所说的&ldquo;<a href=\"https://baike.baidu.com/item/%E6%89%8B%E8%88%9E%E8%B6%B3%E8%B9%88\" target=\"_blank\" rel=\"noopener\">手舞足蹈</a>&rdquo;，是对人们表达心境行为的高度概括。手臂基本动作（摆动、绕环、波浪及组合练习），我们在一年级已经学习，本年级重点学习腿部基本动作。腿部的动作是指脚、小腿和大腿通过踝、膝、髓各关节的活动来完成的各种立捶、擦地、踢腿、举腿、屈伸、蹲等动作。韵律体操和舞蹈中的腿部基本动作练习，其目的在于提高各关节的灵活性和柔韧性，增强腿部肌肉力量，使之更加准确、充分地完成韵律体操和<a href=\"https://baike.baidu.com/item/%E8%88%9E%E8%B9%88%E5%8A%A8%E4%BD%9C/1666215\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"1666215\">舞蹈动作</a>。</div>\n<div class=\"anchor-list \"><a class=\"lemma-anchor para-title\" name=\"2_4\"></a><a class=\"lemma-anchor \" name=\"sub4353055_2_4\"></a><a class=\"lemma-anchor \" name=\"姿势及作用\"></a><a class=\"lemma-anchor \" name=\"2-4\"></a></div>\n<div class=\"para-title level-3  \" data-index=\"2_4\" data-pid=\"11\">\n<h3 class=\"title-text\">姿势及作用</h3>\n</div>\n<div class=\"para\" data-pid=\"12\">韵律体操和舞蹈中的身体和动作姿态，是在人体立、坐、行、卧等自然状态下的艺术加工。这种艺术加工的目的，在于培养学生美化和控制身体及动作姿态的能力。韵律体操和舞蹈的身体基本姿态练习方法很多，本年级采用直膝后举腿（也称&ldquo;阿拉贝斯&rdquo;）的舞姿，作为身体基本姿态练习，为学习韵律操和舞蹈打下良好的基础。</div>', '222');
INSERT INTO `kecheng` VALUES ('5', '050422591996', '健美操课程2', '2', '/upload/801339e1587449ed8b45d04598afb09b.png', '<p>健美操是一项深受广大群众喜爱的、广泛普及，集体操、舞蹈、音乐、健身、娱乐于一体的体育项目。健美操中大量吸收了迪斯科舞、爵士舞、霹雳舞中的上下肢、躯干、头颈和足踩动作，特别是髋部动作，这给健美操增添了活力，同时也有利于减少臀部和腹部脂肪的堆积，有利于改善动作的协调性和灵活性。&rdquo;</p>\n<p>&nbsp;</p>\n<div class=\"para\" data-pid=\"59\"><strong>健身后遗症</strong><sup class=\"sup--normal\" data-sup=\"1\" data-ctrmap=\":1,\">&nbsp;[1]</sup><a class=\"sup-anchor\" name=\"ref_[1]_63939\"></a>&nbsp;</div>\n<div class=\"para\" data-pid=\"60\">女性常做负重运动，对骨盆产生巨大压力，可造成会阴部<a href=\"https://baike.baidu.com/item/%E8%82%8C%E8%82%89%E6%9D%BE%E5%BC%9B\" target=\"_blank\" rel=\"noopener\">肌肉松弛</a>和脆弱，严重者引起<a href=\"https://baike.baidu.com/item/%E5%AD%90%E5%AE%AB%E4%B8%8B%E5%9E%82/3988230\" target=\"_blank\" rel=\"noopener\" data-lemmaid=\"3988230\">子宫下垂</a>或脱出、大小便失禁等后遗症。</div>\n<div class=\"para\" data-pid=\"61\">为此健美专家建议女性健美者：多做平衡操面墙站立，双脚并拢，挺腰直背，两眼平视前方，双手前伸，手掌紧贴墙壁，弯曲两肘，全身做一前一后的动作，每天做8-10次。</div>\n<div class=\"para\" data-pid=\"62\">选好锻炼项目</div>\n<div class=\"para\" data-pid=\"63\">女性健美重点应放在练体形上，故平衡操、健美操、仰卧起坐等项目当为首选。还可选择游泳、跳水、跳绳等。</div>\n<div class=\"para\" data-pid=\"64\">掌握好<a href=\"https://baike.baidu.com/item/%E8%BF%90%E5%8A%A8%E5%BC%BA%E5%BA%A6\" target=\"_blank\" rel=\"noopener\">运动强度</a>和时间</div>\n<div class=\"para\" data-pid=\"65\">要根据自身体质和特点锻炼，不要盲目效仿别人</div>', '222');

-- ----------------------------
-- Table structure for `kechengleixing`
-- ----------------------------
DROP TABLE IF EXISTS `kechengleixing`;
CREATE TABLE `kechengleixing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `leixingmingcheng` varchar(255) NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='课程类型';

-- ----------------------------
-- Records of kechengleixing
-- ----------------------------
INSERT INTO `kechengleixing` VALUES ('1', '韵律操');
INSERT INTO `kechengleixing` VALUES ('2', '健美操');
INSERT INTO `kechengleixing` VALUES ('3', '瑜伽');

-- ----------------------------
-- Table structure for `lunbotu`
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `url` varchar(255) NOT NULL COMMENT '连接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='轮播图';

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('1', '1', '/upload/4b81fcfea51548038d78e2ee392e6c1b.png', '#');
INSERT INTO `lunbotu` VALUES ('2', '2', '/upload/f90034fe35a046e2898934f11fa10cb2.png', '#');
INSERT INTO `lunbotu` VALUES ('3', '3', '/upload/a4b42edd42654e12b3dcbc4914b1857a.png', '#');

-- ----------------------------
-- Table structure for `quxiaoyuyue`
-- ----------------------------
DROP TABLE IF EXISTS `quxiaoyuyue`;
CREATE TABLE `quxiaoyuyue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yuyueid` int(10) unsigned NOT NULL COMMENT '预约id',
  `kechengid` int(10) unsigned NOT NULL COMMENT '课程id',
  `bianhao` varchar(50) NOT NULL COMMENT '编号',
  `kechengmingcheng` varchar(255) NOT NULL COMMENT '课程名称',
  `leixing` int(10) unsigned NOT NULL COMMENT '类型',
  `yuyuerenxingming` varchar(50) NOT NULL COMMENT '预约人姓名',
  `tianjiaren` varchar(50) NOT NULL COMMENT '添加人',
  `quxiaoyuanyin` text NOT NULL COMMENT '取消原因',
  `quxiaoren` varchar(50) NOT NULL COMMENT '取消人',
  PRIMARY KEY (`id`),
  KEY `quxiaoyuyue_yuyueid_index` (`yuyueid`),
  KEY `quxiaoyuyue_kechengid_index` (`kechengid`),
  KEY `quxiaoyuyue_leixing_index` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='取消预约';

-- ----------------------------
-- Records of quxiaoyuyue
-- ----------------------------
INSERT INTO `quxiaoyuyue` VALUES ('1', '1', '4', '050422588714', '韵律操课程', '1', '李景', '222', '临时有事，', '1');
INSERT INTO `quxiaoyuyue` VALUES ('2', '2', '2', '050422559653', '立体瑜伽', '3', '李静', '111', '没时间去了', '1');

-- ----------------------------
-- Table structure for `wxuser`
-- ----------------------------
DROP TABLE IF EXISTS `wxuser`;
CREATE TABLE `wxuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) NOT NULL COMMENT '用户',
  `nickName` varchar(50) NOT NULL COMMENT '昵称',
  `avatarUrl` varchar(255) NOT NULL COMMENT '头像',
  `gender` int(11) NOT NULL DEFAULT '0' COMMENT '性别',
  `country` varchar(50) NOT NULL COMMENT '国家',
  `province` varchar(50) NOT NULL COMMENT '省份',
  `city` varchar(50) NOT NULL COMMENT '城市',
  `longitude` varchar(50) NOT NULL COMMENT '经度',
  `latitude` varchar(50) NOT NULL COMMENT '纬度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='微信用户';

-- ----------------------------
-- Records of wxuser
-- ----------------------------
INSERT INTO `wxuser` VALUES ('1', 'og8dR5BcbYndQir5h4FEAD8ORd2Q', '九千七', 'https://thirdwx.qlogo.cn/mmopen/vi_32/ia1icbNeTP0UWCE8MfI9VAPpicB0s6dAceNUqB5icIxn7rEq9iaA2JHZiciaTF1qx7wIjUpdMypYgkksd4j40SXjw1Qkg/132', '0', '', '', '', '', '');

-- ----------------------------
-- Table structure for `yuyue`
-- ----------------------------
DROP TABLE IF EXISTS `yuyue`;
CREATE TABLE `yuyue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kechengid` int(10) unsigned NOT NULL COMMENT '课程id',
  `bianhao` varchar(50) NOT NULL COMMENT '编号',
  `kechengmingcheng` varchar(255) NOT NULL COMMENT '课程名称',
  `leixing` int(10) unsigned NOT NULL COMMENT '类型',
  `tianjiaren` varchar(50) NOT NULL COMMENT '添加人',
  `yuyueshijian` varchar(25) NOT NULL COMMENT '预约时间',
  `yuyuerenxingming` varchar(50) NOT NULL COMMENT '预约人姓名',
  `dianhua` varchar(50) NOT NULL COMMENT '电话',
  `beizhu` text NOT NULL COMMENT '备注',
  `zhuangtai` varchar(50) NOT NULL COMMENT '状态',
  `yuyueren` varchar(50) NOT NULL COMMENT '预约人',
  PRIMARY KEY (`id`),
  KEY `yuyue_kechengid_index` (`kechengid`),
  KEY `yuyue_leixing_index` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='预约';

-- ----------------------------
-- Records of yuyue
-- ----------------------------
INSERT INTO `yuyue` VALUES ('1', '4', '050422588714', '韵律操课程', '1', '222', '2022-05-04 23:12:20', '李景', '13800138005', 'xxxxxxx', '已取消预约', '1');
INSERT INTO `yuyue` VALUES ('2', '2', '050422559653', '立体瑜伽', '3', '111', '2022-05-04 23:42:22', '李静', '13800138005', 'xxxxd', '已取消预约', '1');
