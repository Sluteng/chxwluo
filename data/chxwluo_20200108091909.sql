/*
MySQL Database Backup Tools
Server:211.149.133.173:
Database:chxwluo
Data:2020-01-08 09:19:09
*/
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for tp_about
-- ----------------------------
DROP TABLE IF EXISTS `tp_about`;
CREATE TABLE `tp_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `theme` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '主题 ',
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_about
-- ----------------------------
INSERT INTO `tp_about` (`id`,`theme`,`img`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','company简介','/tmp/uploads/20190828/b2422e04f86d4217b6e71769e9d32ae0.jpg','畅行网络 &mdash;&mdash; 简介','保定市畅行网络技术有限公司以良好的商业信誉，完善的服务及深厚的技术力量，以客户服务为中心，专业为客户量身打造客户喜欢的网站平台。客户满意度是我们永恒的追求。我们通过敏锐的洞察和智慧，利用色彩、构图和思想,为您量身打造适身合体的设计，用纯粹的创意精神去指导工作与生活，以激情奔放的热情去实现欲望与理想，让您体验圆满理想的品牌服务！','1566987126','1566987126','0','0','1');
INSERT INTO `tp_about` (`id`,`theme`,`img`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','company理念','/tmp/uploads/20190828/caa38bdbb5fd35733ec965dfbac820f2.jpg','畅行网络 &mdash;&mdash; 观点','我们反对不被信任的沟通与洽谈我们清楚只有深度了解后才能同步思维我们反对不切实际的目标与预估我们清楚只有准确定位才能步步为赢我们无法答应您一切都行一切都可以我们只能告诉您，如果这里不行，如何做才可以！我们的丰富的经验与专业的服务只为有期待的人提供我们一直在期待.......与您的合作将从这里开始！','1566987257','1566987282','0','0','1');
INSERT INTO `tp_about` (`id`,`theme`,`img`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','company文化','/tmp/uploads/20190828/369fa08239aa3a03b0efb97f68e0cbfe.jpg','畅行网络 &mdash;&mdash; 文化','保定畅行网络技术有限公司是保定市专业网站建设与网络优化服务的提供商，是保定中小型企业信息化服务商，公司本着&ldquo;诚信为本、变革创新、服务客户、共赢成长&rdquo;的服务宗旨，为中小型企业提供企业建站、行业建站、商城建站、网站优化等服务项目。','1566987346','1567650897','0','0','1');

-- ----------------------------
-- Table structure for tp_abouts
-- ----------------------------
DROP TABLE IF EXISTS `tp_abouts`;
CREATE TABLE `tp_abouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `img` varchar(200) NOT NULL COMMENT '缩略图',
  `editorValue` text NOT NULL COMMENT '内容',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of tp_abouts
-- ----------------------------
INSERT INTO `tp_abouts` (`id`,`title`,`img`,`editorValue`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','公司概况','/tmp/uploads/20190826/697678cd184ff5ab21b3c4c5a3bbfdcc.png','&lt;h4 class=&quot;asTitle&quot;&gt;&lt;span style=&quot;color:#000; font-size:50px;&quot;&gt;保定市畅行网络技术有限公司&lt;/span&gt;&lt;/h4&gt;&lt;p class=&quot;asContent&quot;&gt;&lt;span style=&quot;font-size:18px;color:#000;&quot;&gt;保定市畅行网络技术有限公司以良好的商业信誉，完善的服务及深厚的技术力量，以客户服务为中心，专业为客户量身打造客户喜欢的网站平台。客户满意度是我们永恒的追求。我们通过敏锐的洞察和智慧，利用色彩、构图和思想,为您量身打造适身合体的设计，用纯粹的创意精神去指导工作与生活，以激情奔放的热情去实现欲望与理想，让您体验圆满理想的品牌服务！&lt;/span&gt;&lt;/p&gt;','1566819943','1566866687','0','0','1');
INSERT INTO `tp_abouts` (`id`,`title`,`img`,`editorValue`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','','','&lt;h4 class=&quot;asTitle&quot;&gt;保定市畅行网络技术有限公司&lt;/h4&gt;&lt;p class=&quot;asContent p0&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;br/&gt;&lt;strong&gt;保定市畅行网络技术有限公司&lt;/strong&gt;&lt;br/&gt;&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;中国知名的网络品牌策划、网络品牌形象设计、软件界面设计与网页开发的公司，专门致力于企业网站建设、高端品牌形象设计、交互设计、视觉设计、移动网站界面设计与开发、用户体验于一体的专业互联网服务。我们面向全国的中小企业提供全方位的企业信息化解决方案，我们多年以来已成功地为多家知名企事业单位、政府机关提供了网络建设及解决方案及互联网服务。我的网站以良好的商业信誉，完善的服务及深厚的技术力量，以客户服务为中心，专业为客户量身打造客户喜欢的网站平台。&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;客户满意度是我们永恒的追求！&lt;/strong&gt;&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;我们通过敏锐的洞察和智慧，利用色彩、构图和思想,为您量身打造适身合体的设计，用纯粹的创意精神去指导工作与生活，以激情奔放的热情去实现欲望与理想，&lt;br/&gt;&lt;br/&gt;让您体验圆满理想的品牌服务！&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;','1566821280','1566870974','0','0','1');
INSERT INTO `tp_abouts` (`id`,`title`,`img`,`editorValue`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','我们的观点','/tmp/uploads/20190826/585d1d910941aa4b61ca5c52d1d62c46.png','&lt;h4 class=&quot;asTitle&quot;&gt;我们的观点&lt;/h4&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; position: relative; z-index: 3;&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;我们拒绝平庸&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; line-height: 1.5;&quot;&gt;我们反对不被信任的沟通与洽谈&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; font-size: 12px; color: rgb(255, 255, 255);&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; font-size: 12px;&quot;&gt;我们清楚只有深度了解后才能同步思维&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; font-size: 12px; color: rgb(255, 255, 255);&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; font-size: 12px;&quot;&gt;我们反对不切实际的目标与预估&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; font-size: 12px;&quot;&gt;我们清楚只有准确定位才能步步为赢&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; font-size: 12px;&quot;&gt;我们无法答应您一切都行一切都可以&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; font-size: 12px; color: rgb(255, 255, 255);&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; font-size: 12px;&quot;&gt;我们只能告诉您，如果这里不行，如何做才可以！&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; font-size: 12px;&quot;&gt;我们的丰富的经验与专业的服务只为有期待的人提供&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; font-size: 12px; color: rgb(255, 255, 255);&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;position: relative; z-index: 3; line-height: 1.5; color: rgb(0, 0, 0); font-size: 24px;&quot;&gt;我们一直在期待.......&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;p0&quot; style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; position: relative; z-index: 3;&quot;&gt;&lt;span style=&quot;position: relative; z-index: 3; font-size: 12px;&quot;&gt;与您的合作将从这里开始！&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','1566822058','1566866455','0','0','1');
INSERT INTO `tp_abouts` (`id`,`title`,`img`,`editorValue`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','','/tmp/uploads/20190826/526b6203892f161480a629387037766c.jpg','&lt;h4 class=&quot;asTitle&quot;&gt;加入我们&lt;/h4&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;span style=&quot;line-height:1.5;font-size:16px;&quot;&gt;亲爱的朋友：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;也许你是职场菜鸟，初出茅庐；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;也许你是沙场老将，久经历练；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;也许现在的你，已经褪去了刚毕业时的青涩和懵懂，渐渐学会审视自我，规划未来；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;也许你在几年的工作经历后，开始渴望有一个相对宽松的空间；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;也许你觉得自己现在的环境无法施展能力，英雄无用武之地;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;span style=&quot;line-height:1.5;&quot;&gt;也许你深陷&amp;quot;办公室政治&amp;quot;，渴望找到可以全心投入的阳光职场。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;span style=&quot;line-height:1.5;font-size:18px;&quot;&gt;&lt;strong&gt;&hellip;&hellip;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;span style=&quot;line-height:1.5;font-size:18px;&quot;&gt;&lt;strong&gt;那么，来畅行网络，在这里，会有你的一番新天地！&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span style=&quot;color:#494949;font-family:楷体;font-size:15px;line-height:25px;background-color:#FFFFFF;&quot;&gt;&lt;/span&gt;&lt;/p&gt;','1566825321','1566870980','0','0','1');

-- ----------------------------
-- Table structure for tp_admin_access
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_access`;
CREATE TABLE `tp_admin_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_access
-- ----------------------------
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','227','3','224');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','226','3','224');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','225','3','224');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','224','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','223','3','217');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','222','3','217');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','219','3','217');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','218','3','217');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','217','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','140','3','87');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','139','3','87');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','138','3','87');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','137','3','87');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','87','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','216','3','86');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','215','3','86');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','214','3','86');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','213','3','86');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','86','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','212','3','85');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','211','3','85');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','210','3','85');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','85','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','209','4','96');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','208','4','96');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','207','4','96');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','206','4','96');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','96','3','82');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','205','4','95');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','204','4','95');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','203','4','95');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','202','4','95');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','95','3','82');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','82','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','195','3','81');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','193','3','81');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','191','3','81');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','190','3','81');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','189','3','81');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','188','3','81');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','81','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','201','3','79');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','200','3','79');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','199','3','79');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','198','3','79');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','197','3','79');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','196','3','79');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','79','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','187','3','78');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','186','3','78');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','185','3','78');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','184','3','78');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','78','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','183','3','77');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','182','3','77');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','181','3','77');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','180','3','77');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','179','3','77');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','178','3','77');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','77','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','171','3','76');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','170','3','76');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','168','3','76');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','163','3','76');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','76','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','177','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','176','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','175','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','174','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','173','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','172','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','75','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','162','3','74');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','161','3','74');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','160','3','74');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','159','3','74');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','74','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','158','3','73');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','157','3','73');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','156','3','73');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','155','3','73');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','154','3','73');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','153','3','73');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','73','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','152','3','72');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','151','3','72');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','150','3','72');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','149','3','72');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','72','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','148','3','71');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','147','3','71');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','146','3','71');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','145','3','71');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','71','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','144','3','70');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','143','3','70');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','142','3','70');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','141','3','70');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','70','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','114','3','69');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','113','3','69');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','111','3','69');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','109','3','69');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','69','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','136','3','68');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','135','3','68');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','134','3','68');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','133','3','68');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','132','3','68');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','131','3','68');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','68','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','130','3','67');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','129','3','67');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','128','3','67');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','127','3','67');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','67','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','126','3','66');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','125','3','66');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','124','3','66');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','123','3','66');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','122','3','66');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','121','3','66');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','66','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','120','3','65');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','119','3','65');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','118','3','65');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','117','3','65');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','116','3','65');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','115','3','65');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','65','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','108','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','107','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','106','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','105','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','104','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','103','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','64','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','102','3','63');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','101','2','63');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','99','3','63');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','97','3','63');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','63','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','1','1','0');

-- ----------------------------
-- Table structure for tp_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_group`;
CREATE TABLE `tp_admin_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'icon小图标',
  `sort` int(11) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_group
-- ----------------------------
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('1','系统管理','&amp;#xe61d;','1','1','','0','1450752856','1566784506');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('2','工具','','2','1','','0','1476016712','1568701941');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('3','基本信息','','3','1','','0','1566784499','1566784516');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('4','导航栏目','','4','1','','0','1566785992','1566785992');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('5','首页','','5','1','','0','1566786841','1566799168');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('6','关于我们','','6','1','','0','1566817746','1566817746');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('7','服务项目','','7','1','','0','1566874033','1566874043');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('8','案例展示','','8','1','','0','1566896768','1566896768');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('9','新闻动态','','8','1','','0','1566908595','1566908595');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('10','联系我们','','9','1','','0','1566972886','1566972890');

