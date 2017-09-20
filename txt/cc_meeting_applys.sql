/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : forge

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-25 16:20:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cc_meeting_applys
-- ----------------------------
DROP TABLE IF EXISTS `cc_meeting_applys`;
CREATE TABLE `cc_meeting_applys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned DEFAULT NULL COMMENT '会议id',
  `real_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `gender` int(10) unsigned DEFAULT NULL COMMENT '性别:1:男2:女0:其他',
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `professional` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职称',
  `wechat_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信号',
  `post` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职务',
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单位',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `room_type` tinyint(3) unsigned DEFAULT NULL COMMENT '0：未知1:单住2：合住3：自理',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态:0待审核，1审核通过，2审核不通过，-1删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meeting_applys
-- ----------------------------
INSERT INTO `cc_meeting_applys` VALUES ('1', '1', 'test1', '1', '15555569860', '4646464@qq.com', 'p1', '465456', '医生', '医院1', '上大大的', '1', '0', '2017-08-17 09:58:04', '2017-08-17 09:58:06');
INSERT INTO `cc_meeting_applys` VALUES ('2', '1', 'test2', '2', '18656522358', '746468789@163.com', 'p2', '746468789', '护士', '医院2', '说三道四多', '2', '1', '2017-08-17 09:59:11', '2017-08-17 09:59:14');
INSERT INTO `cc_meeting_applys` VALUES ('3', '1', 'test3', '1', '15555569860', '13955578456@qq.com', 'p3', '13955578456', '医生', '医院3', 'dasdasdadsad', '3', '2', '2017-08-17 10:00:37', '2017-08-17 10:00:39');

-- ----------------------------
-- Table structure for cc_meeting_exports
-- ----------------------------
DROP TABLE IF EXISTS `cc_meeting_exports`;
CREATE TABLE `cc_meeting_exports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned DEFAULT NULL COMMENT '会议id',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '状态:1:启用,2:不启用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meeting_exports
-- ----------------------------

-- ----------------------------
-- Table structure for cc_meeting_fileds
-- ----------------------------
DROP TABLE IF EXISTS `cc_meeting_fileds`;
CREATE TABLE `cc_meeting_fileds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned DEFAULT NULL COMMENT '会议id',
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文字内容',
  `furl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '连接地址',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '状态:1:启用,2:不启用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meeting_fileds
-- ----------------------------

-- ----------------------------
-- Table structure for cc_meeting_images
-- ----------------------------
DROP TABLE IF EXISTS `cc_meeting_images`;
CREATE TABLE `cc_meeting_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned DEFAULT NULL COMMENT '会议id',
  `bigimg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '大图片',
  `logoimg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'logo图片',
  `otherimg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '参会指南  图片',
  `oimg_description` text COLLATE utf8mb4_unicode_ci COMMENT '参会指南文字描述',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '状态:1:启用,2:不启用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meeting_images
-- ----------------------------

-- ----------------------------
-- Table structure for cc_meeting_sections
-- ----------------------------
DROP TABLE IF EXISTS `cc_meeting_sections`;
CREATE TABLE `cc_meeting_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned DEFAULT NULL COMMENT '会议id',
  `sname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '切片名称',
  `simg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '切片图片',
  `surl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '连接地址',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '状态:1:启用,2:不启用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meeting_sections
-- ----------------------------

-- ----------------------------
-- Table structure for cc_meeting_signin_awardinfos
-- ----------------------------
DROP TABLE IF EXISTS `cc_meeting_signin_awardinfos`;
CREATE TABLE `cc_meeting_signin_awardinfos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msi_id` int(10) unsigned DEFAULT NULL COMMENT '会议签到信息id',
  `msa_id` int(10) unsigned DEFAULT NULL COMMENT '会议签到奖品id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meeting_signin_awardinfos
-- ----------------------------

