/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-09-26 19:37:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '1');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `type` tinyint(1) DEFAULT NULL COMMENT '收藏类型（0歌曲1歌单）',
  `song_id` int(11) DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int(11) DEFAULT NULL COMMENT '歌单id',
  `create_time` datetime DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏';

-- ----------------------------
-- Records of collect
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `type` tinyint(1) DEFAULT NULL COMMENT '收藏类型（0歌曲1歌单）',
  `song_id` int(11) DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int(11) DEFAULT NULL COMMENT '歌单id',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime DEFAULT NULL COMMENT '收藏时间',
  `up` int(11) DEFAULT '0' COMMENT '评论点赞数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论';

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for consumer
-- ----------------------------
DROP TABLE IF EXISTS `consumer`;
CREATE TABLE `consumer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别（1男0女）',
  `phone_num` char(15) DEFAULT NULL COMMENT '电话',
  `email` char(30) DEFAULT NULL COMMENT '邮箱',
  `birth` datetime DEFAULT NULL COMMENT '生日',
  `introduction` varchar(255) DEFAULT NULL COMMENT '签名',
  `location` varchar(255) DEFAULT NULL COMMENT '地区',
  `avator` varchar(255) DEFAULT NULL COMMENT '头像',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='前端用户';

-- ----------------------------
-- Records of consumer
-- ----------------------------
INSERT INTO `consumer` VALUES ('1', '王汉远', '1', '1', '13512345556', '781505696@qq.com', '1978-01-02 00:00:00', 'sp', '山东', '/avatorImages/1599695045249华仔.jpg', '2020-09-08 21:25:37', '2020-09-10 07:44:05');
INSERT INTO `consumer` VALUES ('2', '安红', '1', '0', '12345678901', '123@qq.com', '1985-07-11 00:00:00', 'anhong', '北京', '/img/user.jpg', '2020-09-10 07:45:47', '2020-09-10 07:45:47');

-- ----------------------------
-- Table structure for list_song
-- ----------------------------
DROP TABLE IF EXISTS `list_song`;
CREATE TABLE `list_song` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `song_id` int(11) DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int(11) DEFAULT NULL COMMENT '歌单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='歌单包含歌曲列表';

-- ----------------------------
-- Records of list_song
-- ----------------------------
INSERT INTO `list_song` VALUES ('5', '1', '1');
INSERT INTO `list_song` VALUES ('6', '2', '1');

-- ----------------------------
-- Table structure for rank
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `song_list_id` int(11) DEFAULT NULL COMMENT '歌单id',
  `consumer_id` int(11) DEFAULT NULL COMMENT '用户id',
  `score` int(11) DEFAULT NULL COMMENT '评分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评价';

-- ----------------------------
-- Records of rank
-- ----------------------------

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别（0女1男2组合3不明）',
  `pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `birth` datetime DEFAULT NULL COMMENT '生日',
  `location` varchar(255) DEFAULT NULL COMMENT '地区',
  `introduction` varchar(255) DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='歌手';

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES ('1', '11', '0', '/img/singerPic/1598707156005华仔.jpg', '2020-08-03 00:00:00', '日本', '11');
INSERT INTO `singer` VALUES ('2', '12', '0', '/img/singerPic/1598707239292华仔.jpg', '2020-08-03 00:00:00', '中国', '11');
INSERT INTO `singer` VALUES ('3', '3', '1', '/img/singerPic/1598707300057timg.jpg', '2020-08-03 00:00:00', '中国', '3');
INSERT INTO `singer` VALUES ('7', '111', '2', '/img/singerPic/hhh.jpg', '2020-08-18 00:00:00', '美国', '1');
INSERT INTO `singer` VALUES ('8', '5', '3', '/img/singerPic/hhh.jpg', '2020-08-18 00:00:00', '5', '5');
INSERT INTO `singer` VALUES ('9', '5', '0', '/img/singerPic/hhh.jpg', '2020-08-18 00:00:00', '5', '5');
INSERT INTO `singer` VALUES ('10', 't', '0', '/img/singerPic/hhh.jpg', '2020-08-10 00:00:00', 't', 't');
INSERT INTO `singer` VALUES ('11', '2', '0', '/img/singerPic/hhh.jpg', '2020-08-03 00:00:00', '2', '2');
INSERT INTO `singer` VALUES ('12', '3', '0', '/img/singerPic/hhh.jpg', '2020-08-10 00:00:00', '3', '3');
INSERT INTO `singer` VALUES ('13', '3', '0', '/img/singerPic/hhh.jpg', '2020-08-11 00:00:00', '3', '3');
INSERT INTO `singer` VALUES ('14', '陈奕迅', '1', '/img/singerPic/1598791914645陈奕迅.jpg', '1970-03-05 00:00:00', '香港', '香港地区唱《十年》的那个人。真是的最后');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `singer_id` int(11) DEFAULT NULL COMMENT '歌手id',
  `name` varchar(255) DEFAULT NULL COMMENT '革命',
  `introduction` varchar(255) DEFAULT NULL COMMENT '简介',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `pic` varchar(255) DEFAULT NULL COMMENT '歌曲图片',
  `lyric` text COMMENT '歌词',
  `url` varchar(255) DEFAULT NULL COMMENT '歌曲地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='歌曲';

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('1', '1', '赵本山-月牙儿1', '赵本山专辑', '2020-09-02 07:53:48', '2020-09-19 18:45:05', '/img/songPic/15991338029974.jpg', '[00:00.10]红豆 - 王菲\n[00:00.20]词：林夕\n[00:00.30]曲：柳重言\n[00:17.15]还没好好的感受\n[00:20.59]雪花绽放的气候\n[00:24.96]我们一起颤抖\n[00:28.03]会更明白 什么是温柔\n[00:33.59]还没跟你牵着手\n[00:37.72]走过荒芜的沙丘\n[00:42.10]可能从此以后 学会珍惜\n[00:47.42]天长和地久\n[00:50.74]有时候 有时候\n[00:54.93]我会相信一切有尽头\n[00:59.18]相聚离开 都有时候\n[01:03.62]没有什么会永垂不朽\n[01:07.88]可是我 有时候\n[01:12.01]宁愿选择留恋不放手\n[01:16.38]等到风景都看透\n[01:20.76]也许你会陪我 看细水长流\n[01:40.12]还没为你把红豆\n[01:46.38]熬成缠绵的伤口\n[01:50.69]然后一起分享\n[01:53.88]会更明白 相思的哀愁\n[01:59.20]还没好好的感受\n[02:03.57]醒着亲吻的温柔\n[02:07.76]可能在我左右\n[02:11.02]你才追求 孤独的自由\n[02:18.57]有时候 有时候\n[02:22.95]我会相信一切有尽头\n[02:27.14]相聚离开 都有时候\n[02:31.52]没有什么会永垂不朽\n[02:35.96]可是我 有时候\n[02:39.96]宁愿选择留恋不放手\n[02:44.34]等到风景都看透\n[02:48.53]也许你会陪我 看细水长流\n[03:07.93]有时候 有时候\n[03:12.13]我会相信一切有尽头\n[03:16.37]相聚离开 都有时候\n[03:20.69]没有什么会永垂不朽\n[03:25.01]可是我 有时候\n[03:29.26]宁愿选择留恋不放手\n[03:33.57]等到风景都看透\n[03:37.89]也许你会陪我 看细水长流', '/song/1599134158136月牙儿.mp3');
INSERT INTO `song` VALUES ('2', '1', '陈奕迅-十年1', '十年专辑', '2020-09-04 22:51:54', '2020-09-25 20:10:36', '/img/songPic/1599231150357陈奕迅.jpg', '[00:00.10]红豆 - 王菲\n[00:00.20]词：林夕', '/song/1599231114624十年.mp3');