-- ----------------------------
-- Table structure for tp_admin_node
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node`;
CREATE TABLE `tp_admin_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '节点类型，1-控制器 | 0-方法',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `isdelete` (`isdelete`),
  KEY `sort` (`sort`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=228 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_node
-- ----------------------------
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('1','0','1','Admin','后台管理','后台管理，不可更改','1','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('2','1','1','AdminGroup','分组管理',' ','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('3','1','1','AdminNode','节点管理',' ','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('4','1','1','AdminRole','角色管理',' ','2','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('5','1','1','AdminUser','用户管理','','2','1','4','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('6','1','0','Index','首页','','2','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('7','6','0','welcome','欢迎页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('8','6','0','index','未定义','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('9','1','2','Generate','代码自动生成','','2','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('10','1','2','Demo/excel','Excel一键导出','','2','0','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('11','1','2','Demo/download','下载','','2','0','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('12','1','2','Demo/downloadImage','远程图片下载','','2','0','4','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('13','1','2','Demo/mail','邮件发送','','2','0','5','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('14','1','2','Demo/qiniu','七牛上传','','2','0','6','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('15','1','2','Demo/hashids','ID加密','','2','0','7','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('16','1','2','Demo/layer','丰富弹层','','2','0','8','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('17','1','2','Demo/tableFixed','表格溢出','','2','0','9','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('18','1','2','Demo/ueditor','百度编辑器','','2','0','10','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('19','1','2','Demo/imageUpload','图片上传','','2','0','11','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('20','1','2','Demo/qrcode','二维码生成','','2','0','12','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('21','1','1','NodeMap','节点图','','2','1','5','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('22','1','1','WebLog','操作日志','','2','1','6','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('23','1','1','LoginLog','登录日志','','2','1','7','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('59','1','2','one.two.three.Four/index','多级节点','','2','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('24','23','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('25','22','0','index','列表','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('26','22','0','detail','详情','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('27','21','0','load','自动导入','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('28','21','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('29','5','0','add','添加','','3','0','51','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('30','21','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('31','21','0','deleteForever','永久删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('32','9','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('33','9','0','generate','生成方法','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('34','5','0','password','修改密码','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('35','5','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('36','5','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('37','5','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('38','4','0','user','用户列表','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('39','4','0','access','授权','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('40','4','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('41','4','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('42','4','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('43','4','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('44','4','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('45','3','0','load','节点快速导入测试','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('46','3','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('47','3','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('48','3','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('49','3','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('50','3','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('51','2','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('52','2','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('53','2','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('54','2','0','forbid','默认禁用操作','','3','0','51','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('55','2','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('56','1','2','one','一级菜单','','2','1','13','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('60','56','2','two','二级','','3','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('61','60','2','three','三级菜单','','4','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('62','61','2','Four','四级菜单','','5','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('63','1','3','Logo','logo图','','2','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('64','1','3','Links','友情链接','','2','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('65','1','4','Navber','栏目列表','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('66','1','5','Banner','幻灯片栏目','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('67','1','5','Tdk','SEO配置','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('68','1','5','Yqlogo','友情LOGO','','2','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('69','1','3','Copy','版权所有','','2','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('70','1','6','Abouts','公司简介','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('71','1','6','Good','我们的优势','','2','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('72','1','6','Culture','企业文化','','2','1','5','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('73','1','6','Banners','轮播图','','2','1','4','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('74','1','6','Tdkg','SEO配置','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('75','1','7','Service','服务简要','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('76','1','7','Tdkf','SEO配置','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('77','1','8','Anli','案例内容','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('78','1','8','Tdka','SEO配置','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('79','1','9','News','新闻内容','','2','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('80','1','9','Infor','行业资讯','','2','1','3','0','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('81','1','9','Newd','新闻中心','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('82','1','10','mode','联系方式','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('95','82','10','Ride','乘车路线','','3','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('85','1','10','Box','洽谈业务','','2','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('86','1','10','Tdkw','SEO配置','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('87','1','5','About','公司概况','','2','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('96','82','10','Contact','基本信息','','3','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('97','63','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('98','63','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('99','63','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('100','63','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('101','63','0','forbid','默认禁用操作','','2','0','0','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('102','63','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('103','64','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('104','64','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('105','64','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('106','64','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('107','64','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('108','64','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('109','69','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('110','69','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('111','69','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('112','69','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('113','69','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('114','69','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('115','65','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('116','65','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('117','65','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('118','65','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('119','65','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('120','65','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('121','66','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('122','66','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('123','66','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('124','66','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('125','66','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('126','66','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('127','67','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('128','67','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('129','67','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('130','67','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('131','68','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('132','68','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('133','68','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('134','68','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('135','68','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('136','68','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('137','87','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('138','87','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('139','87','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('140','87','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('141','70','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('142','70','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('143','70','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('144','70','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('145','71','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('146','71','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('147','71','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('148','71','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('149','72','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('150','72','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('151','72','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('152','72','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('153','73','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('154','73','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('155','73','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('156','73','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('157','73','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('158','73','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('159','74','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('160','74','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('161','74','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('162','74','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('163','76','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('164','0','7','edit','编辑','','1','0','50','1','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('165','0','7','index','首页','','1','0','50','1','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('166','0','7','delete','删除','','1','0','50','1','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('167','163','0','edit','编辑','','4','0','50','1','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('168','76','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('169','163','0','forbid','默认禁用操作','','4','0','50','1','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('170','76','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('171','76','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('172','75','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('173','75','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('174','75','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('175','75','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('176','75','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('177','75','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('178','77','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('179','77','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('180','77','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('181','77','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('182','77','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('183','77','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('184','78','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('185','78','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('186','78','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('187','78','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('188','81','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('189','81','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('190','81','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('191','81','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('192','188','0','forbid','默认禁用操作','','4','0','50','1','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('193','81','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('194','188','0','resume','默认恢复操作','','4','0','50','1','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('195','81','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('196','79','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('197','79','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('198','79','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('199','79','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('200','79','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('201','79','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('202','95','0','index','首页','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('203','95','0','edit','编辑','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('204','95','0','forbid','默认禁用操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('205','95','0','resume','默认恢复操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('206','96','0','index','首页','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('207','96','0','edit','编辑','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('208','96','0','forbid','默认禁用操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('209','96','0','resume','默认恢复操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('210','85','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('211','85','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('212','85','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('213','86','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('214','86','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('215','86','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('216','86','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('217','1','2','Upload','文件上传','','2','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('218','217','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('219','217','0','Upload','本地上传','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('220','219','0','Upload','网络抓取','','4','0','50','1','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('221','218','0','remote','网络抓取','','4','0','50','1','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('222','217','0','remote','网络抓取','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('223','217','0','listImage','历史图片','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('224','1','2','Sql','备份数据库','','2','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('225','224','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('226','224','0','mysql','数据库备份','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('227','224','0','delete','删除','','3','0','50','1','0');

-- ----------------------------
-- Table structure for tp_admin_node_load
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node_load`;
CREATE TABLE `tp_admin_node_load` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='节点快速导入';
-- ----------------------------
-- Records of tp_admin_node_load
-- ----------------------------
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('4','编辑','edit','1');
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('5','添加','add','1');
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('6','首页','index','1');
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('7','删除','delete','1');

-- ----------------------------
-- Table structure for tp_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role`;
CREATE TABLE `tp_admin_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`),
  KEY `isdelete` (`isdelete`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_role
-- ----------------------------
INSERT INTO `tp_admin_role` (`id`,`pid`,`name`,`remark`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('1','0','领导组',' ','1','0','1208784792','1254325558');
INSERT INTO `tp_admin_role` (`id`,`pid`,`name`,`remark`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('2','0','网编组',' ','0','0','1215496283','1454049929');

-- ----------------------------
-- Table structure for tp_admin_role_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role_user`;
CREATE TABLE `tp_admin_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
-- ----------------------------
-- Records of tp_admin_role_user
-- ----------------------------
INSERT INTO `tp_admin_role_user` (`role_id`,`user_id`) VALUES ('1','2');

-- ----------------------------
-- Table structure for tp_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_user`;
CREATE TABLE `tp_admin_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(32) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '',
  `login_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `accountpassword` (`account`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_user
-- ----------------------------
INSERT INTO `tp_admin_user` (`id`,`account`,`realname`,`password`,`last_login_time`,`last_login_ip`,`login_count`,`email`,`mobile`,`remark`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('1','chxwluo','超级管理员','1443a3396d8a691d94888f54a32cdac3','1578444826','111.225.63.207','441','tianpian0805@gmail.com','13121126169','我是超级管理员','1','0','1222907803','1451033528');
INSERT INTO `tp_admin_user` (`id`,`account`,`realname`,`password`,`last_login_time`,`last_login_ip`,`login_count`,`email`,`mobile`,`remark`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('2','changxing','畅行网络','1443a3396d8a691d94888f54a32cdac3','1578387263','111.225.63.207','26','','13730299917','保定市畅行网络科技有限公司','1','0','1476777133','1477399793');

-- ----------------------------
-- Table structure for tp_anli
-- ----------------------------
DROP TABLE IF EXISTS `tp_anli`;
CREATE TABLE `tp_anli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '网站logo',
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片',
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '客户名称',
  `site` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '网络定位',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '网站地址',
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '合作时间',
  `content` varchar(850) COLLATE utf8_unicode_ci NOT NULL COMMENT '客户概述',
  `sort` int(11) NOT NULL COMMENT '排序',
  `push` int(11) NOT NULL COMMENT '推荐',
  `title` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_anli
-- ----------------------------
INSERT INTO `tp_anli` (`id`,`logo`,`img`,`Name`,`site`,`url`,`time`,`content`,`sort`,`push`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','/tmp/uploads/20190903/25494c5569d39848c0fd238c7d5c2881.jpg','/tmp/uploads/20190903/10a4f3617712ecc3162b0eae994f3c90.png','保定市光谱电子科技有限公司','品牌网站设计','http://www.bdgp-led.com','2019年','  光谱电子科技有限公司国内销售总公司位于国家电谷&mdash;&mdash;河北保定高开区，它是国内唯一的国家级新能源与能源设备基地，在光伏产业和风电产业方面它在全国处于独占熬头的地位，而且在输变电设备和储能设备产业方面它也在全国处于首屈一指的位置。而同时光谱电子的光电事业部十年来致力于太阳能路灯的研发。光谱电子国内销售总公司以此专业LED光源生产和国家电谷的天然优势为依托，将固态发光新材料和现代新能源应用结合起来，研发和推广实用新型的高科技的太阳能路灯、LED路灯、太阳能庭院灯、太阳能草坪灯、太阳能LED路灯组件、太阳能高杆灯等现代绿色照明产品推动国家照明行业的国际化进程，为世界和人类的可持续发展贡献力量。','1','1','保定市光谱电子科技有限公司-案例展示-畅','保定畅行网络技术有限公司是保定市专业网站建设与网站优化服务的提供商，为中小型企业提供企业建站、行业建站、商城建站、网站优化等服务项目。','','1566897129','1567651297','0','0','1');
INSERT INTO `tp_anli` (`id`,`logo`,`img`,`Name`,`site`,`url`,`time`,`content`,`sort`,`push`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','/tmp/uploads/20190903/147702936bd528c2eaf49041965bad25.jpg','/tmp/uploads/20190831/e3008399c34c731805c3f558027c0cd1.jpg','河北鑫动力新能源科技有限公司','品牌网站设计','http://www.hbxinpower.com','2019年','       河北鑫动力新能源科技有限公司是精心于锂电池管理系统、太阳能光伏发电系统、锂电池及原材料研发、设计、生产、销售为一体的高新技术企业。       公司具有雄厚的技术力量、领先的生产工艺、精良的生产设备、先进的检测仪器、完善的检测手段，自主研发和生产锂电池产品的能力处于国内领先地位。我公司本着&ldquo;诚信为本，实事求是，精于研发，勇于创新&rdquo;的经营理念，采用合理的生产管理机制、完善的硬件基础设施、专业的技术研发团队、完善的售后服务保障，为客户提供高品质、高标准、高水平的产品。','2','1','河北鑫动力新能源科技有限公司-案例展示-','保定畅行网络技术有限公司是保定市专业网站建设与网站优化服务的提供商，为中小型企业提供企业建站、行业建站、商城建站、网站优化等服务项目。','','1566901906','1567651276','0','0','1');
INSERT INTO `tp_anli` (`id`,`logo`,`img`,`Name`,`site`,`url`,`time`,`content`,`sort`,`push`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','/tmp/uploads/20190903/b33c85aeb854cc3dc654645c3779aeea.jpg','/tmp/uploads/20190903/fbde67a29461224b12ae2084af6ad000.png','保定博楷电子科技有限公司','品牌设计','www.bokaidianzi.com','2019年','     保定博楷电子科技有限公司位于保定上古大观，是一家从事太阳能组件及应用产品光伏发电系统、风电互补系统的设计、生产、销售及安装；城市道路照明工程安装；灯具制造；照明设备、太阳能灯具、LED设备及配件销售、安装；光伏设备及元器件、五金产品、电线电缆销售，新能源技术推广及咨询服务的专业化公司。','3','1','保定博楷电子科技有限公司-案例展示-畅行','保定畅行网络技术有限公司是保定市专业网站建设与网站优化服务的提供商，为中小型企业提供企业建站、行业建站、商城建站、网站优化等服务项目。','','1566902236','1567651253','0','0','1');
INSERT INTO `tp_anli` (`id`,`logo`,`img`,`Name`,`site`,`url`,`time`,`content`,`sort`,`push`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','/tmp/uploads/20190903/b341ce70c5475231004ab5451aa8bd28.jpg','/tmp/uploads/20190831/219abbc0f14c6af0cd97ef131b1afcbb.png','河北欧亚照明科技有限公司','品牌设计','hboya.com','2019年','河北欧亚照明科技有限公司(石家庄市欧亚灯具厂)始创于1992年，是集科研、设计、生产、销售为一体的大型专业制造企业。企业拥有员工165人,厂房面积19700平米，现拥有800T液压联动15米折弯机生产线、彩色粉末静电喷涂生产线、LED灯具生产线，400T、125T全电脑控制压铸机8台、100T液压机、高精度车床7台、剪板机4*14米重型龙门等离子等机械设备。产品畅销全国各地，深受用户好评。','4','1','河北欧亚照明科技有限公司-案例展示-畅行','保定畅行网络技术有限公司是保定市专业网站建设与网络优化服务的提供商，为中小型企业提供企业建站、行业建站、商城建站、网站优化等服务项目。','','1566902279','1567651044','0','0','1');
INSERT INTO `tp_anli` (`id`,`logo`,`img`,`Name`,`site`,`url`,`time`,`content`,`sort`,`push`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','/tmp/uploads/20190828/528e9d1f0b0cfff34e4067000a68a1a6.jpg','/tmp/uploads/20190827/223ace3122d6bc9352d561b1537589c8.jpg','云南民族大学','2','ee','2019年','dc','5','0','','','','1566902309','1566985688','0','0','0');
INSERT INTO `tp_anli` (`id`,`logo`,`img`,`Name`,`site`,`url`,`time`,`content`,`sort`,`push`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('6','/tmp/uploads/20190828/528e9d1f0b0cfff34e4067000a68a1a6.jpg','/tmp/uploads/20190827/223ace3122d6bc9352d561b1537589c8.jpg','云南建水陶茗轩工艺坊','qq','ss','2019年','zxczc','6','0','','','','1566902344','1566985693','0','0','0');
INSERT INTO `tp_anli` (`id`,`logo`,`img`,`Name`,`site`,`url`,`time`,`content`,`sort`,`push`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('7','/tmp/uploads/20190828/528e9d1f0b0cfff34e4067000a68a1a6.jpg','/tmp/uploads/20190827/223ace3122d6bc9352d561b1537589c8.jpg','111','22','3','e','xd','7','1','','','','1566902399','1566985698','0','1','0');

-- ----------------------------
-- Table structure for tp_banner
-- ----------------------------
DROP TABLE IF EXISTS `tp_banner`;
CREATE TABLE `tp_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_title` varchar(255) NOT NULL,
  `banner_img` varchar(255) DEFAULT NULL,
  `banner_href` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0:否 1:是',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用 1:否 0:是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of tp_banner
-- ----------------------------
INSERT INTO `tp_banner` (`id`,`banner_title`,`banner_img`,`banner_href`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','幻灯片1','/tmp/uploads/20190826/04a294b0dbb6d6ec775e72ebb07d8c19.jpg','#','1564372441','1566795113','0','0','0');
INSERT INTO `tp_banner` (`id`,`banner_title`,`banner_img`,`banner_href`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','幻灯片2','/tmp/uploads/20190826/041798c0ae56ad7ad8fef5fb01ae3dee.jpg','#','1564372453','1566795106','0','0','1');
INSERT INTO `tp_banner` (`id`,`banner_title`,`banner_img`,`banner_href`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','幻灯片3','/tmp/uploads/20190826/361a15ce16a63214fa2e47c3e1a01623.jpg','#','1564372465','1566794716','0','0','1');
INSERT INTO `tp_banner` (`id`,`banner_title`,`banner_img`,`banner_href`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','幻灯片4','/tmp/uploads/20190826/dc8a012d08419468fbfdc2c4a612f7d2.jpg','#','1566795288','1566795288','0','0','1');
INSERT INTO `tp_banner` (`id`,`banner_title`,`banner_img`,`banner_href`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','幻灯片5','/tmp/uploads/20190826/77d169704e703471b69adfda0e466af2.jpg','#','1566795304','1567933062','0','0','0');

-- ----------------------------
-- Table structure for tp_banners
-- ----------------------------
DROP TABLE IF EXISTS `tp_banners`;
CREATE TABLE `tp_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_img` varchar(255) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0:否 1:是',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用 1:否 0:是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of tp_banners
-- ----------------------------
INSERT INTO `tp_banners` (`id`,`banner_img`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','/tmp/uploads/20190827/7afb2a3159b7efd5365944320099de3f.jpg','1566872596','1566872596','0','0','1');
INSERT INTO `tp_banners` (`id`,`banner_img`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','/tmp/uploads/20190827/f77aabf01a664f2790cb0afefb122dbe.jpg','1566872653','1566872653','0','0','1');
INSERT INTO `tp_banners` (`id`,`banner_img`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','/tmp/uploads/20190827/003d863652261967471dd6899c6b6564.jpg','1566872661','1566872661','0','0','1');

-- ----------------------------
-- Table structure for tp_box
-- ----------------------------
DROP TABLE IF EXISTS `tp_box`;
CREATE TABLE `tp_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `company` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司名称',
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '电话',
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `mailbox` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=323 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_box
-- ----------------------------
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','google','87769733563','Williamunown','raphaeTaisseNig@gmai','Good day!  chxwluo.com  We put up of the sale  Sending your business proposition through the feedback form which can be found on the sites in the Communication section. Contact form are filled in by our program and the captcha is solved. The advantage of this method is that messages sent through feedback forms are whitelisted. This method improve the probability that your message will be read.  Our database contains more than 25 million sites around the world to which we can send you','1567315661','1567315661','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','google','87773163444','MichaelSib','quickchain50@gmail.c','Profit +10% after 2 days The minimum amount for donation is 0.0025 BTC. Maximum donation amount is 10 BTC.  Ref bonus 3 levels: 5%,3%,1% paying next day after donation https://quickchain.cc/','1567975330','1567975330','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','rtf ','rtfgv','tr vc','rtg','rtg','1568184712','1568184712','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','google','85379812953','Edwardtok','ekeith916@gmail.com','WE ARE INTERESTED IN PARTNERSHIP WITH YOUR ESTIMINE COMPANY. KINDLY SEND US YOUR BUSINESS TERMS SO WE CAN PROCEED WITH OUR BUSINESS CONTRACT.  WAITING FOR YOUR REPLY  CONTACT E-MAIL:  joyce@cercoon.com  REGARD, JOYCE PAGE  (sales Manager ) CARCOON STORAGE SYSTEMS INT Ltd. CONTACT E-MAIL:  joyce@cercoon.com Address: Orchard Mill, 2 Orchard St S, Salford M6 6FL, UK','1568221907','1568221907','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','google','82461835366','DorothyNIB','doris.wiener@akademi','We would like to inform that you liked a comment ID:35915743 in a social network , January 9, 2019 at 19:48 This like has been randomly selected to win the seasonal &laquo;Like Of The Year&raquo; 2019 award! http://facebook.comпјЏmailпјЏ@0X4E18DCC7/Rk0W1k','1568228606','1568228606','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('6','google','89678968843','Averyhohit','raphaeTaisseNig@gmai','Good day!  chxwluo.com  Have you ever heard of sending messages via feedback forms?  Think of that your letter will be readseen by hundreds of thousands of your probable customerscustomers. Your message will not go to the spam folder because people will send the message to themselves. As an example, we have sent you our offer  in the same way.  We have a database of more than 30 million sites to which we can send your letter. Sites are sorted by country. Unfortunately, you can only','1568586604','1568711427','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('7','google','87838259288','Steveicene','steveGrainge@gmail.c','hi there We provide best monthly affordable SEO packages &amp; SEO services prices starting $49, Pay for performance based plans &amp; pricing, that&rsquo;s uniquely tailored to your website, we would be more than happy to create a campaign which accommodates your company&rsquo;s needs, enabling you to achieve your business goals. Search Engine Optimization is a methodology of strategies, systems and plans to get more traffic on website, increase search engine visibility &amp; ranking.  Ch','1569456320','1569456320','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('8','google','81246147533','David Gomez','sergiodumass@gmail.c','Dearest in mind,  I would like to introduce myself for the first time. My name is Barrister David Gomez Gonzalez, the personal lawyer to my late client. Who worked as a private businessman in the international field. In 2012, my client succumbed to an unfortunate car accident. My client was single and childless. He left a fortune worth $12,500,000.00 Dollars in a bank in Spain. The bank sent me message that I have to introduce a beneficiary or the money in their bank will be confiscate. ','1569495379','1569495379','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('9','google','88428246142','Pedro Molina','pedrom@uicinsuk.com','Dear Sir, Am contacting you to partner with me to secure the life insurance of my late client, to avoid it being confiscated. For more information, please contact me on + 447452275874 or pedrom@uicinuk.com Regards Pedro Molina','1570255204','1570255204','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('10','google','82576224421','AndreasGef','notification@usa-lot','Dear  Winner, Your company email has emerged on our Lottery prize winner database in the month of October 2019 USA online email sweepstakes (Lottery) exhibition programs. You are required to contact our approved paying bank officer/Head of Transfer Department stated below for your lotto prize fund release within 14 working days quoting your winning identification ref number for payment processing: USA-SWEP-10-57655-19. BERMUDA INVESTMENT BANK UK. Email: transferdept@bermudainvestmentbk.c','1570457330','1570457330','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('11','google','85291717282','GeorgeErrok','julie@intergotelecom','Hello there,  This is Julie from SMS.to,  As a licensed telecom company we can offer you unbeatable prices for SMS messaging in Asia and internationally.  We are having a special offer this month for new customers,  Can you point me to the person responsible for marketing to discuss and share my special offer?   Julie Poblador Senior Account Manager sales@sms.to | julie@sms.to http://www.sms.to/ +1 (914) 340-0700 +356 277 610 22 +357 22 000 522 +44 8008085314 ','1571180796','1571180796','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('12','google','88676189661','RobertNased','cbu@cyberdude.com','Hi chxwluo.com admin,   See, ClickBank is going to BREAK the Internet. They&rsquo;re doing something SO CRAZY, it might just tear the Internet at its seams.  Instead of selling our 3-Part &ldquo;ClickBank Breaks The Internet&rdquo; Extravaganza Series&hellip; They&rsquo;re giving it to you at no cost but you need to get it now or it will be gone!  GET YOUR COPY NOW! Download The &ldquo;$1k Commission Manual&quot;: https://1kmanual.com  Here&rsquo;s to kicking off the Fall sea','1571512889','1571512889','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('13','google','82278281833','Rafaelgab','dcbtcsystem@gmail.co','Short-term investments in a global international project based on the blockchain platform! The project is fully automated and decentralized!  All bitcoins are stored on the accounts (bitcoin wallets) of the participants themselves and are transferred to each other using the Bitcoin cryptocurrency.  +10% in 2 days! +1500% per month  3 levels of referral bonuses.  5% 3% 1%  Referral bonuses are paid the next day! Official site:  https://www.crypto-mmm.site   Blo','1571588467','1571588467','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('14','google','89167894511','Davidfoord','qa@mail.dev','Hello! We hasten to congratulate You on your victory in the &quot;Bonus Email&quot; campaign. Our system has chosen Your chxwluo.com among millions of other members. This means that you are already the owner of one of our main prizes - cash, in the amount of 200 to 40,000 dollars, equipment from Apple or Mercedes Car, worth more than 50,000 dollars. To determine what prize You will get, go to the official page of the promotion &quot;Bonus Email&quot; link:  Pick up your prize &gt;&gt','1571686373','1571686373','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('313','google','88312923523','Meinе Еrfоlgsgesсhic','gecekusu_huseyin_198','Mеine Еrfolgsgesсhiсhte. Wie mаn рassivеs Einkоmmen mit nur $ 1000 erziеlt: https://slimex365.com/passiveincomeneuro227049','1578393805','1578393805','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('314','google','87732342447','Meinе Еrfоlgsgesсhic','dorthenp@hotmail.com','Mеine Еrfolgsgesсhiсhte. Wie mаn рassivеs Einkоmmen mit nur $ 1000 erziеlt: https://slimex365.com/passiveincomeneuro227049','1578393811','1578393811','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('315','google','88636661853','Meinе Еrfоlgsgesсhic','sickduck85@hotmail.c','Mеine Еrfolgsgesсhiсhte. Wie mаn рassivеs Einkоmmen mit nur $ 1000 erziеlt: https://slimex365.com/passiveincomeneuro227049','1578393815','1578393815','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('316','google','82199349238','Meinе Еrfоlgsgesсhic','9509570m001@stofanet','Mеine Еrfolgsgesсhiсhte. Wie mаn рassivеs Einkоmmen mit nur $ 1000 erziеlt: https://slimex365.com/passiveincomeneuro227049','1578393818','1578393818','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('317','google','85433629643','Meinе Еrfоlgsgesсhic','dardevil@hotmail.com','Mеine Еrfolgsgesсhiсhte. Wie mаn рassivеs Einkоmmen mit nur $ 1000 erziеlt: https://slimex365.com/passiveincomeneuro227049','1578393821','1578393821','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('318','google','89787242913','Еine Раssive Incоme ','edward664@msn.com','Erfоlgsgеschiсhte im Wert von 10.000 US-Dollаr. Wеg, um $ 10000 pro Моnat im рassivеn Еinкommеn zu vеrdiеnеn: https://slimex365.com/passiveincomeneuro212278','1578396614','1578396614','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('319','google','81688854665','Еine Раssive Incоme ','cimsa@cimsa.com.tr','Erfоlgsgеschiсhte im Wert von 10.000 US-Dollаr. Wеg, um $ 10000 pro Моnat im рassivеn Еinкommеn zu vеrdiеnеn: https://slimex365.com/passiveincomeneuro212278','1578396617','1578396617','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('320','google','85744185486','Еine Раssive Incоme ','anamhs@yahoo.com','Erfоlgsgеschiсhte im Wert von 10.000 US-Dollаr. Wеg, um $ 10000 pro Моnat im рassivеn Еinкommеn zu vеrdiеnеn: https://slimex365.com/passiveincomeneuro212278','1578396619','1578396619','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('321','google','89116222147','Еine Раssive Incоme ','winniee@hotmail.com','Erfоlgsgеschiсhte im Wert von 10.000 US-Dollаr. Wеg, um $ 10000 pro Моnat im рassivеn Еinкommеn zu vеrdiеnеn: https://slimex365.com/passiveincomeneuro212278','1578396625','1578396625','0','0','1');
INSERT INTO `tp_box` (`id`,`company`,`phone`,`name`,`mailbox`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('322','google','84698831433','Еine Раssive Incоme ','totallyhott852004@ho','Erfоlgsgеschiсhte im Wert von 10.000 US-Dollаr. Wеg, um $ 10000 pro Моnat im рassivеn Еinкommеn zu vеrdiеnеn: https://slimex365.com/passiveincomeneuro212278','1578396628','1578396628','0','0','1');

-- ----------------------------
-- Table structure for tp_copy
-- ----------------------------
DROP TABLE IF EXISTS `tp_copy`;
CREATE TABLE `tp_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `copyright` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `record` varchar(255) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of tp_copy
-- ----------------------------
INSERT INTO `tp_copy` (`id`,`copyright`,`website`,`record`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','保定市畅行网络技术有限公司','http://www.chxwluo.com','冀ICP备12020645号-7','1566817119','1567405255','0','0','1');

-- ----------------------------
-- Table structure for tp_culture
-- ----------------------------
DROP TABLE IF EXISTS `tp_culture`;
CREATE TABLE `tp_culture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '父标题',
  `content` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_culture
-- ----------------------------
INSERT INTO `tp_culture` (`id`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','企业文化','保定畅行网络技术有限公司是保定市专业网站建设与网站优化服务的提供商，是保定中小型企业信息化服务商，公司本着&ldquo;诚信为本、变革创新、服务客户、共赢成长&rdquo;的服务宗旨，为中小型企业提供企业建站、行业建站、商城建站、网站优化等服务项目。','1566870446','1566870446','0','0','1');

-- ----------------------------
-- Table structure for tp_file
-- ----------------------------
DROP TABLE IF EXISTS `tp_file`;
CREATE TABLE `tp_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '文件类型，1-image | 2-file',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `original` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of tp_file
-- ----------------------------
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('2','3','/tmp/uploads/20190826/361a15ce16a63214fa2e47c3e1a01623.jpg','banner1.jpg','','image/jpeg','396981','1566794715');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('3','3','/tmp/uploads/20190826/041798c0ae56ad7ad8fef5fb01ae3dee.jpg','banner2.jpg','','image/jpeg','418387','1566795105');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('4','3','/tmp/uploads/20190826/04a294b0dbb6d6ec775e72ebb07d8c19.jpg','banner3.jpg','','image/jpeg','422693','1566795113');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('5','3','/tmp/uploads/20190826/dc8a012d08419468fbfdc2c4a612f7d2.jpg','banner4.jpg','','image/jpeg','900895','1566795285');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('6','3','/tmp/uploads/20190826/77d169704e703471b69adfda0e466af2.jpg','banner5.jpg','','image/jpeg','481292','1566795301');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('7','3','/tmp/uploads/20190826/5400b270a36a9b951ffb3f8ebcd38a80.jpg','index_hezuo6.jpg','','image/jpeg','30475','1566810008');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('8','3','/tmp/uploads/20190826/d3b1305aec9c0fe67f45e6b5dc9bf840.jpg','index_hezuo3.jpg','','image/jpeg','24721','1566810229');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('9','3','/tmp/uploads/20190826/f20c49096a29b6bf284a5fe4019713f5.jpg','index_hezuo4.jpg','','image/jpeg','27814','1566810265');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('10','3','/tmp/uploads/20190826/d7956bf16e2628fa3f56e6e7cd2d0eb5.jpg','index_hezuo5.jpg','','image/jpeg','26613','1566810294');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('11','3','/tmp/uploads/20190826/424e683b5f05e5662065f27be61ec862.jpg','index_hezuo6.jpg','','image/jpeg','30475','1566810345');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('12','3','/tmp/uploads/20190826/8736345196b673dbfb30eb47ac796a01.png','logo.png','','image/png','13779','1566813723');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('13','3','/tmp/uploads/20190826/741583c2c55b7875d9f676bc7cf7ea16.png','index_hezuo6.png','','image/png','27817','1566814018');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('14','3','/tmp/uploads/20190826/5d83b9a082ac60b2be36cdc684b873a0.png','about_2.png','','image/png','190645','1566819320');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('15','3','/tmp/uploads/20190826/5cc4efe4da620838811342e90275a61d.png','about_2.png','','image/png','190645','1566819336');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('16','3','/tmp/uploads/20190826/1ee4a642f3434c69dd397eacf97aaf5d.jpg','2014714212826.jpg','','image/jpeg','349617','1566819346');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('17','3','/tmp/uploads/20190826/697678cd184ff5ab21b3c4c5a3bbfdcc.png','about_2.png','','image/png','190645','1566819378');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('18','3','/tmp/uploads/20190826/585d1d910941aa4b61ca5c52d1d62c46.png','about_1.png','','image/png','200038','1566824790');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('19','3','/tmp/uploads/20190826/526b6203892f161480a629387037766c.jpg','20147142055477.jpg','','image/jpeg','214424','1566825450');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('20','3','/tmp/uploads/20190827/705931ad58db55cb1402ff7df730e852.jpg','20147142055621.jpg','','image/jpeg','233779','1566872502');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('21','3','/tmp/uploads/20190827/7afb2a3159b7efd5365944320099de3f.jpg','20147142055621.jpg','','image/jpeg','233779','1566872512');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('22','3','/tmp/uploads/20190827/f77aabf01a664f2790cb0afefb122dbe.jpg','20147142055101.jpg','','image/jpeg','418403','1566872651');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('23','3','/tmp/uploads/20190827/003d863652261967471dd6899c6b6564.jpg','20147142055900.jpg','','image/jpeg','280453','1566872659');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('24','3','/tmp/uploads/20190827/f0cb3223800fe14a6ea096491ac1015c.png','index_1.png','','image/png','18667','1566878348');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('25','3','/tmp/uploads/20190827/74352867a2c68074809128a41a8322c1.png','index_2.png','','image/png','18950','1566882945');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('26','3','/tmp/uploads/20190827/a7892ad3ddd8068b9ff0f5d4270b675d.png','index_3.png','','image/png','3751','1566883410');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('27','3','/tmp/uploads/20190827/27a61f4ccc7fe3b3ac38e38cb7c51478.png','index_4.png','','image/png','3237','1566883434');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('28','3','/tmp/uploads/20190827/336708acb8471dde15a868341f211b63.png','index_5.png','','image/png','2330','1566883507');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('29','3','/tmp/uploads/20190827/223ace3122d6bc9352d561b1537589c8.jpg','1.jpg','','image/jpeg','152390','1566901857');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('30','1','image/jztt73qw_3zmp6cpf68ao5d6522838035a.jpg','seo.jpg','','image/jpeg','16350','1566909059');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('31','3','/tmp/uploads/20190828/48da9d305a471fb70d454fe2ecdf19e4.png','201474111670.png','','image/png','28461','1566974128');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('32','3','/tmp/uploads/20190828/fab5b946a6c3f653146a8b7cc43da969.png','201474111670.png','','image/png','28461','1566974134');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('33','3','/tmp/uploads/20190828/be8234ec52773710fffcab7447307621.jpg','case_a.jpg','','image/jpeg','42034','1566974154');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('34','3','/tmp/uploads/20190828/c46c8bd47ee8b3870ff742fe9906c519.png','201474111670.png','','image/png','28461','1566974174');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('35','3','/tmp/uploads/20190828/86aeb934eb84e61d2f1770509bcb8544.png','weibo185.png','','image/png','34312','1566974184');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('36','3','/tmp/uploads/20190828/d5309edbeb4743364996410f4e837148.png','201474111670.png','','image/png','28461','1566974366');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('37','3','/tmp/uploads/20190828/e2df7a97429c830cb5352a1420e551ca.png','weibo172.png','','image/png','28557','1566974372');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('38','3','/tmp/uploads/20190828/3e76c550d6e2d1d151518335d4d2ab44.png','qr_code_02.png','','image/png','30699','1566974511');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('39','3','/tmp/uploads/20190828/0a68ca1e4e99e24d49dc68ac752bb8e3.png','weibo185.png','','image/png','34312','1566974517');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('40','3','/tmp/uploads/20190828/528e9d1f0b0cfff34e4067000a68a1a6.jpg','index_hezuo3.jpg','','image/jpeg','24721','1566985662');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('41','3','/tmp/uploads/20190828/b2422e04f86d4217b6e71769e9d32ae0.jpg','index_jianjie.jpg','','image/jpeg','1098333','1566987097');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('42','3','/tmp/uploads/20190828/caa38bdbb5fd35733ec965dfbac820f2.jpg','index_linian.jpg','','image/jpeg','212114','1566987210');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('43','3','/tmp/uploads/20190828/369fa08239aa3a03b0efb97f68e0cbfe.jpg','index_wenhua.jpg','','image/jpeg','59918','1566987313');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('44','3','/tmp/uploads/20190831/c8f8d817b9c7eb7155e72b78c1c78984.png','qr_code_02.png','','image/png','30699','1567221593');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('45','3','/tmp/uploads/20190831/6ee57a0fe3ed339a7e96976dfc481282.png','weibo172.png','','image/png','28557','1567221599');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('46','3','/tmp/uploads/20190831/219abbc0f14c6af0cd97ef131b1afcbb.png','_C__Users_Administrator_Desktop_oya2_index.html_1.png','','image/png','4819145','1567236200');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('47','3','/tmp/uploads/20190831/26c8f94afd3e2c52c42945628d565429.png','TIM图片20190831152254.png','','image/png','15615','1567236211');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('48','3','/tmp/uploads/20190831/cdd3a0c5faf55117f041c50c18aebd5b.png','www.hb-xdl.com_.png','','image/png','3688559','1567236802');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('49','3','/tmp/uploads/20190831/c47ab7722a3b9b21688d575f3bbf532f.jpg','index_hezuo2.jpg','','image/jpeg','10926','1567236882');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('50','3','/tmp/uploads/20190831/7dfa08a965c4c6899c3bf68251315a2c.jpg','index_gp.jpg','','image/jpeg','38602','1567236926');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('51','3','/tmp/uploads/20190831/6b0178becf45146cd83916b3540c863b.jpg','4.jpg','','image/jpeg','38504','1567241205');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('52','3','/tmp/uploads/20190831/e3008399c34c731805c3f558027c0cd1.jpg','储能锂电池-动力锂电池-ECT锂电池-河北鑫动力新能源科技有限公司.jpg','','image/jpeg','4633827','1567241234');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('53','3','/tmp/uploads/20190831/699f5b5bf307d678c0f0d851713c8436.jpg','1.jpg','','image/jpeg','39776','1567241249');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('54','3','/tmp/uploads/20190831/15b4f898cdb4938f09719a35387866b0.jpg','1.jpg','','image/jpeg','39776','1567242882');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('55','3','/tmp/uploads/20190831/49e37837334cccaab7ed772c69a45e70.jpg','3.jpg','','image/jpeg','22614','1567242921');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('56','1','image/jzzcc1jc_3cq9d9pzwow05d6a3d0d6bc3e.jpg','news2.jpg','','image/jpeg','35517','1567243538');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('57','3','/tmp/uploads/20190903/337285d2ece46dab750ee80f5ee2b4f8.jpg','1.jpg','','image/jpeg','13894','1567471511');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('58','3','/tmp/uploads/20190903/b33c85aeb854cc3dc654645c3779aeea.jpg','3.jpg','','image/jpeg','18059','1567471517');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('59','3','/tmp/uploads/20190903/b341ce70c5475231004ab5451aa8bd28.jpg','1.jpg','','image/jpeg','13894','1567471531');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('60','3','/tmp/uploads/20190903/147702936bd528c2eaf49041965bad25.jpg','2.jpg','','image/jpeg','20933','1567471544');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('61','3','/tmp/uploads/20190903/a5c90af442752875daaa180132630a83.png','www.bdgp-led.com_.png','','image/png','2513249','1567473227');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('62','3','/tmp/uploads/20190903/25494c5569d39848c0fd238c7d5c2881.jpg','4.jpg','','image/jpeg','19276','1567473248');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('63','3','/tmp/uploads/20190903/10a4f3617712ecc3162b0eae994f3c90.png','www.bdgp-led.com_.png','','image/png','2513249','1567473259');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('64','3','/tmp/uploads/20190903/fbde67a29461224b12ae2084af6ad000.png','1Y}RPBFUJ]_FGU}CME{30K1.png','','image/png','2917553','1567473717');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('65','3','/tmp/uploads/20190903/34dfdf2ce0020a5a17feed44e11358b6.jpg','微信图片_20190903101709.jpg','','image/jpeg','41256','1567477110');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('66','3','/tmp/uploads/20190903/fc890d03dd47a52fc1d3636e3c580581.jpg','微信图片_20190903101709_gaitubao_172x172 (1).jpg','','image/jpeg','7979','1567477326');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('67','3','/tmp/uploads/20190903/2969d91357af9c38def7905212a4d126.jpg','index_hezuo1.jpg','','image/jpeg','11695','1567492813');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('68','1','image/k062iwe8_1u8o4kkiavwg5d7072103b20b.jpg','dc8a012d08419468fbfdc2c4a612f7d2.jpg','','image/jpeg','900895','1567650325');

-- ----------------------------
-- Table structure for tp_good
-- ----------------------------
DROP TABLE IF EXISTS `tp_good`;
CREATE TABLE `tp_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '父标题',
  `titles` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `content` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_good
-- ----------------------------
INSERT INTO `tp_good` (`id`,`title`,`titles`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','我们的优势','服务','我的网站全新的顾问式服务模式，从网站策划、网站建设实施、网站推广、网站运营、售后服务等等环节，采用专门的客户经理全程跟踪式服务模式，全面改善和建立您的网站系统。我们是站在客户的立场上考虑策划方案的，出发点是中立的、以客户利益为首位的，我们永远不会因为要您购买某项产品和服务而误导您。畅行网络技术有限公司将客户一切资源的所有权都移交客户，让您永无后顾之忧患！','1566869256','1566869256','0','0','1');
INSERT INTO `tp_good` (`id`,`title`,`titles`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','我们的优势','团队','我们是一支融设计、交互、创新、视觉、开发于一体的专业用户体验研发实战派团队，我们一直奋战在一线、向诸多企业提供全方位多平台的互联网解决方案；专业的交互设计、创新理念、视觉呈现，为您提供别样的品牌服务，我们坚持以质量求生存，以信誉促发展；坚持团结稳定，齐心协力做事业；与公司荣辱与共，共同发展，服务大众！以诚实的信念承诺一流的企业服务；实干的精神创造高效的企业业绩！','1566869291','1566869291','0','0','1');
INSERT INTO `tp_good` (`id`,`title`,`titles`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','我们的优势','技术','我的网站一直以来都坚持与时俱进，不断学习新的设计理念和开发技术，我们用最新的设计理念来服务我们的客服，达到良好的用户体验。用最新的开发技术来搭建网站和软件平台，从而为客户提供更加周到、细致、贴心的服务，以至于我们一直走在行业的前沿！我们坚信：创新是人类前进的永恒动力，技术有起点,创新没有终点！创新、务实、高效将是我们畅行网络全体员工永远追求的目标！','1566869321','1566869321','0','0','1');

-- ----------------------------
-- Table structure for tp_infor
-- ----------------------------
DROP TABLE IF EXISTS `tp_infor`;
CREATE TABLE `tp_infor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `titles` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `editorValue` text COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `sort` int(11) NOT NULL COMMENT '排序',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_infor
-- ----------------------------

-- ----------------------------
-- Table structure for tp_links
-- ----------------------------
DROP TABLE IF EXISTS `tp_links`;
CREATE TABLE `tp_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `look_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_links
-- ----------------------------
INSERT INTO `tp_links` (`id`,`name`,`look_name`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','光谱电子','http://www.bdgp-led.com/','1564637515','1566806446','0','0','1');
INSERT INTO `tp_links` (`id`,`name`,`look_name`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','博楷电子科技','https://www.11467.com/qiye/33601816.htm','1564641586','1566806462','0','0','0');
INSERT INTO `tp_links` (`id`,`name`,`look_name`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','辉煌阳光','http://www.bdgp-led.com/ ','1564641597','1566806477','0','0','0');
INSERT INTO `tp_links` (`id`,`name`,`look_name`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','欧亚照明','http://www.bdgp-led.com/','1564641716','1566806504','0','0','0');
INSERT INTO `tp_links` (`id`,`name`,`look_name`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','光谱电子','#','1564641724','1564641724','0','0','0');

-- ----------------------------
-- Table structure for tp_login_log
-- ----------------------------
-- ----------------------------
-- Records of tp_login_log
-- ----------------------------
-- ----------------------------
-- Table structure for tp_login_num
-- ----------------------------
-- ----------------------------
-- Records of tp_login_num
-- ----------------------------
-- ----------------------------
-- Table structure for tp_logo
-- ----------------------------
DROP TABLE IF EXISTS `tp_logo`;
CREATE TABLE `tp_logo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `logo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'logo图',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(11) DEFAULT '0',
  `status` tinyint(10) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_logo
-- ----------------------------
INSERT INTO `tp_logo` (`id`,`logo`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','/tmp/uploads/20190826/8736345196b673dbfb30eb47ac796a01.png','1564627534','1566813725','0','0','1');
INSERT INTO `tp_logo` (`id`,`logo`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','/tmp/uploads/20190826/741583c2c55b7875d9f676bc7cf7ea16.png','1566814020','1566814020','0','0','1');

-- ----------------------------
-- Table structure for tp_mode_contact
-- ----------------------------
DROP TABLE IF EXISTS `tp_mode_contact`;
CREATE TABLE `tp_mode_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司名称',
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '地址',
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '电话',
  `move` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '手机',
  `fax` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '传真',
  `site` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '网址',
  `affairs` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '商务合作',
  `recruit` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '招聘',
  `wechat_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '微信',
  `blog_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '微博',
  `qq` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'QQ',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_mode_contact
-- ----------------------------
INSERT INTO `tp_mode_contact` (`id`,`name`,`url`,`phone`,`move`,`fax`,`site`,`affairs`,`recruit`,`wechat_img`,`blog_img`,`qq`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','保定市畅行网络技术有限公司','河北省保定市北二环5699号大学科技园1号楼B区3楼','0312-6783108','13730299917','0312-6783108','http://www.chxwluo.com','http://www.bdgp-led.com/','chxwluo@163.com','/tmp/uploads/20190903/fc890d03dd47a52fc1d3636e3c580581.jpg','/tmp/uploads/20190831/6ee57a0fe3ed339a7e96976dfc481282.png','2176456995','1567221649','1567477327','0','0','1');

-- ----------------------------
-- Table structure for tp_mode_ride
-- ----------------------------
DROP TABLE IF EXISTS `tp_mode_ride`;
CREATE TABLE `tp_mode_ride` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '父标题',
  `content` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_mode_ride
-- ----------------------------
INSERT INTO `tp_mode_ride` (`id`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','乘车路线&mdash;&mdash; 公交','公交站牌：保定东站（西北出站口）步行至 保定东站公交站&mdash;&mdash;游3路（开往高科产业园方向） 下车A口出,xxxxx，xxxxxxx便是。','1567221790','1567228463','0','0','0');
INSERT INTO `tp_mode_ride` (`id`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','乘车路线 &mdash;&mdash; 火车','公交站台：xxxx西桥 车次：xx路; xx路; xx路; xx路; xx路; xx路; xx路; 运通xx线; 专xx路 公交站台：xxx北 车次：xx路; xx路; xxx路; xxx路; xxx路; xx路; xx路; xxx外','1567221808','1567221808','0','0','0');
INSERT INTO `tp_mode_ride` (`id`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','乘车路线 &mdash;&mdash; 自驾','地铁20号线（xxx站） xxxxx下车A口出,xxxxx，xxxxxxx便是。','1567221823','1567221823','0','0','0');

-- ----------------------------
-- Table structure for tp_navber
-- ----------------------------
DROP TABLE IF EXISTS `tp_navber`;
CREATE TABLE `tp_navber` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `bk_name` varchar(50) NOT NULL COMMENT '导航名字',
  `bk_href` varchar(255) NOT NULL COMMENT '导航链接',
  `icon` varchar(50) NOT NULL COMMENT '小图标',
  `sort` int(11) NOT NULL COMMENT '排序',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) NOT NULL COMMENT '编辑时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of tp_navber
-- ----------------------------
INSERT INTO `tp_navber` (`id`,`bk_name`,`bk_href`,`icon`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','网站首页','index','','1','1566803301','1567150682','0','0','1');
INSERT INTO `tp_navber` (`id`,`bk_name`,`bk_href`,`icon`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','关于我们','abouts','','2','1566803479','1566980852','0','0','1');
INSERT INTO `tp_navber` (`id`,`bk_name`,`bk_href`,`icon`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','服务项目','service','','3','1566803520','1566980842','0','0','1');
INSERT INTO `tp_navber` (`id`,`bk_name`,`bk_href`,`icon`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','案例展示','anli','','4','1566803552','1566980837','0','0','1');
INSERT INTO `tp_navber` (`id`,`bk_name`,`bk_href`,`icon`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','新闻动态','news','','5','1566803592','1578446333','0','0','1');
INSERT INTO `tp_navber` (`id`,`bk_name`,`bk_href`,`icon`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('6','联系我们','contact','','6','1566803603','1578446337','0','0','1');

-- ----------------------------
-- Table structure for tp_newd
-- ----------------------------
DROP TABLE IF EXISTS `tp_newd`;
CREATE TABLE `tp_newd` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `titles` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `sort` int(11) NOT NULL COMMENT '排序',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_newd
-- ----------------------------
INSERT INTO `tp_newd` (`id`,`titles`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','公司动态','1','公司动态-保定网站建设-保定网站优化-畅行网络官网首页','这是本公司提供的一些关于网站建设，网站优化方面的新闻。','','1566955966','1567651151','0','0','1');
INSERT INTO `tp_newd` (`id`,`titles`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','行业资讯','2','行业资讯-保定网站建设-保定网站优化-畅行网络官网首页','这是本公司提供的一些关于网站建设，网站优化方面的新闻。','','1566957633','1568886371','0','0','1');
INSERT INTO `tp_newd` (`id`,`titles`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','高端网站','3','','','','1567058805','1567157284','0','1','0');

-- ----------------------------
-- Table structure for tp_news
-- ----------------------------
DROP TABLE IF EXISTS `tp_news`;
CREATE TABLE `tp_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `head` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '父标题',
  `fid` int(11) NOT NULL COMMENT '父级ID',
  `titles` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `editorValue` text COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `sort` int(11) NOT NULL COMMENT '排序',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_news
-- ----------------------------
INSERT INTO `tp_news` (`id`,`head`,`fid`,`titles`,`editorValue`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','公司动态','1','影响百度网页快照优化排名的因素','&lt;nav&gt;&lt;h3&gt;一、修改TDK&lt;/h3&gt;				　　&lt;p&gt;有些客户会觉得自己网站的TDK没有设置好，后期因为业务或产品等某些原因，频繁的修改网站的标题关键词描述，导致百度蜘蛛抓取异常，百度为了稳定自己的数据库，会把调取网站之前的某次快照，直至百度观察本次更改稳定后，才会择期更新百度快照。&lt;/p&gt;&lt;/nav&gt;&lt;nav&gt;&lt;h3&gt;二、文章内容差&lt;/h3&gt;				　　&lt;p&gt;有些网站没有专业的编辑，单纯是从其他网站上抄袭文章，这种操作方法可能刚开始百度会进行收录，但是后			面百度会把网站内容与网络内容进行对比，如果发现大量的抄袭内容，百度也会对本站已经收录的文章内容进行			释放，导致网站收录内容减少，严重的会造成快照倒退。&lt;/p&gt;&lt;/nav&gt;&lt;nav&gt;&lt;h3&gt;三、网站更新慢&lt;/h3&gt;				　　&lt;p&gt;有些客户的网站主要做的是产品展示，所以也就没有了新闻资讯等有质量的内容更新，这样的话，百度快照会			回退到更新的那次快照。这种网站一般排名都不会太好，所以为了让百度给网站更好的排名，更高的评分，各位			站长还需多做原创内容啊。&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://7j1y9l.com1.z0.glb.clouddn.com/image/jztt73qw_3zmp6cpf68ao5d6522838035a.jpg&quot; title=&quot;seo.jpg&quot; alt=&quot;seo.jpg&quot; width=&quot;357&quot; height=&quot;158&quot;/&gt;&lt;/p&gt;&lt;/nav&gt;&lt;nav&gt;&amp;nbsp; &amp;nbsp;				　　&lt;h3&gt;四、外链质量低&lt;/h3&gt;				　　&lt;p&gt;想当年百度对外链的重视程度不亚于现在对原创文章的重视度，于是各种一键发外链的工具如雨后春笋般应			运而生，但是随之而来的，是百度对各种违规外链的打压。快速发外链会在短时期内发布数以千计的外链，但是			如果百度对垃圾外链进行清算的话，就会造成网站外链大量的减少，进而影响到百度快照的更新。&lt;/p&gt;&lt;/nav&gt;&lt;nav&gt;&amp;nbsp; &amp;nbsp;				　　&lt;h3&gt;五、服务器不稳定&lt;/h3&gt;　&lt;p&gt;这个因素引起的很常见，如果你空间频繁打不开或者打开速度相当慢的话，会影响百度蜘蛛进行正常											抓取。当蜘蛛多次抓取不了的话，会产生不信任感，于是就会屏蔽你的网站。有能力的站长可以查												询一下网站日志，如果蜘蛛来访的产生了500或者503代码，就代码您的空间不稳定。&lt;/p&gt;&lt;/nav&gt;','1','影响百度网页快照优化排名的因素-公司动态-畅行网络官网首页','有些客户会觉得自己网站的TDK没有设置好，后期因为业务或产品等某些原因，频繁的修改网站的标题关键词描述，导致百度蜘蛛抓取异常。','','1566908646','1567651557','0','0','1');
INSERT INTO `tp_news` (`id`,`head`,`fid`,`titles`,`editorValue`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','公司动态','1','网站优化和排名-百度算法','&lt;p style=&quot;margin-top: 70px; line-height: 50px;&quot;&gt;据悉，随着百度绿萝算法及石榴算法的相继发布，包括一诺互联在内的网站受到了很多冲击，也给很多的优化人员开始觉得做排名越来越难，外链为皇的时代，好像一去不复返了。在加上PPC对仅有排名中，流量的抢占，竞争开始越来越激烈，所以我们现在的网站优化人员必须要提升自己的创新思维，用心的完善网站，根据百度更新的规则，对网站进行改进。要想在网站优化上取得成绩，必须不断的学习，下面就给大家简单的介绍如何应对百度算法更新的？&lt;/p&gt;&lt;h3&gt;一、了解百度优化原理&lt;/h3&gt;&lt;p&gt;百度针对站长推出了百度优化指南，在指南中明确指出，要想提升用户体验，必须从网站内容以及外链上出发。用户体验是一个比较关键的问题，我们不能仅仅只理解表面的内容，还要深度分析细节。只有用户体验提升了，网站的排名才会有所提升。在优化用户体验时，需要网站优化人员具有一定的创新思维。&lt;/p&gt;&lt;h3&gt;二、要了解用户需要的内容&lt;/h3&gt;&lt;p&gt;在进行优化的时候，我们需要借助一些问答平台，比如百度知道、天涯等等，这些问答平台的人气非常高，我们可以通过用户的问答分析用户的需求，然后根据这些创造内容，满足用户的需求，同时还能保持文章新颖，这样做优化能达到事半功倍的效果。&lt;/p&gt;&lt;h3&gt;三、抓住社会热点更新内容&lt;/h3&gt;&lt;p&gt;互联网时代消息是很灵通的，我们可以根据一些时事新闻来写文章，这样会吸引用户的眼球，减少网站的跳出率。一般来说最近发生了什么，就写什么，而且题目要有一定的创意，让用户觉得有吸引力。&lt;/p&gt;&lt;h3&gt;四、把握以用户体验为主&lt;/h3&gt;&lt;p&gt;在进行网站优化的时候，需要一定的创新意识，但是不能偏离搜索引擎的算法原理，也不能偏离搜索引擎以用户体验为主的原理，否则将会受到百度的惩罚。我们必须按照用户的需求来写，让用户喜欢才能提升网站排名。&lt;/p&gt;&lt;h3&gt;五、长期坚持就能获得成功&lt;/h3&gt;&lt;p&gt;做网站优化不仅仅是按部就班、长期坚持就能获得成功的，我们还要注意搜索引擎的算法更新。如果一直按照一种思路进行优化，而不去创新，那么网站很快就会被搜索引擎放弃。要敢于尝试，从优化指南中找到一些细节内容，然后去实现它，应用的好就能为网站加分。&lt;/p&gt;','2','网站优化和排名-百度算法-公司动态-畅行网络官网首页','据悉，随着百度绿萝算法及石榴算法的相继发布，包括一诺互联在内的网站受到了很多冲击，也给很多的优化人员开始觉得做排名越来越难，外链为皇的时代，好像一去不复返了。','','1566910317','1567651507','0','0','1');
INSERT INTO `tp_news` (`id`,`head`,`fid`,`titles`,`editorValue`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','行业资讯','2','如何简单快速的创建网站，让您的业务上线','&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;如何创建一个网站有很多方法。您可以使用HTML或其他工具创建它。如果你打算使用HTML，你必须精通使用那里的所有编程语言。除了HTML以外，另一个可以帮助你的工具是Dreamweaver。上述工具可以帮助您快速创建您的网站，以及在您构建网站时协助 CSS和HTML。另一种更快创建网站的方式是通过在线网站建设者的帮助。这种在线工具并不要求您也熟悉编码。那么，如何快速轻松地在在线网站建设者的帮助下创建自己的网站？它非常简单，你只需要按照创建你的网站的三个基本步骤。&lt;br/&gt;如何在网上建设者的帮助下轻松创建您的网站：&lt;br/&gt;&lt;/p&gt;&lt;h3 style=&quot;margin: 0px; padding: 0px; font-size: 22px; font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1.注册您的域名。确保它会反映和定义你为什么建立一个网站的目的&lt;/h3&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;域名注册是迈向梦想网站的第一步。这将是您网站的地址。当您通过域名注册商注册时，您必须付费才能获得使用该域名的所有权利，并确保没有人可以继续使 用该域名。&lt;/p&gt;&lt;h3 style=&quot;margin: 0px; padding: 0px; font-size: 22px; font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.从网络托管服务获得优质服务。不要浪费你的钱。瞄准最好的他们中的最好的。&lt;/h3&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;当您从一个好的网络主机获得网络托管服务的帮助时，该网络托管服务器就像是给您的网站提供一个贴心的家。您的网页将存储在服务器上，并可以成功地 向访问者提供服务。&lt;/p&gt;&lt;h3 style=&quot;margin: 0px; padding: 0px; font-size: 22px; font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;3.设计你的网站。要有创意并利用互联网上的模板和可用设计。&lt;/h3&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;如果你真的想要最好的网页设计，并且你知道你不能自己做，那么就聘请一位网页设计师的专业服务，但你必须支付一定数额的美元。创建具有拖放功能的网站是需求最大的，吸引人的和令人兴奋的网站。这就像给你的网站一个生命和运动。不仅如此，你永远也不需要知道所有关于CSS，HTML或任何技术的东西。您只需从多种预定义模板中选择一种，然后填写所需的所有文字以及其他内容 （如视频，图像，地图等），然后单击发布并瞧！您的网站现在可在互联网上使用。 有一些托管服务提供商在那里提供并允许用户使用免费试用来制作他们的网站而无需支付任何费用。你所要做的就是在选择它们时要明智。我们希望这个如何创 建一个网站的提示非常有用。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','3','如何简单快速的创建网站，让您的业务上线-行业资讯-畅行网络官网首页','如何创建一个网站有很多方法。您可以使用HTML或其他工具创建它。如果你打算使用HTML，你必须精通使用那里的所有编程语言。','','1566910401','1567651478','0','0','1');
INSERT INTO `tp_news` (`id`,`head`,`fid`,`titles`,`editorValue`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','行业资讯','2','『页面设计』　如何巧用色彩打造动人心弦的网页设计','&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;根据Kissmetrics 的说法，当我们看到一个色彩的时候，信息会传递到大脑的下丘脑的某个区域中。接下来，信号会进一步传递到脑垂体，然后到甲状腺腺体。这也就意味着，色彩会刺激大脑和腺体分泌激素，引发出我们的情绪反应，并影响我们的行为。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;科学研究表明，色彩会影响情绪，会招致正面的情绪，也能带来负面的影响，有的时候带来的情绪与实际要的并不匹配。Kissmetrics 接着补充道，网站的访客通常只需要大概90秒就能针对一个网站作出判断和选择，而在者其中，有62%~90%的因素是取决于某个产品的色彩。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;色彩意味着什么每种色彩对于每个人而言都有着特定的含义，但是它的具体含义通常取决于他们所处的文化背景、个人经历和喜好。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','4','','','','1566910417','1567244927','0','0','1');
INSERT INTO `tp_news` (`id`,`head`,`fid`,`titles`,`editorValue`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','公司动态','1','怎样做好有价值的网站？','&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;在此，根据多年来的市场调查与实践，总结出做好网站需要注意以下几点内容：&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;首先，我们要对网站有一个清晰的认识。例如：门户网站必须有丰富的内容，做到及时更新快讯、图片以及视频等;专业性质的网站必须做到&ldquo;精、深、细&rdquo;，为所在领域提供专业的、前沿性的知识。当然，这些都是建立在网友需求调查的基础之上，这样才可以了解受众需求，是网站更好的服务于网友。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;其次，从网站实用的角度看，&amp;quot;把网站当成数据库&amp;quot;的概念已经并非重点;毕竟，门户网站、专业网站均可以为网友提供的专业、丰富的信息，满足网友的各种信息需求，人们就可以象数据库一样进行搜索。可见，网站的特色很重要，要通过受众群体的不同来定位;像济南在线网站，主要针对的是房产、汽车这两种特殊群体，为其提供独具特色的各种信息。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;再次，从网站营销的视点看，就是通过各种有效的手段推广网站知名度，提升网站访问量。这主要从关键字、网站及页面标题描述、网站的各种链接，甚至是竞价排名来提升网站流量。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;麦肯锡--是全球最大的战略咨询公司的总裁,他在一书叫《麦肯锡意识》中提到 &ldquo;麦肯锡并不神秘，方法论铸就神奇&rdquo;，这位传奇人物给我们强调的是思维, 思维范畴的内容，并不对职业领域进行限定.同样,我们做网站建设并不神秘, 方法论铸就神奇!&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','3','怎样做好有价值的网站？-公司动态-畅行网络官网首页','首先，我们要对网站有一个清晰的认识。例如：门户网站必须有丰富的内容，做到及时更新快讯、图片以及视频等;专业性质的网站必须做到&ldquo;精、深、细&rdquo;，为所在领域提供专业的、前沿性的知识。当然，这些都是建立在网友需求调查的基础之上，这样才可以了解受众需求，是网站更好的服务于网友。','','1567046829','1567651432','0','0','1');
INSERT INTO `tp_news` (`id`,`head`,`fid`,`titles`,`editorValue`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('6','行业资讯','2','选择网站空间应该从哪些方面着手','&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;网站空间作为一个网站的母体，无疑极为关键，也是网站能否持续运营的核心要素。正是如此越来越多的站长开始注意到网站空间的重要性，于是在投资上也乐意增加一些，从而让网站空间的速度更快一点，安全更高一点。但是笔者认为网站空间的选择不能够简单的以价格来进行衡量，而是要注重和运营网站内容的融合，这样才能够更好的发挥网站空间的作用。那么如何才能够选择一个合适自己的网站空间呢?涉及到的要素相对较多，笔者在这里重点分析三个方面的要素。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;第一，结合网站运营内容选择空间大小。很多站长朋友认为网站的空间自然是越大越好，于是不管自己运营的网站是什么类型，就开始选择多达几十G的空间，导致每年的租赁费用都要超过数千元甚至上万元。可是这样的投资划算吗?如果我们能够充分了解到自己网站类型更多是做一些文字类型的博客，比如类似IT自媒体等独立博客网站，那么我们选择几百M的空间就已经足够。除非你准备做一些图片网站，或者是视频类型的网站。另外有些站长将网站空间大小和网站速度快慢等同起来，认为网站空间越大，那么网站的访问速度就会越快。而这种认识显然是错误的。一般来说服务器的磁盘空间可以进行更多的扩展，但是服务器的访问速度的提升却受到带宽和计算机CPU和内存大小的限制。而网站的访问速度快慢对于用户体验度有着更高的影响，那么我们在选择网站空间时，应该将更多精力放在对服务器性能以及带宽等参数的考量，从而选择更具性价比的网站空间。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;第二，网站空间的安全性很重要。虽然我们可以通过备份网站内容来防范网站空间损坏或者被黑客攻击之后的恢复问题。但是如果一个网站空间的安全性不能够保障，那么对于网站的运营显然会造成巨大的危害。一般来说要想购买更具安全性的网站空间，可以从两个方面来进行。首先是选择品牌空间服务商。一般来说品牌能够给消费者带来一定的信誉度，拥有品牌的空间服务商一般不会轻易的通过以次充好来销售给消费者，否则受到用户的投诉，特别是在互联网上的投诉，往往会给空间服务商带来更多的负面影响。从而给这些空间服务商的品牌属性带来伤害，然后就是要通过对服务器主要参数进行分析，查看服务器是否安装了国际上知名的服务器版的杀毒软件和防火墙，是否具备双击热备份功能，服务器是否采用了磁盘阵列的方式进行运营。这样就能够有效提升服务器自身的安全和稳定性，从而保障网站空间的安全和稳定。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;第三，要注重细节。买网站空间实际上和买一个房子类似，要进行严格细致的分析才能够让网站能够存储在更加安全和快捷的空间中。比如在购买时，就可以注意网站空间是否具备404页面设置功能，是否具有301跳转功能。另外要选择能够支持子目录绑定空间的功能，同时还要检查是否具备ISP访问兼容的问题，另外对于数据库的支持情况，是采用PHP架构还是ASP架构等。要对这些技术细节进行了解，才能够让站长在建设网站时有着明确的方向，少走弯路。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 50px; padding: 0px; line-height: 30px; text-indent: 2em; font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;总之网站空间的选择极为关键，价格不是决定网站空间选择的唯一要素，只有选择合适自己网站内容的空间才是选择网站空间的唯一标准。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','5','选择网站空间应该从哪些方面着手-行业资讯-畅行网络官网首页','网站空间作为一个网站的母体，无疑极为关键，也是网站能否持续运营的核心要素。正是如此越来越多的站长开始注意到网站空间的重要性，安全更高一点。','','1567046842','1567651391','0','0','1');
INSERT INTO `tp_news` (`id`,`head`,`fid`,`titles`,`editorValue`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('7','公司动态','1','啊啊啊啊','&lt;p&gt;啊啊啊&lt;/p&gt;','50','','','','1567058834','1567058834','0','0','0');
INSERT INTO `tp_news` (`id`,`head`,`fid`,`titles`,`editorValue`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('8','行业资讯','2','1111','&lt;p&gt;2222&lt;/p&gt;','4','','','','1567130982','1567130982','0','0','0');
INSERT INTO `tp_news` (`id`,`head`,`fid`,`titles`,`editorValue`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('9','高端网站 定制网站','3','111111111111','&lt;p&gt;111111111111&lt;/p&gt;','50','','','','1567152070','1567152070','0','0','0');
INSERT INTO `tp_news` (`id`,`head`,`fid`,`titles`,`editorValue`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('10','行业资讯','2','高端网站建设关键点','&lt;p&gt;随着互联网的不时开展，网站建立逐步被各大公司企业所注重，那么今天小编就来为大家引见一下高端网站建立的关键点。&lt;/p&gt;&lt;p&gt;1形象展现&lt;/p&gt;&lt;p&gt;塑造良好的公司形象是企业网站的重要功用作用之一，企业网站是展现企业实力、提升企业网络影响力的重要手腕。经过网站，能够很好地塑造企业形象，选择高端网站建立，提升网站整体的质量。专业网站制造浅显的来说就是网站经过页面构造定位，合理规划，图片文字处置，程序设计，数据库设计等一系列工作的总和，也是将网站设计师的图片用HTML方式展现出来，属于前端工程师的一项任务，前端工程师任务包括：网站设计、网站用户体验、网站JAVA效果、网站制造等工作。网站制造是筹划师、网络程序员、网页设计等岗位，应用各种网络程序开发技术和网页设计技术，为企事业单位、公司或个人在全球互联网上建立站点，并包含域名注册和主机托管等效劳的总称。&lt;/p&gt;&lt;p&gt;2技术&lt;/p&gt;&lt;p&gt;高端网站建立需求契合WEB2.0规范，w3c规范。这是目前互联网网站的根本条件。而且网站的功用要全面，包括能够发布站点资讯，行业新闻动态，能够让客户会员登录，停止会员操作和发表留言意见。&lt;/p&gt;&lt;p&gt;3信息发布和传播功用&lt;/p&gt;&lt;p&gt;网站是企业的一个网络展现的平台，企业能够将本人的公司信息和产品信息借助完好发布进来，让更多网络用户理解企业，理解企业的产品或效劳。网站制造是一项很复杂的工程，网站制造从大的一方面讲能够称之为是生物学的持续，是工程学的集中表现。但网站制造，更是一个深化浅出的过程。&lt;/p&gt;&lt;p&gt;4在线沟通&lt;/p&gt;&lt;p&gt;传统的企业和目的客户之间常常存在这一定的间隔感，网络的衔接性正好能够克制这个问题，企业经过网站的在线沟通功用，能够和真正的用户之间完成互动，更多的理解用户的真实需求，更好满足用户需求&lt;/p&gt;&lt;p&gt;5用户体验&lt;/p&gt;&lt;p&gt;网站设计契合用户体验，由于一个网站设计出来是展现本人的产品和公司信息的，而网站设计好就是给客户看的，网站的外观会影响客户的心情和信任度。所以网站的体验度，十分的重要。&lt;/p&gt;&lt;p&gt;6SEO&lt;/p&gt;&lt;p&gt;如今的网站不只是用来展示信息，而是一个功用强大的交互平台。网站设计必需运用SEO优化技术。网站设计完成后，存在于互联网，为了能使网站被搜索引擎快速的收录，并且具有高质量的用户体验度，需求对网站停止搜索引擎优化和根本的网站优化推行工作。假如在高端网站建立的初期就将SEO技术加以运用，能够起到事半功倍的效果。&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://7j1y9l.com1.z0.glb.clouddn.com/image/k062iwe8_1u8o4kkiavwg5d7072103b20b.jpg&quot; title=&quot;dc8a012d08419468fbfdc2c4a612f7d2.jpg&quot; alt=&quot;畅行网络&quot; width=&quot;400&quot; height=&quot;200&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;畅行网络&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','1','高端网站建设关键点-行业资讯畅行网络官网首页','随着互联网的不时开展，网站建立逐步被各大公司企业所注重，那么今天小编就来为大家引见一下高端网站建立的关键点。','','1567650154','1567651339','0','0','1');
INSERT INTO `tp_news` (`id`,`head`,`fid`,`titles`,`editorValue`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('11','公司动态','1','保定哪家网络公司做网站做的好','&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; color: rgb(0, 0, 0);&quot;&gt;保定市畅行网络技术有限公司以良好的商业信誉，完善的服务及深厚的技术力量，以客户服务为中心，专业为客户量身打造客户喜欢的网站平台。客户满意度是我们永恒的追求。我们通过敏锐的洞察和智慧，利用色彩、构图和思想,为您量身打造适身合体的设计，用纯粹的创意精神去指导工作与生活，以激情奔放的热情去实现欲望与理想，让您体验圆满理想的品牌服务！&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0); font-size: 14px;&quot;&gt;&lt;span style=&quot;position: relative; z-index: 3; color: rgb(62, 62, 62); font-family: &amp;quot;Microsoft Yahei&amp;quot;;&quot;&gt;保定市畅行网络技术有限公司&lt;br/&gt;&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;position: relative; z-index: 3; color: rgb(62, 62, 62); font-family: &amp;quot;Microsoft Yahei&amp;quot;;&quot;&gt;中国知名的网络品牌策划、网络品牌形象设计、软件界面设计与网页开发的公司，专门致力于企业网站建设、高端品牌形象设计、交互设计、视觉设计、移动网站界面设计与开发、用户体验于一体的专业互联网服务。我们面向全国的中小企业提供全方位的企业信息化解决方案，我们多年以来已成功地为多家知名企事业单位、政府机关提供了网络建设及解决方案及互联网服务。我的网站以良好的商业信誉，完善的服务及深厚的技术力量，以客户服务为中心，专业为客户量身打造客户喜欢的网站平台。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;position: relative; z-index: 3; color: rgb(62, 62, 62); font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 12px;&quot;&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;; position: relative; z-index: 3; font-size: 16px;&quot;&gt;客户满意度是我们永恒的追求！&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;position: relative; z-index: 3; color: rgb(62, 62, 62); font-family: &amp;quot;Microsoft Yahei&amp;quot;; font-size: 14px;&quot;&gt;我们通过敏锐的洞察和智慧，利用色彩、构图和思想,为您量身打造适身合体的设计，用纯粹的创意精神去指导工作与生活，以激情奔放的热情去实现欲望与理想，&lt;br/&gt;&lt;br/&gt;让您体验圆满理想的品牌服务！&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;','50','','','','1567995221','1567995221','0','0','1');

-- ----------------------------
-- Table structure for tp_node_map
-- ----------------------------
DROP TABLE IF EXISTS `tp_node_map`;
CREATE TABLE `tp_node_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '节点图描述',
  PRIMARY KEY (`id`),
  KEY `map` (`method`,`module`,`controller`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点图';
-- ----------------------------
-- Records of tp_node_map
-- ----------------------------

-- ----------------------------
-- Table structure for tp_number
-- ----------------------------
-- ----------------------------
-- Records of tp_number
-- ----------------------------
-- ----------------------------
-- Table structure for tp_one_two_three_four
-- ----------------------------
DROP TABLE IF EXISTS `tp_one_two_three_four`;
CREATE TABLE `tp_one_two_three_four` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '四级控制器主键',
  `field1` varchar(255) DEFAULT NULL COMMENT '字段一',
  `option` varchar(255) DEFAULT NULL COMMENT '选填',
  `select` varchar(255) DEFAULT NULL COMMENT '下拉框',
  `radio` varchar(255) DEFAULT NULL COMMENT '单选',
  `checkbox` varchar(255) DEFAULT NULL COMMENT '复选框',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `textarea` varchar(255) DEFAULT NULL COMMENT '文本域',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sort` smallint(5) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='四级控制器';
-- ----------------------------
-- Records of tp_one_two_three_four
-- ----------------------------
INSERT INTO `tp_one_two_three_four` (`id`,`field1`,`option`,`select`,`radio`,`checkbox`,`password`,`textarea`,`date`,`mobile`,`email`,`sort`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('1','yuan1994','tpadmin','2','1','','2222','https://github.com/yuan1994/tpadmin','2016-12-07','13012345678','tianpian0805@gmail.com','50','1','0','1481947278','1481947353');

-- ----------------------------
-- Table structure for tp_service
-- ----------------------------
DROP TABLE IF EXISTS `tp_service`;
CREATE TABLE `tp_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片',
  `titles` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '客户名称',
  `editorValue` text COLLATE utf8_unicode_ci NOT NULL COMMENT '网络定位',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_service
-- ----------------------------
INSERT INTO `tp_service` (`id`,`title`,`img`,`titles`,`editorValue`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','品牌网站建设','/tmp/uploads/20190827/f0cb3223800fe14a6ea096491ac1015c.png','企业官网建设 创意网站建设 电子商务网站','&lt;p style=&quot;font-family:&amp;#39;Microsoft Yahei&amp;#39;;background-color:#FFFFFF;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;网站建设包括网站策划、网页设计、网站功能、网站优化技术、网站内容整理、网站推广、网站评估、网站运营、网站整体优化、网站改版等。网站建设的前期准期网站定位、内容差异化、页面沟通等战略性调研，这些确立后，再去注册域名、租用空间。&lt;/p&gt;&lt;p style=&quot;font-family:&amp;#39;Microsoft Yahei&amp;#39;;background-color:#FFFFFF;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;font-family:&amp;#39;Microsoft Yahei&amp;#39;;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#454545;font-family:&amp;#39;Microsoft Yahei&amp;#39;, 微软雅黑, Tahoma, Verdana, Arial, Helvetica, sans-serif;font-size:12px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 企业网站是大型集团面向新老客户、业界人士及全社会的窗口。集团网站通常将集团日常工作，及营销活动、技术支持、售后服务、物料采购、社会公共关系处理等结合。集团网站涵盖的工作类型多，信息量大，访问群体广，信息更新需要多个部门共同完成。集团网站有利于社会对企业的全面了解。&lt;/span&gt;&lt;span style=&quot;color:#454545;font-family:&amp;#39;Microsoft Yahei&amp;#39;, 微软雅黑, Tahoma, Verdana, Arial, Helvetica, sans-serif;line-height:24px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;line-height:24px;font-size:14px;color:#454545;font-family:&amp;#39;Microsoft Yahei&amp;#39;, 微软雅黑, Tahoma, Verdana, Arial, Helvetica, sans-serif;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;color:#454545;font-family:&amp;#39;Microsoft Yahei&amp;#39;, 微软雅黑, Tahoma, Verdana, Arial, Helvetica, sans-serif;font-weight:normal;font-size:16px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;我们始终认为好的设计&lt;/span&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;是帮助企业展现自己最重要的一步，而网站设计的好坏直接取决于设计师的网页设计与制作经验。本公司网站设计师平均网页设计工作经验达到四年以上，他们拥有丰富的设计经验，有着自己独特的见解，会依据客户的要求，融入自己丰富的经验，给出适合客户的个性化方案和建议，从而为客户网站的完成起到真正的保障。&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;font-family:&amp;#39;Microsoft Yahei&amp;#39;;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 品牌网站着重通过优秀设计，传达其品牌；需要良好的用户体验策划，提升访客体验；并最终提升综合互联网品牌影响力。本类型网站着重展示企业CI、传播品牌文化、提高品牌知名度。对于产品品牌众多的企业，可以单独建立各个品牌的独立网站，以便市场营销策略与网站宣传统一。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-family:&amp;#39;Microsoft Yahei&amp;#39;;background-color:#FFFFFF;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;企业电子商务网站以产品销售为目的，需要对运营情况和用户购买行为数据&lt;/span&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;适时分析，制定个性化的营销网站建设方案&lt;/span&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;进行新品介绍、主题活动、阶段主题推广的最好的形式。我们不但会根据客户需求进行创意&lt;/span&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;制作，更利用社会化媒体营销的优势使Minisite被最大化的传播，达到最佳活动效果。&lt;/span&gt;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-size:12px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 品牌网站着重通过优秀设计，传达其品牌；需要良好的用户体验策划，提升访客体验；并最终提升综合互联网品牌影响力。本类型网站着重展示企业CI、传播品牌文化、提高品牌知名度。对于产品品牌众多的企业，可以单独建立各个品牌的独立网站，以便市场营销策略与网站宣传统一。&lt;/span&gt;&lt;/p&gt;','1566878370','1566952209','0','0','1');
INSERT INTO `tp_service` (`id`,`title`,`img`,`titles`,`editorValue`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','高端网站定制','/tmp/uploads/20190827/74352867a2c68074809128a41a8322c1.png','高端网站 定制网站','&lt;p class=&quot;p0&quot;&gt;什么定制网站？&lt;/p&gt;&lt;p class=&quot;p0&quot; style=&quot;text-indent:18pt;&quot;&gt;定制网站：针对企业进行重新策划、方案书写、重新设计、重新功能开发的网站制作，说的简单一点，就是根据企业的产品特点、宣传推广量身订做网站定制网站区别于模板网站与套餐网站，套餐网站与模板网站后台功能都是事先开发好的，无法更改的，而且定制网站是功能按客户要求开发的。&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;定制网站的好处&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;1.网站所有权&lt;br/&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp;归属于客户网站仅收取一次性的费用，但网站所有权归属于客户。日后便于维护自己的合法权益。&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;2.独特的风格&lt;br/&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp;网页的设计风格可依客户的需求量身打造。界面设计在吸引用户眼球方面扮演着举足轻重的角色。平庸的网站让人感觉乏味，而极具表现力的网站则让人眼前一亮，尤其在访问者访问几个平庸的网站后，更易产生的强烈的对比，从而有力的强化网站对访问者的感观印象。&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;3.优化技术&lt;br/&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp;根据目标用户的需求而优化你的网站，这正是量身定制的网站设计的最大优势。这种优化设计，能够充分吸引、鼓励目标用户去深入访问你的网站并购买你的产品。&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;4.良好的扩展性&lt;br/&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp;很多定制站在不能满足我们业务范围的同时还不容易去修改，这就给我们造成一定的损失。而定制站是根据我们的产品、用户群、销售覆盖区域等情况量身制作，可以根据客户的情况作出调整，可以满足我们的业务需求。&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;5.定制性&lt;br/&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp;在后端的管理系统功能上，可依客户的需求量身打造，使客户在管理上较为便利有效率。&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;&lt;br/&gt;&lt;/p&gt;','1566883036','1566952200','0','0','1');
INSERT INTO `tp_service` (`id`,`title`,`img`,`titles`,`editorValue`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','响应式网站建设','/tmp/uploads/20190827/a7892ad3ddd8068b9ff0f5d4270b675d.png','手机端网站 响应式网站','&lt;p style=&quot;font-family:&amp;#39;Microsoft Yahei&amp;#39;;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;font-family: sans-serif;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;手机网站是指用WML（无线标记语言）编写的专门用于手机浏览的网站，通常以文字信息和简单的图片信息为主。随着向手机智能化方向发展，安装了操作系统和浏览器的手机的功能和电脑是很相似的（这种智能手机也就是&amp;quot;口袋个人电脑&amp;quot;PPC），使用这种手机可以通过GPRS上网可浏览几乎所有的www网站，无论网站是不是专门的wap网站，而且还可以安装专门为手机设计的程序，如手机炒股、QQ、MSN等。由于手机的屏幕尺寸和CPU处理能力有限，专门为手机进行优化的网站更为方便用户浏览。这也为网站设计提出了新的要求：网站要适应手机浏览。&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;什么是响应式网站&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;不同设备，同一个后台，网站数据同步更新！&lt;/p&gt;&lt;p class=&quot;p0&quot; style=&quot;text-indent:18pt;&quot;&gt;响应式网站：在网站开发过程中根据用户行为以及设备环境进行相应的操作和布局，使网站可针对不同平台、尺寸和定向进行智能化调整，实现了在智能手机和平板电脑等多种智能移动终端浏览效果的流畅，防止页面变形，并可在任一浏览终端进行网站数据的同步更新。&lt;/p&gt;&lt;p class=&quot;p0&quot; style=&quot;text-indent:18pt;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;响应式网站的优势&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;1.响应式网站可兼容多个智能移动浏览终端，并自动适应其屏幕尺寸，风格统一，增加网站辨识度。&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;2.响应式网站所用的后台及数据库是统一的，即在电脑PC端编辑了网站内容后，手机、PAD等智能移动浏览终端能够同步显示修改之后的内容。网站数据的管理能够更加及时和便捷。&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;3.响应式网站中的特效能够更好地丰富手机等智能移动终端浏览的效果，提升网站技术品质。&lt;/p&gt;&lt;p class=&quot;p0&quot;&gt;4.响应式网站能够更好地发掘潜在客户群体，给网站带来更多访问流量。&lt;/p&gt;','1566883412','1566952632','0','0','1');
INSERT INTO `tp_service` (`id`,`title`,`img`,`titles`,`editorValue`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','网站运营维护','/tmp/uploads/20190827/27a61f4ccc7fe3b3ac38e38cb7c51478.png','网站改版及修改 域名注册 空间服务器租用','&lt;p style=&quot;font-family:&amp;#39;Microsoft Yahei&amp;#39;;background-color:#FFFFFF;&quot;&gt;&lt;strong&gt;网站运营&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/strong&gt;任何一项工程都需后期精心维护才能发挥持久价值，网站也是如此。&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;strong&gt;页面内容修改、添加&lt;/strong&gt;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;页面维护（部分文字修改）、制作漂浮窗口、制作弹窗广告、网页垃圾信息清理、新增页面、Banner制作、更新JS轮换 Banner、信息维护、产品维护、资料翻译、文章撰写、软文修改、资料上传、信息编辑、发布产品、图片优化及发布&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;strong&gt;程序功能修改和维护&lt;/strong&gt;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;数据库导入导出、数据库备份、数据后台维护、网站紧急恢复 、故障恢复、查杀、清理木马后门、清理挂马、防止黑链、安全防护&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;邮箱管理权在公司，保证重要业务资料不丢失；统一的邮箱账号后缀，有利于塑造企业形象；使用全球知名的MIRAPOINT超级反垃圾反病毒邮件系统，可靠性高达99.999%，免除垃圾、病毒邮件对您的烦扰。&lt;/p&gt;','1566883474','1566896424','0','0','1');
INSERT INTO `tp_service` (`id`,`title`,`img`,`titles`,`editorValue`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','网站优化推广','/tmp/uploads/20190827/336708acb8471dde15a868341f211b63.png','SEO优化 产品推广','&lt;p style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 根据社会热点或企业需求，策划和创意各种微信平台的活动，如促销活动、地理位置活动等，提升官方微信的关注度，促进销售和品牌影响力。&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp; 策略定位 &amp;nbsp; &amp;nbsp;创意策划 &amp;nbsp; &amp;nbsp;活动执行 &amp;nbsp; &amp;nbsp;效果评估在品牌社会化的浪潮下，企业不可能再像以往传统广告那样单向喊话的与消费者沟通，而需要与消费者进行平等的面对面的交流。这种交流实际上正是社交媒体的官方账号所扮演的重要角色，所以官方账号的运营和维护效果将直接影响着企业在社交网络上的品牌价值和在消费者心中的品牌地位。&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp; 结合产品特性与网民兴趣点，运用创新的活动形式吸引受众产生兴趣；参与者在遵守活动设定的前提下，引导、调动他们的创意能力与其他人娱乐、交流；在轻松环境中理解产品内涵、品牌理念，从而产生对产品、品牌的高度好感甚至崇拜；从而引发长期的对于朋友、亲属等有亲密关系的角色，进行的主动口碑传播。&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;搜索优化是让网站在进行搜索关键字中获得较好排名，提高网站曝光率，从而赢得更多潜在客户。迈若将客户自身特性及要求，以最小的投入，获最大的来自搜索引擎的访问量。&lt;/p&gt;','1566883543','1566952191','0','0','1');

-- ----------------------------
-- Table structure for tp_sql
-- ----------------------------
-- ----------------------------
-- Records of tp_sql
-- ----------------------------
-- ----------------------------
-- Table structure for tp_tdk
-- ----------------------------
DROP TABLE IF EXISTS `tp_tdk`;
CREATE TABLE `tp_tdk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_tdk
-- ----------------------------
INSERT INTO `tp_tdk` (`id`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','保定网站建设-保定网站优化-畅行网络官网首页','保定畅行网络技术有限公司是保定市专业网站建设与网络优化服务的提供商，为中小型企业提供企业建站、行业建站、商城建站、网站优化等服务项目。','网站建设,网站优化','1566807321','1567651093','0','0','1');

-- ----------------------------
-- Table structure for tp_tdka
-- ----------------------------
DROP TABLE IF EXISTS `tp_tdka`;
CREATE TABLE `tp_tdka` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_tdka
-- ----------------------------
INSERT INTO `tp_tdka` (`id`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','案例展示-保定网站建设-保定网络优化-畅行网络官网首页','本公司专注于网站建设,网络优化等一些服务项目。我的网站以良好的商业信誉，完善的服务及深厚的技术力量，以客户服务为中心，专业为客户量身打造客户喜欢的网站平台。','','1566911571','1567649281','0','0','1');

-- ----------------------------
-- Table structure for tp_tdkf
-- ----------------------------
DROP TABLE IF EXISTS `tp_tdkf`;
CREATE TABLE `tp_tdkf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_tdkf
-- ----------------------------
INSERT INTO `tp_tdkf` (`id`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','服务项目-保定网站建设-保定网站优化-畅行网络官网首页','保定畅行网络技术有限公司是保定市专业网站建设与网站优化服务的提供商，为中小型企业提供企业建站、行业建站、商城建站、网站优化等服务项目。','','1566911595','1567651129','0','0','1');

-- ----------------------------
-- Table structure for tp_tdkg
-- ----------------------------
DROP TABLE IF EXISTS `tp_tdkg`;
CREATE TABLE `tp_tdkg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_tdkg
-- ----------------------------
INSERT INTO `tp_tdkg` (`id`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','关于我们-保定网站建设-保定网站优化-畅行网络官网首页','保定畅行网络技术有限公司是保定市专业网站建设与网站优化服务的提供商，为中小型企业提供企业建站、行业建站、商城建站、网站优化等服务项目。','','1566911599','1567651111','0','0','1');

-- ----------------------------
-- Table structure for tp_tdkw
-- ----------------------------
DROP TABLE IF EXISTS `tp_tdkw`;
CREATE TABLE `tp_tdkw` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_tdkw
-- ----------------------------
INSERT INTO `tp_tdkw` (`id`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','联系我们-保定网站建设-保定网站优化-畅行网络官网首页','保定畅行网络技术有限公司是保定市专业网站建设与网站优化服务的提供商，为中小型企业提供企业建站、行业建站、商城建站、网站优化等服务项目。','','1566980053','1567651173','0','0','1');

-- ----------------------------
-- Table structure for tp_web_log_all
-- ----------------------------
-- ----------------------------
-- Records of tp_web_log_all
-- ----------------------------
-- ----------------------------
-- Table structure for tp_yqlogo
-- ----------------------------
DROP TABLE IF EXISTS `tp_yqlogo`;
CREATE TABLE `tp_yqlogo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'logo名称',
  `logo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'logo图',
  `sort` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(11) DEFAULT '0',
  `status` tinyint(10) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_yqlogo
-- ----------------------------
INSERT INTO `tp_yqlogo` (`id`,`title`,`logo`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','畅行网络','/tmp/uploads/20190826/5400b270a36a9b951ffb3f8ebcd38a80.jpg','1','1566810189','1566810238','0','0','1');
INSERT INTO `tp_yqlogo` (`id`,`title`,`logo`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','欧亚照明','/tmp/uploads/20190826/d3b1305aec9c0fe67f45e6b5dc9bf840.jpg','2','1566810233','1566810233','0','0','1');
INSERT INTO `tp_yqlogo` (`id`,`title`,`logo`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','博楷电子','/tmp/uploads/20190826/f20c49096a29b6bf284a5fe4019713f5.jpg','3','1566810271','1566810271','0','0','1');
INSERT INTO `tp_yqlogo` (`id`,`title`,`logo`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','辉煌阳光','/tmp/uploads/20190826/d7956bf16e2628fa3f56e6e7cd2d0eb5.jpg','4','1566810297','1566810297','0','0','1');
INSERT INTO `tp_yqlogo` (`id`,`title`,`logo`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','畅行网络','/tmp/uploads/20190903/2969d91357af9c38def7905212a4d126.jpg','5','1566810348','1567492815','0','0','1');
INSERT INTO `tp_yqlogo` (`id`,`title`,`logo`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('6','欧亚照明','/tmp/uploads/20190826/d3b1305aec9c0fe67f45e6b5dc9bf840.jpg','6','1566811769','1566811769','0','0','1');