-- ----------------------------
-- Table structure for cc_meeting_signin_awards
-- ----------------------------
DROP TABLE IF EXISTS `cc_meeting_signin_awards`;
CREATE TABLE `cc_meeting_signin_awards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_id` int(10) unsigned DEFAULT NULL COMMENT '会议签到id',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '奖品名称',
  `pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '奖品图片',
  `num` int(10) unsigned DEFAULT NULL COMMENT '奖品数量',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meeting_signin_awards
-- ----------------------------
INSERT INTO `cc_meeting_signin_awards` VALUES ('1', '1', '抱枕被', 'awards/1.png', '60', null, null);
INSERT INTO `cc_meeting_signin_awards` VALUES ('2', '1', '午睡枕', 'awards/2.png', '59', null, '2017-08-25 15:14:27');
INSERT INTO `cc_meeting_signin_awards` VALUES ('3', '1', '雨伞', 'awards/3.png', '30', null, null);
INSERT INTO `cc_meeting_signin_awards` VALUES ('4', '1', '手机扣', 'awards/4.png', '50', null, null);
INSERT INTO `cc_meeting_signin_awards` VALUES ('5', '1', '签字笔', 'awards/5.png', '50', null, null);

-- ----------------------------
-- Table structure for cc_meeting_signin_infos
-- ----------------------------
DROP TABLE IF EXISTS `cc_meeting_signin_infos`;
CREATE TABLE `cc_meeting_signin_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_id` int(10) unsigned DEFAULT NULL COMMENT '会议签到id',
  `mobilephone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `hospital` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '医院',
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '科室',
  `post` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职称',
  `wechat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信号',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meeting_signin_infos
-- ----------------------------
INSERT INTO `cc_meeting_signin_infos` VALUES ('1', null, 'aa', 'bb', 'dd', null, null, 'cc', '2017-08-24 18:28:38', '2017-08-24 18:28:38');
INSERT INTO `cc_meeting_signin_infos` VALUES ('2', null, 'aaa', null, null, null, null, null, '2017-08-24 18:42:10', '2017-08-24 18:42:10');
INSERT INTO `cc_meeting_signin_infos` VALUES ('3', null, null, null, null, null, null, null, '2017-08-24 18:43:39', '2017-08-24 18:43:39');
INSERT INTO `cc_meeting_signin_infos` VALUES ('4', null, '133', null, null, null, null, null, '2017-08-25 09:26:14', '2017-08-25 09:26:14');
INSERT INTO `cc_meeting_signin_infos` VALUES ('5', '1', '123', 'dsd', 'dsds', null, null, 'dsd', '2017-08-25 09:49:39', '2017-08-25 09:49:39');
INSERT INTO `cc_meeting_signin_infos` VALUES ('6', '1', '139555123456', 'xingming1', 'danwei1', null, null, 'weixin1', '2017-08-25 09:55:53', '2017-08-25 09:55:53');
INSERT INTO `cc_meeting_signin_infos` VALUES ('7', '1', '139555123457', 'name2', 'danwei2', null, null, 'weixin2', '2017-08-25 10:04:37', '2017-08-25 10:04:37');
INSERT INTO `cc_meeting_signin_infos` VALUES ('8', '1', 'dsfdsf', 'fdsfdsf', 'fdfds', null, null, 'dsfdsf', '2017-08-25 10:20:28', '2017-08-25 10:20:28');

-- ----------------------------
-- Table structure for cc_meeting_signins
-- ----------------------------
DROP TABLE IF EXISTS `cc_meeting_signins`;
CREATE TABLE `cc_meeting_signins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '签到管理员id',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `start_date` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_date` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'logo图片',
  `is_award` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否抽奖0：否1：是',
  `is_code` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有验证码0：否1：是',
  `is_hospital` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有医院0：否1：是',
  `is_department` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有科室0：否1：是',
  `is_post` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有职称0：否1：是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meeting_signins
-- ----------------------------
INSERT INTO `cc_meeting_signins` VALUES ('1', '0', '华东六省一市妇产科学会议及江苏省妇产科学年会1', '2017-09-02 09:00:00', '2017-09-03 17:00:00', '江苏省南京市', null, '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `cc_meeting_signins` VALUES ('2', '0', null, null, null, null, null, '0', '0', '0', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for cc_meeting_templates
-- ----------------------------
DROP TABLE IF EXISTS `cc_meeting_templates`;
CREATE TABLE `cc_meeting_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '模板名称',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '模板路径',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态:1：启用 0：未启用',
  `is_meeting_filed` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有文字列表:1:是 0:否',
  `is_meeting_export` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有专家列表:1:是 0:否',
  `is_meeting_section` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有切片列表:1:是 0:否',
  `is_meeting_img` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有多余图片信息:1:是 0:否',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meeting_templates
-- ----------------------------
INSERT INTO `cc_meeting_templates` VALUES ('1', '模板1', 'Template/SpecialTopicTemp1.aspx', '1', '1', '1', '1', '1', '2017-08-10 16:05:48', '2017-08-10 16:05:51', null);
INSERT INTO `cc_meeting_templates` VALUES ('2', '模板2', 'Template/SpecialTopicTemp2.aspx', '1', '1', '1', '1', '1', '2017-08-10 16:05:54', '2017-08-10 16:05:56', null);