-- ----------------------------
-- Table structure for song_list
-- ----------------------------
DROP TABLE IF EXISTS `song_list`;
CREATE TABLE `song_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `pic` varchar(255) DEFAULT NULL COMMENT '歌单图片',
  `introduction` text COMMENT '简介',
  `style` varchar(255) DEFAULT NULL COMMENT '风格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='歌单';

-- ----------------------------
-- Records of song_list
-- ----------------------------
INSERT INTO `song_list` VALUES ('1', '重音乐', '/img/songListPic/1599312391936程序猿.jpg', '适合运动的时候听', '华语');
INSERT INTO `song_list` VALUES ('2', '粤语', '/img/songListPic/123.jpg', '粤语', '粤语');
INSERT INTO `song_list` VALUES ('3', '歌单1', '/img/songListPic/123.jpg', '', '');
INSERT INTO `song_list` VALUES ('4', '歌单2', '/img/songListPic/123.jpg', '', '');
INSERT INTO `song_list` VALUES ('5', '歌单3', '/img/songListPic/123.jpg', '', '');
INSERT INTO `song_list` VALUES ('6', '歌单4', '/img/songListPic/123.jpg', '', '');
INSERT INTO `song_list` VALUES ('7', '歌单5', '/img/songListPic/123.jpg', '', '');
INSERT INTO `song_list` VALUES ('8', '歌单6', '/img/songListPic/123.jpg', '', '');
INSERT INTO `song_list` VALUES ('9', '歌单7', '/img/songListPic/123.jpg', '', '');
INSERT INTO `song_list` VALUES ('10', '歌单8', '/img/songListPic/123.jpg', '', '');
INSERT INTO `song_list` VALUES ('11', '歌单10', '/img/songListPic/123.jpg', '', '');
INSERT INTO `song_list` VALUES ('12', '歌单11', '/img/songListPic/123.jpg', '', '');