-- ----------------------------
-- Table structure for cc_meeting_themes
-- ----------------------------
DROP TABLE IF EXISTS `cc_meeting_themes`;
CREATE TABLE `cc_meeting_themes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `start_date` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地点',
  `linkurl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '连接URL',
  `big_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '大图片路径',
  `small_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '小图片路径',
  `inter_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接口图片',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '状态:1:启用,2:不启用',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meeting_themes
-- ----------------------------
INSERT INTO `cc_meeting_themes` VALUES ('1', '时代大厦多所', '2017-08-17 00:00:00', '就回家回家', '放松放松', 'uploads/R7euX9PTDvHiHMrn5LluwraW6s3CQGKIK0Lu7T0N.jpeg', 'uploads/HANMf6xFMVswQCKdQOos8Ajv7tStbOm6PxnD2yVj.jpeg', 'uploads/qjOzUaneOsfVXA0pFDmXnxexiQ2v2nOHyIcdnEgN.jpeg', '2', '1', '2017-08-16 13:52:44', '2017-08-16 16:34:45', '2017-08-16 16:34:45');
INSERT INTO `cc_meeting_themes` VALUES ('2', '中国抗癌协会肿瘤病理专业委员会2017年学术会议第二轮通知', '2017-08-16 00:00:00', '黑龙江省哈尔滨市华旗饭店102会议厅', 'http://meeting.91360.com/Meeting/ShowDetails_507.html', 'uploads/Ep6XB64TUtqwc2SH7cod6YqYlxrE06yHqFtOeuPY.jpeg', 'uploads/Qfko7qnrmzKjRW4g0tPTuox31bE8ocHGiLKxUSCw.jpeg', 'uploads/OvLXuk1UuWd3Gb2z8vktCCJKJzZEJK25gTrXPuqo.jpeg', '2', '4', '2017-08-16 15:01:51', '2017-08-17 08:59:13', null);
INSERT INTO `cc_meeting_themes` VALUES ('3', '中国抗癌协会肿瘤病理专业委员会2017年学术会议第二轮通知', '2017-08-16 00:00:00', '黑龙江省哈尔滨市华旗饭店102会议厅', 'http://meeting.91360.com/Meeting/ShowDetails_507.html', 'uploads/ZkPFPIOk6KnqnU0OQYWTWdHMY6eBOd3sjEpIrZK2.jpeg', 'uploads/ar6504eytMprZy33fiK2D3S7DRBSZGA5Xvv2T2Ep.jpeg', 'uploads/Z0eWgCB8WxbA8pZ1vtD8tDvCU3lRZx37N4EGJDC7.jpeg', '2', '2', '2017-08-16 15:02:55', '2017-08-16 16:11:57', '2017-08-16 16:11:57');
INSERT INTO `cc_meeting_themes` VALUES ('4', '打啊打', '2017-08-15 00:00:00', '大大', 'http://www.baidu.com', 'uploads/5VBaKKmNtGq7CcWV5aZT5yWQf8nSbJs9BSQ51Mvs.jpeg', 'uploads/uPz3HjJr3ccjBEZXQvvIjGAf1ADYERQvGMPaCfVQ.jpeg', 'uploads/jo59J71EES40kf4B3QVTAQPa0EhZVCphRCO4hPdJ.jpeg', '2', '1', '2017-08-16 15:31:49', '2017-08-16 17:55:52', null);
INSERT INTO `cc_meeting_themes` VALUES ('5', '发多少发生的范德萨3', '2017-08-29 00:00:00', '分手大师的3', 'http://meeting.91360.com/Meeting/ShowDetails_508.html', 'uploads/dWDjwH4VPxcI2uEkumDE44phr0FAPeAmr4j5770H.jpeg', 'uploads/MfK1jHzCgxesjXJSNcd4ku8iWHWkIdcKLRVryeGi.jpeg', 'uploads/pfBQx9INuexPmulAsrHBJrCwrq1PI9xoqAlrw27x.jpeg', '1', '5', '2017-08-16 15:38:22', '2017-08-17 17:09:28', null);
INSERT INTO `cc_meeting_themes` VALUES ('6', '范德萨发生发送', '2017-08-31 00:00:00', '发送到山大', 'httt://www.baidu.com', 'uploads/GJYHd9Bf2qmgMelVNI1lqKTtVKO49WyrCTsO6AcN.jpeg', 'uploads/se0yxM00RTAhaaWqf2xhUab5rpXp8Iw936FOwk8G.jpeg', 'uploads/mnHhSvBOs6BHIkoyNGCkerVZpIW4c7lJkQ3dH3ko.jpeg', '2', '2', '2017-08-16 16:34:32', '2017-08-16 16:36:03', null);

-- ----------------------------
-- Table structure for cc_meetings
-- ----------------------------
DROP TABLE IF EXISTS `cc_meetings`;
CREATE TABLE `cc_meetings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会议标题',
  `user_count` int(10) unsigned DEFAULT NULL COMMENT '规模',
  `start_date` timestamp NULL DEFAULT NULL COMMENT '会议开始时间',
  `end_date` timestamp NULL DEFAULT NULL COMMENT '会议结束时间',
  `province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '省',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '市',
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会场名称和具体地址',
  `address_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址全称',
  `address_point` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地图point坐标',
  `notice` text COLLATE utf8mb4_unicode_ci COMMENT '会议通知',
  `schedule` text COLLATE utf8mb4_unicode_ci COMMENT '会议日程',
  `contribute` text COLLATE utf8mb4_unicode_ci COMMENT '会议嘉宾',
  `busline` text COLLATE utf8mb4_unicode_ci COMMENT '乘车路线',
  `essay` text COLLATE utf8mb4_unicode_ci COMMENT '征文投稿',
  `section` text COLLATE utf8mb4_unicode_ci COMMENT '切片库',
  `is_need_charge` tinyint(3) unsigned DEFAULT NULL COMMENT '活动费用0免费票，1收费票',
  `charge_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '票价类型',
  `charge_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '票价',
  `charge_declare` text COLLATE utf8mb4_unicode_ci COMMENT '票价说明',
  `apply_end_time` timestamp NULL DEFAULT NULL COMMENT '报名截止时间',
  `invoice` tinyint(3) unsigned DEFAULT NULL COMMENT '发票:1会前快递2现场领取3会后快递4无发票',
  `is_upload_files` tinyint(3) unsigned DEFAULT NULL COMMENT '是否上传附件:1是0否',
  `upload_files` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '附件',
  `ticket` tinyint(3) unsigned DEFAULT NULL COMMENT '参会凭证：1凭活动家报名成功后的短信2现场签到（凭参会者姓名签到）3电子票4纸质门票5邮件或短信确认通知参会',
  `is_need_service` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要91360智慧病理会议服务：0否，1是',
  `is_provide_section` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否提供数字切片（与91360免费对接）：0否，1是',
  `is_share_meeting` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否分享会议视频直播、点播：0否，1是',
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键词',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述信息',
  `is_topic_meeting` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '主题会议：1是 0否',
  `topic_meeting_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主题会议的url',
  `host_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主办单位',
  `organizer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '承办单位',
  `co_organizer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '协办单位',
  `linkman` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人姓名',
  `mobilephone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `linkman_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱地址',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0待审核，1审核通过，2审核不通过，-1删除',
  `is_allow_apply` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '是否允许报名：1：允许  2：不允许（默认）',
  `template_id` int(10) unsigned DEFAULT NULL COMMENT '模板id',
  `apply_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '申请人姓名',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cc_meetings
-- ----------------------------
INSERT INTO `cc_meetings` VALUES ('1', '第一届中国CSCCP西部行——暨国家级继续教育项目热点学术研讨会（第一轮通知）', '200', '2017-10-01 00:00:00', '2017-10-05 00:00:00', '四川省', '成都市', '岷山饭店', '四川省成都市岷山饭店', null, '<p>　　各位同道：</p><p>　　由中国优生科学协会阴道镜和宫颈病理学分会（CSCCP）、四川大学华西第二医院、四川省妇产科质控中心主办，《中华妇幼临床医学杂志》协办的“第一届中国CSCCP西部行暨国家级继续教育项目热点学术研讨会”定于<strong>2017年11月17日-19日</strong>在成都岷山饭店举行。</p><p>　　本次会议主题为“加强理论、手术、临床技能培训，提高宫颈癌防治水平”，届时将邀请国内外著名妇产科学专家曹泽毅教授、魏丽惠教授、谢幸教授等，病理学专家沈丹华教授，流行病学专家乔友林教授等进行讲座。会议届时举办青年医师手术技能大秀台、并有名师点评，还将在宫颈癌防治概况、宫颈癌筛查策略、宫颈细胞学和组织病理学、阴道镜、HPV疫苗、宫颈癌、癌前病变治疗等难点热点问题进行精彩报告。欢迎业内同道积极参加！</p><p>　<strong>　会议时间：</strong><strong>2017.11.17-2017.11.19</strong></p><p>　　<strong>大会注册报到：</strong><strong>2017年11月16日</strong>下午；<strong>2017年11月17日</strong>全天举行妇产科青年医师精彩手术技能大秀台，<strong>2017年11月18-19日</strong>学术盛会<strong>，2017年11月19日</strong>下午撤离。</p><p>　　<strong>会议费用：</strong>培训费600元/人（含资料费、注册费等），需住宿的老师请直接与酒店岷山饭店销售部蒋文茵经理联系，电话：13980851858，费用回本单位报销。</p><p>　　<strong>会务组联系人及方式：</strong></p><p>　<strong>　联系人：</strong>李波，顾琼；</p><p>　<strong>　</strong><strong>联系电话：</strong>028-85502391,85503857；</p><p>　<strong>　</strong><strong>电子邮箱：</strong>hxfck@126.com；</p><p>　　请参会代表以回执形式将本人信息发送到邮箱hxfck@126.com；并注明参加第一届中国CSCCP西部行暨国家级继续教育项目热点学术研讨会，或用手机扫描二维码加微信公众号进入本通知，填写参会报名信息后提交。</p><p>　　<strong>大会公众号：</strong></p><p><img src=\"http://super.91360.com/ueditor/net/upload/image/20170810/6363797166573628458287492.png\" title=\"大会公众号.png\" alt=\"大会公众号.png\"></p><p>　　<strong>会议地点：</strong>四川省成都市岷山饭店（成都市人民南路二段55号）</p><p><img src=\"http://super.91360.com/ueditor/net/upload/image/20170810/6363797512050573981989338.png\" title=\"会议回执.png\" alt=\"会议回执.png\"></p><br>', null, '<p>　　<strong>大会组织结构：</strong></p><p>　　<strong>大会顾问：</strong>曹泽毅，彭芝兰</p><p>　　<strong>名誉主席：</strong>魏丽惠，乔友林</p><p>　<strong>　大会主席：</strong>郄明蓉教授</p><p>　<strong>　大会副主席：</strong>潘小玲教授、杨帆教授、李春梅教授</p><p>　　<strong>大会特邀嘉宾：</strong>谢幸教授、徐丛剑教授、吕卫国、沈丹华教授、段华教授、陈捷教授、冯力民教授、隋龙教授、赵霞教授、薛凤霞教授、刘从容教授、赵昀教授、王建东教授、李静然教授、尤志学教授、谭先杰教授、周先荣教授、耿力教授、潘秦镜教授、毕蕙教授、杨开选教授、王红静教授、潘小玲教授、王平教授、尹如铁教授、张家文教授、何跃东教授、刘辉教授、李春梅教授、郑莹教授、杨小芸教授、谢兰教授、梁开茹教授、杨帆教授、牛晓宇教授、余海燕教授、李征宇教授、候敏敏教授、边策教授、周圣涛教授、谭欣教授等。</p><p>　　（排名不分先后）</p><p>　<strong>　大会秘书处：</strong></p><p>　　秘书处：李明珠、须昌隆、梁开如</p><p>　　秘书：李波、顾琼、张彦、伍韦韦</p><br>', '<p>　<strong>　飞机：</strong>机场专线1号线到，锦江宾馆站下车；乘出租车：从成都双流国际机场到岷山饭店乘坐Taxi（打车去），路程约18.3公里，大约花费36元路费</p><p>　　<strong>火车北站：</strong>16、99路或乘地铁一号线到，锦江宾馆站下车（C出口步行3分钟可到达酒店）；</p><p>　<strong>　火车东站：</strong>乘坐地铁二号线到，天府广场站换乘一号线到，锦江宾馆站下车。</p><br>', null, null, '1', '培训费', '600元/人', '（含资料费、注册费等）', '2017-09-30 00:00:00', null, null, null, null, '0', '0', '0', 'CSCCP,热点学术,宫颈癌,阴道镜', '由中国优生科学协会阴道镜和宫颈病理学分会（CSCCP）、四川大学华西第二医院、四川省妇产科质控中心主办，《中华妇幼临床医学杂志》协办的“第一届中国CSCCP西部行暨国家级继续教育项目热点学术研讨会”定于2017年11月17日-19日在成都岷山饭店举行。', '0', null, '中国优生科学协会阴道镜和宫颈病理学分会（CSCCP），四川大学华西第二医院，四川省妇产科质控中心', null, '《中华妇幼临床医学杂志》', '李波，顾琼', '028-85502391', 'hxfck@126.com', '1', '2', null, null, '2017-08-17 10:48:55', '2017-08-17 17:07:16', null);
