/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : cl258043101

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 01/08/2025 14:31:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for biaoqian
-- ----------------------------
DROP TABLE IF EXISTS `biaoqian`;
CREATE TABLE `biaoqian`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoqian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '标签' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of biaoqian
-- ----------------------------
INSERT INTO `biaoqian` VALUES (1, '2025-04-03 22:48:15', '标签1');
INSERT INTO `biaoqian` VALUES (2, '2025-04-03 22:48:15', '标签2');
INSERT INTO `biaoqian` VALUES (3, '2025-04-03 22:48:15', '标签3');
INSERT INTO `biaoqian` VALUES (4, '2025-04-03 22:48:15', '标签4');
INSERT INTO `biaoqian` VALUES (5, '2025-04-03 22:48:15', '标签5');
INSERT INTO `biaoqian` VALUES (6, '2025-04-03 22:48:15', '标签6');
INSERT INTO `biaoqian` VALUES (7, '2025-04-03 22:48:15', '标签7');
INSERT INTO `biaoqian` VALUES (8, '2025-04-03 22:48:15', '标签8');
INSERT INTO `biaoqian` VALUES (9, '2025-04-03 22:48:15', '标签9');
INSERT INTO `biaoqian` VALUES (10, '2025-04-03 22:48:15', '标签10');
INSERT INTO `biaoqian` VALUES (11, '2025-04-03 23:04:20', '11');

-- ----------------------------
-- Table structure for chat_friend
-- ----------------------------
DROP TABLE IF EXISTS `chat_friend`;
CREATE TABLE `chat_friend`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `uid` bigint NOT NULL COMMENT '用户id',
  `fid` bigint NOT NULL COMMENT '好友id',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '图片',
  `role` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `tablename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '表名',
  `alias` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '别名',
  `type` int NULL DEFAULT 0 COMMENT '类型(0:好友申请，1:好友，2:消息)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '好友表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat_friend
-- ----------------------------
INSERT INTO `chat_friend` VALUES (1, '2025-04-03 22:48:15', 1, 1, '名称1', 'file/chat_friendPicture1.jpg,file/chat_friendPicture2.jpg,file/chat_friendPicture3.jpg', '角色1', '表名1', '别名1', 1);
INSERT INTO `chat_friend` VALUES (2, '2025-04-03 22:48:15', 2, 2, '名称2', 'file/chat_friendPicture2.jpg,file/chat_friendPicture3.jpg,file/chat_friendPicture4.jpg', '角色2', '表名2', '别名2', 2);
INSERT INTO `chat_friend` VALUES (3, '2025-04-03 22:48:15', 3, 3, '名称3', 'file/chat_friendPicture3.jpg,file/chat_friendPicture4.jpg,file/chat_friendPicture5.jpg', '角色3', '表名3', '别名3', 3);
INSERT INTO `chat_friend` VALUES (4, '2025-04-03 22:48:15', 4, 4, '名称4', 'file/chat_friendPicture4.jpg,file/chat_friendPicture5.jpg,file/chat_friendPicture6.jpg', '角色4', '表名4', '别名4', 4);
INSERT INTO `chat_friend` VALUES (5, '2025-04-03 22:48:15', 5, 5, '名称5', 'file/chat_friendPicture5.jpg,file/chat_friendPicture6.jpg,file/chat_friendPicture7.jpg', '角色5', '表名5', '别名5', 5);
INSERT INTO `chat_friend` VALUES (6, '2025-04-03 22:48:15', 6, 6, '名称6', 'file/chat_friendPicture6.jpg,file/chat_friendPicture7.jpg,file/chat_friendPicture8.jpg', '角色6', '表名6', '别名6', 6);
INSERT INTO `chat_friend` VALUES (7, '2025-04-03 22:48:15', 7, 7, '名称7', 'file/chat_friendPicture7.jpg,file/chat_friendPicture8.jpg,file/chat_friendPicture9.jpg', '角色7', '表名7', '别名7', 7);
INSERT INTO `chat_friend` VALUES (8, '2025-04-03 22:48:15', 8, 8, '名称8', 'file/chat_friendPicture8.jpg,file/chat_friendPicture9.jpg,file/chat_friendPicture10.jpg', '角色8', '表名8', '别名8', 8);
INSERT INTO `chat_friend` VALUES (9, '2025-04-03 22:48:15', 9, 9, '名称9', 'file/chat_friendPicture9.jpg,file/chat_friendPicture10.jpg,file/chat_friendPicture11.jpg', '角色9', '表名9', '别名9', 9);
INSERT INTO `chat_friend` VALUES (10, '2025-04-03 22:48:15', 10, 10, '名称10', 'file/chat_friendPicture10.jpg,file/chat_friendPicture11.jpg,file/chat_friendPicture12.jpg', '角色10', '表名10', '别名10', 10);
INSERT INTO `chat_friend` VALUES (11, '2025-04-03 23:05:23', 1743692531114, 1743692515069, '11', 'file/1743692514538.jpg', NULL, 'shangjia', NULL, 2);
INSERT INTO `chat_friend` VALUES (12, '2025-04-03 23:05:23', 1743692515069, 1743692531114, '11', 'file/1743692528557.jpg', NULL, 'yonghu', NULL, 2);

-- ----------------------------
-- Table structure for chat_message
-- ----------------------------
DROP TABLE IF EXISTS `chat_message`;
CREATE TABLE `chat_message`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `uid` bigint NOT NULL COMMENT '用户id',
  `fid` bigint NOT NULL COMMENT '好友id',
  `content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `format` int NULL DEFAULT NULL COMMENT '格式(1:文字，2:图片)',
  `is_read` int NULL DEFAULT 0 COMMENT '消息已读(0:未读，1:已读)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '消息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat_message
-- ----------------------------
INSERT INTO `chat_message` VALUES (1, '2025-04-03 22:48:15', 1, 1, '内容1', 1, 1);
INSERT INTO `chat_message` VALUES (2, '2025-04-03 22:48:15', 2, 2, '内容2', 2, 2);
INSERT INTO `chat_message` VALUES (3, '2025-04-03 22:48:15', 3, 3, '内容3', 3, 3);
INSERT INTO `chat_message` VALUES (4, '2025-04-03 22:48:15', 4, 4, '内容4', 4, 4);
INSERT INTO `chat_message` VALUES (5, '2025-04-03 22:48:15', 5, 5, '内容5', 5, 5);
INSERT INTO `chat_message` VALUES (6, '2025-04-03 22:48:15', 6, 6, '内容6', 6, 6);
INSERT INTO `chat_message` VALUES (7, '2025-04-03 22:48:15', 7, 7, '内容7', 7, 7);
INSERT INTO `chat_message` VALUES (8, '2025-04-03 22:48:15', 8, 8, '内容8', 8, 8);
INSERT INTO `chat_message` VALUES (9, '2025-04-03 22:48:15', 9, 9, '内容9', 9, 9);
INSERT INTO `chat_message` VALUES (10, '2025-04-03 22:48:15', 10, 10, '内容10', 10, 10);
INSERT INTO `chat_message` VALUES (11, '2025-04-03 23:05:23', 1743692531114, 1743692515069, '11', 1, 1);
INSERT INTO `chat_message` VALUES (12, '2025-04-03 23:05:32', 1743692515069, 1743692531114, '11', 1, 1);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '轮播图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, '2025-04-03 22:48:16', 'swiper1', 'file/swiperPicture1.jpg');
INSERT INTO `config` VALUES (2, '2025-04-03 22:48:16', 'swiper2', 'file/swiperPicture2.jpg');
INSERT INTO `config` VALUES (3, '2025-04-03 22:48:16', 'swiper3', 'file/swiperPicture3.png');

-- ----------------------------
-- Table structure for discusssheyingfuwu
-- ----------------------------
DROP TABLE IF EXISTS `discusssheyingfuwu`;
CREATE TABLE `discusssheyingfuwu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '摄影服务评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discusssheyingfuwu
-- ----------------------------

-- ----------------------------
-- Table structure for discusssheyingzuopin
-- ----------------------------
DROP TABLE IF EXISTS `discusssheyingzuopin`;
CREATE TABLE `discusssheyingzuopin`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '摄影作品评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discusssheyingzuopin
-- ----------------------------
INSERT INTO `discusssheyingzuopin` VALUES (1, '2025-04-03 23:05:00', 11, 1743692531114, 'file/1743692528557.jpg', '11', '<p>好</p>', NULL);

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint NULL DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '头像',
  `isdone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `is_top` int NULL DEFAULT 0 COMMENT '是否置顶',
  `top_time` datetime NULL DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '社区互动' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (1, '2025-04-03 22:48:15', '帖子标题1', '帖子内容1', 0, 1, '用户名1', 'file/forumAvatarurl1.jpg,file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg', '开放', 0, '2025-04-03 22:48:15');
INSERT INTO `forum` VALUES (2, '2025-04-03 22:48:15', '帖子标题2', '帖子内容2', 0, 2, '用户名2', 'file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg', '开放', 0, '2025-04-03 22:48:15');
INSERT INTO `forum` VALUES (3, '2025-04-03 22:48:15', '帖子标题3', '帖子内容3', 0, 3, '用户名3', 'file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg', '开放', 0, '2025-04-03 22:48:15');
INSERT INTO `forum` VALUES (4, '2025-04-03 22:48:15', '帖子标题4', '帖子内容4', 0, 4, '用户名4', 'file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg', '开放', 0, '2025-04-03 22:48:15');
INSERT INTO `forum` VALUES (5, '2025-04-03 22:48:15', '帖子标题5', '帖子内容5', 0, 5, '用户名5', 'file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg', '开放', 0, '2025-04-03 22:48:15');
INSERT INTO `forum` VALUES (6, '2025-04-03 22:48:15', '帖子标题6', '帖子内容6', 0, 6, '用户名6', 'file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg,file/forumAvatarurl8.jpg', '开放', 0, '2025-04-03 22:48:15');
INSERT INTO `forum` VALUES (7, '2025-04-03 22:48:15', '帖子标题7', '帖子内容7', 0, 7, '用户名7', 'file/forumAvatarurl7.jpg,file/forumAvatarurl8.jpg,file/forumAvatarurl9.jpg', '开放', 0, '2025-04-03 22:48:15');
INSERT INTO `forum` VALUES (8, '2025-04-03 22:48:15', '帖子标题8', '帖子内容8', 0, 8, '用户名8', 'file/forumAvatarurl8.jpg,file/forumAvatarurl9.jpg,file/forumAvatarurl10.jpg', '开放', 0, '2025-04-03 22:48:15');
INSERT INTO `forum` VALUES (9, '2025-04-03 22:48:15', '帖子标题9', '帖子内容9', 0, 9, '用户名9', 'file/forumAvatarurl9.jpg,file/forumAvatarurl10.jpg,file/forumAvatarurl11.jpg', '开放', 0, '2025-04-03 22:48:15');
INSERT INTO `forum` VALUES (10, '2025-04-03 22:48:15', '帖子标题10', '帖子内容10', 0, 10, '用户名10', 'file/forumAvatarurl10.jpg,file/forumAvatarurl11.jpg,file/forumAvatarurl12.jpg', '开放', 0, '2025-04-03 22:48:15');
INSERT INTO `forum` VALUES (11, '2025-04-03 23:05:47', '份额挖方', '<p>份额挖方</p>', 0, 1743692531114, '11', 'file/1743692528557.jpg', '开放', 1, '2025-04-03 23:05:47');
INSERT INTO `forum` VALUES (12, '2025-04-03 23:05:51', NULL, '<p>份额挖方</p>', 2, 1743692531114, '11', 'file/1743692528557.jpg', NULL, 0, NULL);

-- ----------------------------
-- Table structure for fuwujiedan
-- ----------------------------
DROP TABLE IF EXISTS `fuwujiedan`;
CREATE TABLE `fuwujiedan`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务类型',
  `fuwushijian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务时间',
  `jiage` double NULL DEFAULT NULL COMMENT '价格',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `sheyingshizhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师账号',
  `sheyingshixingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师姓名',
  `xiadanshijian` datetime NULL DEFAULT NULL COMMENT '下单时间',
  `fuwuzhuangtai` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务状态',
  `jiedanshijian` datetime NULL DEFAULT NULL COMMENT '接单时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '服务接单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fuwujiedan
-- ----------------------------
INSERT INTO `fuwujiedan` VALUES (1, '2025-04-03 22:48:16', '服务名称1', '服务类型1', '服务时间1', 1, '用户账号1', '用户姓名1', '摄影师账号1', '摄影师姓名1', '2025-04-03 22:48:16', '已完成', '2025-04-03 22:48:16');
INSERT INTO `fuwujiedan` VALUES (2, '2025-04-03 22:48:16', '服务名称2', '服务类型2', '服务时间2', 2, '用户账号2', '用户姓名2', '摄影师账号2', '摄影师姓名2', '2025-04-03 22:48:16', '已完成', '2025-04-03 22:48:16');
INSERT INTO `fuwujiedan` VALUES (3, '2025-04-03 22:48:16', '服务名称3', '服务类型3', '服务时间3', 3, '用户账号3', '用户姓名3', '摄影师账号3', '摄影师姓名3', '2025-04-03 22:48:16', '已完成', '2025-04-03 22:48:16');
INSERT INTO `fuwujiedan` VALUES (4, '2025-04-03 22:48:16', '服务名称4', '服务类型4', '服务时间4', 4, '用户账号4', '用户姓名4', '摄影师账号4', '摄影师姓名4', '2025-04-03 22:48:16', '已完成', '2025-04-03 22:48:16');
INSERT INTO `fuwujiedan` VALUES (5, '2025-04-03 22:48:16', '服务名称5', '服务类型5', '服务时间5', 5, '用户账号5', '用户姓名5', '摄影师账号5', '摄影师姓名5', '2025-04-03 22:48:16', '已完成', '2025-04-03 22:48:16');
INSERT INTO `fuwujiedan` VALUES (6, '2025-04-03 22:48:16', '服务名称6', '服务类型6', '服务时间6', 6, '用户账号6', '用户姓名6', '摄影师账号6', '摄影师姓名6', '2025-04-03 22:48:16', '已完成', '2025-04-03 22:48:16');
INSERT INTO `fuwujiedan` VALUES (7, '2025-04-03 22:48:16', '服务名称7', '服务类型7', '服务时间7', 7, '用户账号7', '用户姓名7', '摄影师账号7', '摄影师姓名7', '2025-04-03 22:48:16', '已完成', '2025-04-03 22:48:16');
INSERT INTO `fuwujiedan` VALUES (8, '2025-04-03 22:48:16', '服务名称8', '服务类型8', '服务时间8', 8, '用户账号8', '用户姓名8', '摄影师账号8', '摄影师姓名8', '2025-04-03 22:48:16', '已完成', '2025-04-03 22:48:16');
INSERT INTO `fuwujiedan` VALUES (9, '2025-04-03 22:48:16', '服务名称9', '服务类型9', '服务时间9', 9, '用户账号9', '用户姓名9', '摄影师账号9', '摄影师姓名9', '2025-04-03 22:48:16', '已完成', '2025-04-03 22:48:16');
INSERT INTO `fuwujiedan` VALUES (10, '2025-04-03 22:48:16', '服务名称10', '服务类型10', '服务时间10', 10, '用户账号10', '用户姓名10', '摄影师账号10', '摄影师姓名10', '2025-04-03 22:48:16', '已完成', '2025-04-03 22:48:16');
INSERT INTO `fuwujiedan` VALUES (11, '2025-04-03 23:06:16', '份额挖方', '服务类型9', '5', 200, '11', '李玉', '11', '李玉', '2025-04-03 23:05:37', '已完成', '2025-04-03 23:06:14');

-- ----------------------------
-- Table structure for fuwuleixing
-- ----------------------------
DROP TABLE IF EXISTS `fuwuleixing`;
CREATE TABLE `fuwuleixing`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuleixing` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '服务类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fuwuleixing
-- ----------------------------
INSERT INTO `fuwuleixing` VALUES (1, '2025-04-03 22:48:16', '服务类型1');
INSERT INTO `fuwuleixing` VALUES (2, '2025-04-03 22:48:16', '服务类型2');
INSERT INTO `fuwuleixing` VALUES (3, '2025-04-03 22:48:16', '服务类型3');
INSERT INTO `fuwuleixing` VALUES (4, '2025-04-03 22:48:16', '服务类型4');
INSERT INTO `fuwuleixing` VALUES (5, '2025-04-03 22:48:16', '服务类型5');
INSERT INTO `fuwuleixing` VALUES (6, '2025-04-03 22:48:16', '服务类型6');
INSERT INTO `fuwuleixing` VALUES (7, '2025-04-03 22:48:16', '服务类型7');
INSERT INTO `fuwuleixing` VALUES (8, '2025-04-03 22:48:16', '服务类型8');
INSERT INTO `fuwuleixing` VALUES (9, '2025-04-03 22:48:16', '服务类型9');
INSERT INTO `fuwuleixing` VALUES (10, '2025-04-03 22:48:16', '服务类型10');
INSERT INTO `fuwuleixing` VALUES (11, '2025-04-03 23:04:17', '11');

-- ----------------------------
-- Table structure for fuwuwancheng
-- ----------------------------
DROP TABLE IF EXISTS `fuwuwancheng`;
CREATE TABLE `fuwuwancheng`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务类型',
  `fuwushijian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务时间',
  `jiage` double NULL DEFAULT NULL COMMENT '价格',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `sheyingshizhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师账号',
  `sheyingshixingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师姓名',
  `xiadanshijian` datetime NULL DEFAULT NULL COMMENT '下单时间',
  `wanchengshijian` datetime NULL DEFAULT NULL COMMENT '完成时间',
  `beizhu` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '服务完成' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fuwuwancheng
-- ----------------------------
INSERT INTO `fuwuwancheng` VALUES (1, '2025-04-03 22:48:16', '服务名称1', '服务类型1', '服务时间1', 1, '用户账号1', '用户姓名1', '摄影师账号1', '摄影师姓名1', '2025-04-03 22:48:16', '2025-04-03 22:48:16', '备注1');
INSERT INTO `fuwuwancheng` VALUES (2, '2025-04-03 22:48:16', '服务名称2', '服务类型2', '服务时间2', 2, '用户账号2', '用户姓名2', '摄影师账号2', '摄影师姓名2', '2025-04-03 22:48:16', '2025-04-03 22:48:16', '备注2');
INSERT INTO `fuwuwancheng` VALUES (3, '2025-04-03 22:48:16', '服务名称3', '服务类型3', '服务时间3', 3, '用户账号3', '用户姓名3', '摄影师账号3', '摄影师姓名3', '2025-04-03 22:48:16', '2025-04-03 22:48:16', '备注3');
INSERT INTO `fuwuwancheng` VALUES (4, '2025-04-03 22:48:16', '服务名称4', '服务类型4', '服务时间4', 4, '用户账号4', '用户姓名4', '摄影师账号4', '摄影师姓名4', '2025-04-03 22:48:16', '2025-04-03 22:48:16', '备注4');
INSERT INTO `fuwuwancheng` VALUES (5, '2025-04-03 22:48:16', '服务名称5', '服务类型5', '服务时间5', 5, '用户账号5', '用户姓名5', '摄影师账号5', '摄影师姓名5', '2025-04-03 22:48:16', '2025-04-03 22:48:16', '备注5');
INSERT INTO `fuwuwancheng` VALUES (6, '2025-04-03 22:48:16', '服务名称6', '服务类型6', '服务时间6', 6, '用户账号6', '用户姓名6', '摄影师账号6', '摄影师姓名6', '2025-04-03 22:48:16', '2025-04-03 22:48:16', '备注6');
INSERT INTO `fuwuwancheng` VALUES (7, '2025-04-03 22:48:16', '服务名称7', '服务类型7', '服务时间7', 7, '用户账号7', '用户姓名7', '摄影师账号7', '摄影师姓名7', '2025-04-03 22:48:16', '2025-04-03 22:48:16', '备注7');
INSERT INTO `fuwuwancheng` VALUES (8, '2025-04-03 22:48:16', '服务名称8', '服务类型8', '服务时间8', 8, '用户账号8', '用户姓名8', '摄影师账号8', '摄影师姓名8', '2025-04-03 22:48:16', '2025-04-03 22:48:16', '备注8');
INSERT INTO `fuwuwancheng` VALUES (9, '2025-04-03 22:48:16', '服务名称9', '服务类型9', '服务时间9', 9, '用户账号9', '用户姓名9', '摄影师账号9', '摄影师姓名9', '2025-04-03 22:48:16', '2025-04-03 22:48:16', '备注9');
INSERT INTO `fuwuwancheng` VALUES (10, '2025-04-03 22:48:16', '服务名称10', '服务类型10', '服务时间10', 10, '用户账号10', '用户姓名10', '摄影师账号10', '摄影师姓名10', '2025-04-03 22:48:16', '2025-04-03 22:48:16', '备注10');
INSERT INTO `fuwuwancheng` VALUES (11, '2025-04-03 23:06:20', '份额挖方', '服务类型9', '5', 200, '11', '李玉', '11', '李玉', '2025-04-03 23:05:37', '2025-04-03 23:06:18', '11');

-- ----------------------------
-- Table structure for fuwuxiadan
-- ----------------------------
DROP TABLE IF EXISTS `fuwuxiadan`;
CREATE TABLE `fuwuxiadan`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务类型',
  `fuwushijian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务时间',
  `jiage` double NULL DEFAULT NULL COMMENT '价格',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `sheyingshizhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师账号',
  `sheyingshixingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师姓名',
  `xiadanshijian` datetime NULL DEFAULT NULL COMMENT '下单时间',
  `fuwuzhuangtai` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务状态',
  `ispay` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '服务下单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fuwuxiadan
-- ----------------------------
INSERT INTO `fuwuxiadan` VALUES (1, '2025-04-03 22:48:16', '服务名称1', '服务类型1', '服务时间1', 1, '用户账号1', '用户姓名1', '摄影师账号1', '摄影师姓名1', '2025-04-03 22:48:16', '已接单', '未支付');
INSERT INTO `fuwuxiadan` VALUES (2, '2025-04-03 22:48:16', '服务名称2', '服务类型2', '服务时间2', 2, '用户账号2', '用户姓名2', '摄影师账号2', '摄影师姓名2', '2025-04-03 22:48:16', '已接单', '未支付');
INSERT INTO `fuwuxiadan` VALUES (3, '2025-04-03 22:48:16', '服务名称3', '服务类型3', '服务时间3', 3, '用户账号3', '用户姓名3', '摄影师账号3', '摄影师姓名3', '2025-04-03 22:48:16', '已接单', '未支付');
INSERT INTO `fuwuxiadan` VALUES (4, '2025-04-03 22:48:16', '服务名称4', '服务类型4', '服务时间4', 4, '用户账号4', '用户姓名4', '摄影师账号4', '摄影师姓名4', '2025-04-03 22:48:16', '已接单', '未支付');
INSERT INTO `fuwuxiadan` VALUES (5, '2025-04-03 22:48:16', '服务名称5', '服务类型5', '服务时间5', 5, '用户账号5', '用户姓名5', '摄影师账号5', '摄影师姓名5', '2025-04-03 22:48:16', '已接单', '未支付');
INSERT INTO `fuwuxiadan` VALUES (6, '2025-04-03 22:48:16', '服务名称6', '服务类型6', '服务时间6', 6, '用户账号6', '用户姓名6', '摄影师账号6', '摄影师姓名6', '2025-04-03 22:48:16', '已接单', '未支付');
INSERT INTO `fuwuxiadan` VALUES (7, '2025-04-03 22:48:16', '服务名称7', '服务类型7', '服务时间7', 7, '用户账号7', '用户姓名7', '摄影师账号7', '摄影师姓名7', '2025-04-03 22:48:16', '已接单', '未支付');
INSERT INTO `fuwuxiadan` VALUES (8, '2025-04-03 22:48:16', '服务名称8', '服务类型8', '服务时间8', 8, '用户账号8', '用户姓名8', '摄影师账号8', '摄影师姓名8', '2025-04-03 22:48:16', '已接单', '未支付');
INSERT INTO `fuwuxiadan` VALUES (9, '2025-04-03 22:48:16', '服务名称9', '服务类型9', '服务时间9', 9, '用户账号9', '用户姓名9', '摄影师账号9', '摄影师姓名9', '2025-04-03 22:48:16', '已接单', '未支付');
INSERT INTO `fuwuxiadan` VALUES (10, '2025-04-03 22:48:16', '服务名称10', '服务类型10', '服务时间10', 10, '用户账号10', '用户姓名10', '摄影师账号10', '摄影师姓名10', '2025-04-03 22:48:16', '已接单', '未支付');
INSERT INTO `fuwuxiadan` VALUES (11, '2025-04-03 23:05:40', '份额挖方', '服务类型9', '5', 200, '11', '李玉', '11', '李玉', '2025-04-03 23:05:37', '已接单', '已支付');

-- ----------------------------
-- Table structure for huodongbaoming
-- ----------------------------
DROP TABLE IF EXISTS `huodongbaoming`;
CREATE TABLE `huodongbaoming`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动名称',
  `kaishishijian` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `huodongdidian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动地点',
  `baomingshijian` datetime NULL DEFAULT NULL COMMENT '报名时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '回复内容',
  `sheyingshizhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师账号',
  `sheyingshixingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '活动报名' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of huodongbaoming
-- ----------------------------
INSERT INTO `huodongbaoming` VALUES (1, '2025-04-03 22:48:15', '活动名称1', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点1', '2025-04-03 22:48:15', '用户账号1', '用户姓名1', '是', '', '摄影师账号1', '摄影师姓名1');
INSERT INTO `huodongbaoming` VALUES (2, '2025-04-03 22:48:15', '活动名称2', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点2', '2025-04-03 22:48:15', '用户账号2', '用户姓名2', '是', '', '摄影师账号2', '摄影师姓名2');
INSERT INTO `huodongbaoming` VALUES (3, '2025-04-03 22:48:15', '活动名称3', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点3', '2025-04-03 22:48:15', '用户账号3', '用户姓名3', '是', '', '摄影师账号3', '摄影师姓名3');
INSERT INTO `huodongbaoming` VALUES (4, '2025-04-03 22:48:15', '活动名称4', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点4', '2025-04-03 22:48:15', '用户账号4', '用户姓名4', '是', '', '摄影师账号4', '摄影师姓名4');
INSERT INTO `huodongbaoming` VALUES (5, '2025-04-03 22:48:15', '活动名称5', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点5', '2025-04-03 22:48:15', '用户账号5', '用户姓名5', '是', '', '摄影师账号5', '摄影师姓名5');
INSERT INTO `huodongbaoming` VALUES (6, '2025-04-03 22:48:15', '活动名称6', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点6', '2025-04-03 22:48:15', '用户账号6', '用户姓名6', '是', '', '摄影师账号6', '摄影师姓名6');
INSERT INTO `huodongbaoming` VALUES (7, '2025-04-03 22:48:15', '活动名称7', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点7', '2025-04-03 22:48:15', '用户账号7', '用户姓名7', '是', '', '摄影师账号7', '摄影师姓名7');
INSERT INTO `huodongbaoming` VALUES (8, '2025-04-03 22:48:15', '活动名称8', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点8', '2025-04-03 22:48:15', '用户账号8', '用户姓名8', '是', '', '摄影师账号8', '摄影师姓名8');
INSERT INTO `huodongbaoming` VALUES (9, '2025-04-03 22:48:15', '活动名称9', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点9', '2025-04-03 22:48:15', '用户账号9', '用户姓名9', '是', '', '摄影师账号9', '摄影师姓名9');
INSERT INTO `huodongbaoming` VALUES (10, '2025-04-03 22:48:15', '活动名称10', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点10', '2025-04-03 22:48:15', '用户账号10', '用户姓名10', '是', '', '摄影师账号10', '摄影师姓名10');
INSERT INTO `huodongbaoming` VALUES (11, '2025-04-03 23:05:07', '氛围放', '2025-04-03 23:03:07', '2025-04-18 00:00:00', '范围啊发哇', '2025-04-03 23:05:04', '11', '李玉', '是', '通过', '11', '李玉');

-- ----------------------------
-- Table structure for huodongleixing
-- ----------------------------
DROP TABLE IF EXISTS `huodongleixing`;
CREATE TABLE `huodongleixing`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongleixing` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '活动类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of huodongleixing
-- ----------------------------
INSERT INTO `huodongleixing` VALUES (1, '2025-04-03 22:48:16', '活动类型1');
INSERT INTO `huodongleixing` VALUES (2, '2025-04-03 22:48:16', '活动类型2');
INSERT INTO `huodongleixing` VALUES (3, '2025-04-03 22:48:16', '活动类型3');
INSERT INTO `huodongleixing` VALUES (4, '2025-04-03 22:48:16', '活动类型4');
INSERT INTO `huodongleixing` VALUES (5, '2025-04-03 22:48:16', '活动类型5');
INSERT INTO `huodongleixing` VALUES (6, '2025-04-03 22:48:16', '活动类型6');
INSERT INTO `huodongleixing` VALUES (7, '2025-04-03 22:48:16', '活动类型7');
INSERT INTO `huodongleixing` VALUES (8, '2025-04-03 22:48:16', '活动类型8');
INSERT INTO `huodongleixing` VALUES (9, '2025-04-03 22:48:16', '活动类型9');
INSERT INTO `huodongleixing` VALUES (10, '2025-04-03 22:48:16', '活动类型10');
INSERT INTO `huodongleixing` VALUES (11, '2025-04-03 23:04:14', '11');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '2025-04-03 22:48:16', '[{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"config\",\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"},{\"allButtons\":[\"菜单管理\"],\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"菜单管理\"],\"classname\":\"menu\",\"menu\":\"菜单\",\"menuJump\":\"列表\",\"tableName\":\"menu\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"news\",\"menu\":\"通知推送\",\"menuJump\":\"列表\",\"tableName\":\"news\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"syslog\",\"menu\":\"操作日志\",\"menuJump\":\"列表\",\"tableName\":\"syslog\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"zuopinfenlei\",\"menu\":\"作品分类\",\"menuJump\":\"列表\",\"tableName\":\"zuopinfenlei\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"huodongleixing\",\"menu\":\"活动类型\",\"menuJump\":\"列表\",\"tableName\":\"huodongleixing\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"fuwuleixing\",\"menu\":\"服务类型\",\"menuJump\":\"列表\",\"tableName\":\"fuwuleixing\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"biaoqian\",\"menu\":\"标签\",\"menuJump\":\"列表\",\"tableName\":\"biaoqian\"}],\"fontClass\":\"icon-common32\",\"menu\":\"系统管理\",\"unicode\":\"&#xee66;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"users\",\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\",\"私信\"],\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"classname\":\"yonghu\",\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"私信\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"shangjia\",\"menu\":\"商家\",\"menuJump\":\"列表\",\"tableName\":\"shangjia\"}],\"fontClass\":\"icon-common46\",\"menu\":\"用户管理\",\"unicode\":\"&#xef3d;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"点赞量统计\",\"收藏数统计\",\"作品分类统计\",\"查看评论\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\",\"点赞量统计\",\"收藏数统计\",\"作品分类统计\",\"查看评论\",\"首页总数\",\"首页统计\"],\"classname\":\"sheyingzuopin\",\"menu\":\"摄影作品\",\"menuJump\":\"列表\",\"tableName\":\"sheyingzuopin\"}],\"fontClass\":\"icon-common10\",\"menu\":\"摄影作品管理\",\"unicode\":\"&#xedd1;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"活动类型统计\",\"首页总数\",\"首页统计\",\"报名\",\"投票\"],\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"活动类型统计\",\"首页总数\",\"首页统计\"],\"classname\":\"sheyinghuodong\",\"menu\":\"摄影活动\",\"menuJump\":\"列表\",\"tableName\":\"sheyinghuodong\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"活动报名数量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"活动报名数量统计\",\"首页总数\",\"首页统计\"],\"classname\":\"huodongbaoming\",\"menu\":\"活动报名\",\"menuJump\":\"列表\",\"tableName\":\"huodongbaoming\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"toupiaoxinxi\",\"menu\":\"投票信息\",\"menuJump\":\"列表\",\"tableName\":\"toupiaoxinxi\"}],\"fontClass\":\"icon-common35\",\"menu\":\"摄影活动管理\",\"unicode\":\"&#xee8c;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"查看评论\"],\"classname\":\"forum\",\"menu\":\"社区互动\",\"tableName\":\"forum\"}],\"menu\":\"论坛管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\",\"私信\",\"下单\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"查看评论\"],\"classname\":\"sheyingfuwu\",\"menu\":\"摄影服务\",\"menuJump\":\"列表\",\"tableName\":\"sheyingfuwu\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"支付\",\"接单\"],\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"fuwuxiadan\",\"menu\":\"服务下单\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxiadan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"服务完成\"],\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"classname\":\"fuwujiedan\",\"menu\":\"服务接单\",\"menuJump\":\"列表\",\"tableName\":\"fuwujiedan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"订单收入统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"订单收入统计\",\"首页总数\",\"首页统计\"],\"classname\":\"fuwuwancheng\",\"menu\":\"服务完成\",\"menuJump\":\"列表\",\"tableName\":\"fuwuwancheng\"}],\"fontClass\":\"icon-common42\",\"menu\":\"服务信息管理\",\"unicode\":\"&#xef24;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"classname\":\"sheyingzuopin\",\"menu\":\"摄影作品\",\"menuJump\":\"列表\",\"tableName\":\"sheyingzuopin\"}],\"menu\":\"摄影作品管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"报名\",\"投票\"],\"classname\":\"sheyinghuodong\",\"menu\":\"摄影活动\",\"menuJump\":\"列表\",\"tableName\":\"sheyinghuodong\"}],\"menu\":\"摄影活动管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"查看评论\",\"私信\",\"下单\"],\"classname\":\"sheyingfuwu\",\"menu\":\"摄影服务\",\"menuJump\":\"列表\",\"tableName\":\"sheyingfuwu\"}],\"menu\":\"服务信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"forum\",\"menu\":\"社区互动\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"users\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"活动报名数量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"删除\",\"修改\"],\"classname\":\"huodongbaoming\",\"menu\":\"活动报名\",\"menuJump\":\"列表\",\"tableName\":\"huodongbaoming\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"删除\"],\"classname\":\"toupiaoxinxi\",\"menu\":\"投票信息\",\"menuJump\":\"列表\",\"tableName\":\"toupiaoxinxi\"}],\"fontClass\":\"icon-common35\",\"menu\":\"摄影活动管理\",\"unicode\":\"&#xee8c;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"forum\",\"menu\":\"我的发布\",\"menuJump\":\"14\",\"tableName\":\"forum\"}],\"menu\":\"论坛管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\"],\"classname\":\"storeup\",\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common40\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"支付\",\"接单\"],\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"删除\",\"支付\"],\"classname\":\"fuwuxiadan\",\"menu\":\"服务下单\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxiadan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"服务完成\"],\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"删除\"],\"classname\":\"fuwujiedan\",\"menu\":\"服务接单\",\"menuJump\":\"列表\",\"tableName\":\"fuwujiedan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"订单收入统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\"],\"classname\":\"fuwuwancheng\",\"menu\":\"服务完成\",\"menuJump\":\"列表\",\"tableName\":\"fuwuwancheng\"}],\"fontClass\":\"icon-common42\",\"menu\":\"服务信息管理\",\"unicode\":\"&#xef24;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"classname\":\"sheyingzuopin\",\"menu\":\"摄影作品\",\"menuJump\":\"列表\",\"tableName\":\"sheyingzuopin\"}],\"menu\":\"摄影作品管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"报名\",\"投票\"],\"classname\":\"sheyinghuodong\",\"menu\":\"摄影活动\",\"menuJump\":\"列表\",\"tableName\":\"sheyinghuodong\"}],\"menu\":\"摄影活动管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"查看评论\",\"私信\",\"下单\"],\"classname\":\"sheyingfuwu\",\"menu\":\"摄影服务\",\"menuJump\":\"列表\",\"tableName\":\"sheyingfuwu\"}],\"menu\":\"服务信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"forum\",\"menu\":\"社区互动\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"pathName\":\"yonghu\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"点赞量统计\",\"收藏数统计\",\"作品分类统计\",\"查看评论\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"点赞量统计\",\"收藏数统计\",\"作品分类统计\",\"查看评论\",\"首页总数\",\"首页统计\"],\"classname\":\"sheyingzuopin\",\"menu\":\"摄影作品\",\"menuJump\":\"列表\",\"tableName\":\"sheyingzuopin\"}],\"fontClass\":\"icon-common10\",\"menu\":\"摄影作品管理\",\"unicode\":\"&#xedd1;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"活动类型统计\",\"首页总数\",\"首页统计\",\"报名\",\"投票\"],\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"活动类型统计\",\"首页总数\",\"首页统计\"],\"classname\":\"sheyinghuodong\",\"menu\":\"摄影活动\",\"menuJump\":\"列表\",\"tableName\":\"sheyinghuodong\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"活动报名数量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"活动报名数量统计\",\"首页总数\",\"首页统计\",\"审核\"],\"classname\":\"huodongbaoming\",\"menu\":\"活动报名\",\"menuJump\":\"列表\",\"tableName\":\"huodongbaoming\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"删除\"],\"classname\":\"toupiaoxinxi\",\"menu\":\"投票信息\",\"menuJump\":\"列表\",\"tableName\":\"toupiaoxinxi\"}],\"fontClass\":\"icon-common35\",\"menu\":\"摄影活动管理\",\"unicode\":\"&#xee8c;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\",\"私信\",\"下单\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"classname\":\"sheyingfuwu\",\"menu\":\"摄影服务\",\"menuJump\":\"列表\",\"tableName\":\"sheyingfuwu\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"支付\",\"接单\"],\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"接单\"],\"classname\":\"fuwuxiadan\",\"menu\":\"服务下单\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxiadan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"服务完成\"],\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"服务完成\"],\"classname\":\"fuwujiedan\",\"menu\":\"服务接单\",\"menuJump\":\"列表\",\"tableName\":\"fuwujiedan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"订单收入统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"订单收入统计\",\"首页总数\",\"首页统计\"],\"classname\":\"fuwuwancheng\",\"menu\":\"服务完成\",\"menuJump\":\"列表\",\"tableName\":\"fuwuwancheng\"}],\"fontClass\":\"icon-common42\",\"menu\":\"服务信息管理\",\"unicode\":\"&#xef24;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"classname\":\"sheyingzuopin\",\"menu\":\"摄影作品\",\"menuJump\":\"列表\",\"tableName\":\"sheyingzuopin\"}],\"menu\":\"摄影作品管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"报名\",\"投票\"],\"classname\":\"sheyinghuodong\",\"menu\":\"摄影活动\",\"menuJump\":\"列表\",\"tableName\":\"sheyinghuodong\"}],\"menu\":\"摄影活动管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"查看评论\",\"私信\",\"下单\"],\"classname\":\"sheyingfuwu\",\"menu\":\"摄影服务\",\"menuJump\":\"列表\",\"tableName\":\"sheyingfuwu\"}],\"menu\":\"服务信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"classname\":\"forum\",\"menu\":\"社区互动\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"shangjia\",\"roleName\":\"商家\",\"tableName\":\"shangjia\"}]');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '简介',
  `picture` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '通知推送' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '2025-04-03 22:48:15', '余生，愿你活出自己的精彩', '曾几何时，为了让自己显得合群，选择去做自己不喜欢的事;为了讨好喜欢的人，一次次地委屈自己;甚至，为了陌生人的一个眼神，就陷入了深深的自我怀疑。', 'file/newsPicture1.jpg', '可是，这样小心翼翼的你，一定很累吧。你以为照顾了所有人的想法，就能得到他们的喜欢;你以为逼着自己合群，就能真的合群。直到后来才发现，在日复一日对自己的为难中，你逐渐弄丢了真实的自己.\n殊不知，人生在世，最不值得的事情，就是在别人的眼光中，迷失自己。其实，正如世界上没有十全十美的人，你也同样无法做到让每个人满意。\n世上没有不快乐的人，只有不肯让自己快乐的心。有一句话说:\n如果一段关系让你变得卑微，你可以选择抽身离去;如果一个人总是让你悲伤哭泣，你要学会放手。\n始终相信，每个人最初的样子，都是最美好的。真正喜欢你的人，会喜欢你原来的样子:真正爱你的从来不需要你的委曲求全。\n后半生，请把身上的枷锁，全部解除。去做喜欢的事，去听自己内心的声音。你会发现，这世上没有什么事情比活出自己更加幸福。\n要相信，真实的自己亦是一道风景线。你若盛开，清风自来。愿你此生尽兴，不负韶华，');
INSERT INTO `news` VALUES (2, '2025-04-03 22:48:15', '岁月无常，好好珍惜', '常听到这样的话，如果一切可以重新开始，我一定改掉任性，学会坚持，如果有下辈子，我一定好好珍惜，不会再弄丢原本属于自己的幸福。', 'file/newsPicture2.jpg', '然而，世上有很多事情没有再来一次的机会，一旦错失就意味着无法弥补，正如人与人之间，有的只是一世的缘分，一旦转身，就意味着再无可能。\n这一生只活一次，有些人也只爱一回。\n所以，在拥有时就好好把握，对于来世，可以适当憧憬，但不要一昧去幻想，活着，唯有珍惜身边做好眼前事，才能让明天少一些遗憾。人，\n既然有幸来到这个世上，那就要努力把这辈子活好。岁月其实远没有想象中的那么漫长，若是能爱就好好爱，别让说好相伴一生的人，中途散走;若是当下能相知相守，就别去等待虚无缥缈的未来。\n就像一位网友留言说的:我从来不去期待下辈子，我要的只有今生，世事无常，来世是怎样的光景，谁都无法预知。对我来说，在有限的时光里，善待爱自己及自己爱的人，用心珍惜相聚的每一时刻，努力过好当下就足够了。\n时光匆匆，韶华似水，每个人都只有这短暂的一生。\n有些事，如果喜欢就坚定努力的去做，有些人，如果爱就真诚用心地去爱，别幻想着重来，别总是寄希望于下辈子。\n下辈子，彼此也许再也不会遇见，就算遇见了，谁还会记得谁，今生相互承诺的两个人，来生也许相见不相识。\n想起之前看过的一句话:人生没有假如，我们没有来世，下辈子，你我也许只是大千世界里互不相识的两个陌生人。\n的确，生命只有一次，今生有幸相遇的人，下辈子不一定能遇见，就算能遇见，谁能把谁陪伴，谁又是谁的谁?\n余生不长，趁着岁月未老，好好珍惜这辈子的缘分吧，别等到失去了才悔不该当初。');
INSERT INTO `news` VALUES (3, '2025-04-03 22:48:15', '与其背着烦恼活，不如带着美好过', '一直觉得，感情里，无疾而终并不可怕，可怕的是结束后，你还抱着回忆不肯放;岁月中，失去并不可怕，可怕的是失去后，你还揪着曾经不肯忘。\n有些事，明知道不应该继续，却始终没有转身的勇气;有些人，明知道已经成为过去，却还是舍不得放手;有时候，明知道纠缠于往事旧人只会徒增伤悲，却仍然执着的去回忆，去留恋。', 'file/newsPicture3.jpg', '人生短短几十年，为什么要蹉跎浪费在无可挽回的失去上，为什么不酒脱一点，看开一点，活得轻松快乐一点。\n这世间，没有谁的人生是十全十美的，总要面对一些离别，总要经历一些失去，如果总对身边的一切执念太深，只会越活越累。\n时间不停向前，人也不可避免的要向前看。面对一些不如意、不顺心的事，该放的就放，该忘的就忘，别总把自己困在失败的悲伤中。\n生而为人，放不是无能，而是一种洒脱，忘更不是懦弱，而是一种智慧。\n在来去匆匆，聚散不定的现实里，放下不属于自己的感情，才能有新的开始，忘记心中的烦恼，才能收获愉快的心情。\n所以，有些离开的人，该放就放下吧，一直念念不忘，伤害的是自己，有些烦心事，该忘就忘了吧一直耿耿于怀，痛苦的是自己。\n-辈子本就不长，何必让自己活得那么累，过去的情就让它过去，别再留恋，想不通的事就算了，别再纠结。\n人生的旅途，总有些事让人烦，总有些情让人伤。只有学会忘记过往的不如意，忘记一些不必要的烦恼，以轻盈的身心重新出发，才不会被旧人旧事所累。\n记得，每个人心灵的空间都是有限的，当装多了纠结与伤感，就装不下自在与欢快了。要想日子过得简单轻松一点，就要懂得放下执念，忘掉痛苦，清除伤。');
INSERT INTO `news` VALUES (4, '2025-04-03 22:48:15', '理想很丰满，现实很骨感', '游戏里的你帅气无比，乘风御剑，通关杀敌无所不能，你满足于那其中的成就感，你满足于通关的畅快淋漓。', 'file/newsPicture4.jpg', '年轻人，可那毕竟不是现实，理想很丰满，现实很骨感这不是玩笑，你不走出来，怎么会知\n你真的想等到某天喜欢上一个姑娘时，才去纠结咖啡钱电影钱你要如何与爸妈张口，才去苦恼为她买礼物你要怎样省吃俭用节衣缩食?\n你没有挥金如土的.魄力，没有殷实的家境，没有既定的光芒锦绣的前程，二十出头的年纪，你不努力，你想拿什么报答那个在你身边用最好的青春陪伴你的姑娘?你又拿什么报答含辛茹苦养育你这么多年的父母?\n生活不是游戏，不会给你那么多反复再来的机会，青春年少风华正茂，年轻人，你不努力，你想指望什么?\n年轻人，走出来奋斗吧!累也好苦也罢。如果你现在对自己各种放纵，你指望以后你用什么条件来放松?\n年轻人，你要努力赚钱，为了自己，也为了你爸妈。为了他们在以后逛商场的时候，可以给自己买东西像给你买东西一样毫不犹豫。为了他们可以在同老友谈起你时可以一脸安详，而不是想着，这个月，儿子交了房租还有钱吃饭么。我们这个年龄的人，已经像吸血鬼一样巴着父母活了二十多年了，还真的要继续吸着他们的血活下去么?\n年轻人，停止期望凡事简单容易。如果总是挑简单的事情做，那你永远成不了大器，生活总会在始料不及时考验你，所以你必须挑战困难，保持坚强，世上任何值得拥有的东西都需要付诸努力，勤奋与自律，倘若自甘平庸，那你就会变得庸碌无为。\n年轻人，与我们一起，挑战一下自己，拥抱一下梦想。你想要的生活，跳起来，一定够得到!');
INSERT INTO `news` VALUES (5, '2025-04-03 22:48:15', '理想是一种精神上的追求', '如果前方是一片黑暗，理想是否会黯淡?黑暗终究不能限制理想的步伐，只是需要时间。', 'file/newsPicture5.jpg', '是否会撕裂黑暗的结界?给理想一点时间，是否会完成理想的目标?太多时候，黑给黑暗一缕曙光，暗限制了理想的脚步，时间成了撕裂黑暗的曙光。社会的压抑，未知的迷茫，甚至是事实的打击，都成了所谓的黑暗。\n理想应该是一种精神上的追求，一种我们内心深处的渴望。也许理想的种类太多，不一样的人也有不一样的理想。但唯一的共同点就是我们在追求，追求自己精神上亦或是心中的目标。但总是不尽人意，一来存在太多不确定因素，二来时间还不够。理想并不是一而就的空话。\n想过放弃，因为理想与现实的差距。但又不想放弃，因为理想是精神上的追求心中的渴望。纠结了太多，却是否想过在纠结的时候，已经选择了错过。被刻意选择的错过是什么?是路过。我们在不经意间路过了多少理想，只是因为纠结。如果坚定自己的理想，用时间去行动，是否会少几次刻意的错过:-次，与一位朋友谈到如何乐观，然后追求理想。朋友想了一会儿，给我的回答是正能量与时间。他说，想要乐观就要不断给自己正能量。事物有阴阳两面，如果阳代表乐观，那在我们看待一件事时要看阳面千万别看阴面。这样自己不会消极，某种程度上来说就是一种正能量。想要追求理想，务必要花费时间。正如没有风平浪静的大海，想要追求理想，要时间。给理想一点时间，让自己去追求，不顾切的追求。\n点点滴滴的小事构成了我们的生活，点点滴滴的努力给理想铺平了路。每一次小成功都为理想迈进了一步。每一次失败，都告诉我们一些教训，反方向来说为下一次成功提供了经验。不要觉得失败是可怕的，长远来看，正是失败才有了成功。\n时间在流逝。如果安于现状，就会乐不思。理想需要时间不代表我们可以挥霍，我们能做的是珍惜时间，去为理想拼搏。\n间接意义上讲，理想的时间是我们的努力。\n如果正在路上，一直任性向前走，忘记时间不回头。');
INSERT INTO `news` VALUES (6, '2025-04-03 22:48:15', '111111111111111111', '人生如梦，梦想是帆，每个人都有一个只属于自己的梦，但我们同属一个国家，所以每个人的梦又与国家的兴衰荣辱紧密相连。先哲顾炎武曾说:天下兴亡，匹夫有责。只有国家好，大家才能好。', 'file/newsPicture6.jpg', '<p>111111111111111111111111111111111111111111111111111111111111</p>');
INSERT INTO `news` VALUES (7, '2025-04-03 22:48:15', '若月亮没来-王宇宙Leto，乔浚丞', '《若月亮没来(若是月亮还没来)》是王宇宙Leto，乔浚丞演唱的歌曲，于2024年1月22日上线发行。', 'file/newsPicture7.jpg', '风吹过山 船靠了岸  风光呀 一点点看  我走向北 你去往南\n故事呀 一篇篇翻  好烦 又加班到很晚  你搭上空荡的 地铁已是末班\n好烦 很爱却要分开  恋爱谈不明白  好烦 接近理想好难 却又还很不甘\n如何拥抱平淡  如果 最难得到圆满  不如选择坦然 若是月亮还没来\n路灯也可照窗台  照着白色的山茶花微微开  若是晨风还没来\n晚风也可吹入怀  吹着那一地树影温柔摇摆  你总以为你不够好\n不够苗条和美貌  可是完美谁能达到  做你自己就很好\n烦恼烦恼拥有太少  没有房车没有钞票  可爱你的人永远会 \n把你当做心尖珍宝  我也懂大多数的时候  你只想逃离这世界\n我也懂太多的情绪在  一个人失眠的深夜 你可以是悲伤或者埋怨\n但请不要放弃明天  这一直灰暗的世界  我想看见你的笑脸\n若是月亮还没来  路灯也可照窗台  照着白色的山茶花微微开\n若是晨风还没来  晚风也可吹入怀  吹着那一地树影温柔摇摆\n若是月亮还没来  路灯也可照窗台  照着白色的山茶花微微开\n若是晨风还没来  晚风也可吹入怀  吹着那一地树影温柔摇摆\n李哲今年1月份创作了《若月亮没来》这首歌。随着歌曲的热度不断上升，约他写歌的人越来越多，他的工作变得更加繁忙。\n近年来，李哲凭借对音乐的热爱和不懈的努力，创作了几百首音乐作品，其中不乏广为人知的佳作，例如王栎鑫的《一个人》、何赛飞与叶炫清在央视演唱的《木兰诗》等歌曲，都是由李哲作曲。\n如今，李哲的音乐才华和努力得到了业界的广泛认可，他的音乐作品多次登上各大音乐平台的热歌榜，成为备受瞩目的新生代音乐人。现在，走在街头、坐在车里，经常会听到自己的作品。看到自己的音乐作品受到如此广泛的喜爱和认可，我感到非常有成就感。李哲笑着说，他会努力创作更多优秀音乐作品，为家乡争光。');
INSERT INTO `news` VALUES (8, '2025-04-03 22:48:15', '-米阳光传递一份温暖', '黑暗中跌倒，坚强里苦笑。只是因为青春还在，所以梦想一直在路上。当年华未曾老去，青春没有散场，留给幽暗的岁月，还有几分值得珍藏?孤独无助时、伤心难过时总爱恣意挥霍愤怒。伤了、痛了原本以为就都结束了;可是心里还不甘愿放弃，就只为一个理由，有梦想的人永不孤单。', 'file/newsPicture8.jpg', '放进去了的青春，走不出来的悲伤却总是给年少时的我们留下太多无法割舍的情怀。记录岁月的足迹，聆听时光的故事。然轻吟浅唱出，青春嘉年华。\n故事里总会有，那些太多感慨于时间的无情，太多对往事的追忆，太多的太多，而今刻在了心里也停泻在了流年里。一段无法抹去的回忆，也只不过是一场烟火燃放的瞬间，却也一辈子在脑海里兜兜转转。很是怀念那些相遇的日子，邂逅了幸福也留在了时间轨迹里。时而想起，那些曾肩并肩奋斗的日子，那些写满感动与快乐的岁月。\n如今，我们似乎渐行渐远，彼此奋斗着青春的轮回。渐渐的，我们都长大了，时间改变了我们时刻分享彼此快乐与不快乐的习惯，青春的渐逝，岁月的更迭让我们变得都不再联系，身边的朋友也越来越少;那些欢笑，那些幸福的流年也随着我们的陌生而变得更加奢侈。也许多年以后，我们都有了自己的朋友，有了自己关心的人。那时，我们再细数那些癫狂在你生命里一辈子的记忆故事，蓦然发现一切都停留在了回忆里。');

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sheyingshizhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师账号',
  `mima` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `sheyingshixingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `sheyingshijianjie` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '摄影师简介',
  `touxiang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sheyingshizhanghao`(`sheyingshizhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商家' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES (1, '2025-04-03 22:48:15', '摄影师账号1', 'e10adc3949ba59abbe56e057f20f883e', '摄影师姓名1', '性别1', '联系方式1', '摄影师简介1', 'file/shangjiaTouxiang1.jpg');
INSERT INTO `shangjia` VALUES (2, '2025-04-03 22:48:15', '摄影师账号2', 'e10adc3949ba59abbe56e057f20f883e', '摄影师姓名2', '性别2', '联系方式2', '摄影师简介2', 'file/shangjiaTouxiang2.jpg');
INSERT INTO `shangjia` VALUES (3, '2025-04-03 22:48:15', '摄影师账号3', 'e10adc3949ba59abbe56e057f20f883e', '摄影师姓名3', '性别3', '联系方式3', '摄影师简介3', 'file/shangjiaTouxiang3.jpg');
INSERT INTO `shangjia` VALUES (4, '2025-04-03 22:48:15', '摄影师账号4', 'e10adc3949ba59abbe56e057f20f883e', '摄影师姓名4', '性别4', '联系方式4', '摄影师简介4', 'file/shangjiaTouxiang4.jpg');
INSERT INTO `shangjia` VALUES (5, '2025-04-03 22:48:15', '摄影师账号5', 'e10adc3949ba59abbe56e057f20f883e', '摄影师姓名5', '性别5', '联系方式5', '摄影师简介5', 'file/shangjiaTouxiang5.jpg');
INSERT INTO `shangjia` VALUES (6, '2025-04-03 22:48:15', '摄影师账号6', 'e10adc3949ba59abbe56e057f20f883e', '摄影师姓名6', '性别6', '联系方式6', '摄影师简介6', 'file/shangjiaTouxiang6.jpg');
INSERT INTO `shangjia` VALUES (7, '2025-04-03 22:48:15', '摄影师账号7', 'e10adc3949ba59abbe56e057f20f883e', '摄影师姓名7', '性别7', '联系方式7', '摄影师简介7', 'file/shangjiaTouxiang7.jpg');
INSERT INTO `shangjia` VALUES (8, '2025-04-03 22:48:15', '摄影师账号8', 'e10adc3949ba59abbe56e057f20f883e', '摄影师姓名8', '性别8', '联系方式8', '摄影师简介8', 'file/shangjiaTouxiang8.jpg');
INSERT INTO `shangjia` VALUES (9, '2025-04-03 22:48:15', '摄影师账号9', 'e10adc3949ba59abbe56e057f20f883e', '摄影师姓名9', '性别9', '联系方式9', '摄影师简介9', 'file/shangjiaTouxiang9.jpg');
INSERT INTO `shangjia` VALUES (10, '2025-04-03 22:48:15', '摄影师账号10', 'e10adc3949ba59abbe56e057f20f883e', '摄影师姓名10', '性别10', '联系方式10', '摄影师简介10', 'file/shangjiaTouxiang10.jpg');
INSERT INTO `shangjia` VALUES (11, '2025-04-03 23:01:55', '11', '6512bd43d9caa6e02c990b0a82652dca', '李玉', '男', '1312121211', NULL, 'file/1743692514538.jpg');

-- ----------------------------
-- Table structure for sheyingfuwu
-- ----------------------------
DROP TABLE IF EXISTS `sheyingfuwu`;
CREATE TABLE `sheyingfuwu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务类型',
  `fuwushijian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '服务时间',
  `jiage` double NULL DEFAULT NULL COMMENT '价格',
  `fuwuxiangqing` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '服务详情',
  `tupian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '图片',
  `sheyingshizhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师账号',
  `sheyingshixingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师姓名',
  `thumbsup_number` int NULL DEFAULT 0 COMMENT '赞',
  `crazily_number` int NULL DEFAULT 0 COMMENT '踩',
  `storeup_number` int NULL DEFAULT 0 COMMENT '收藏数',
  `discuss_number` int NULL DEFAULT 0 COMMENT '评论数',
  `sheyingjiaocheng` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '摄影教程',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '摄影服务' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sheyingfuwu
-- ----------------------------
INSERT INTO `sheyingfuwu` VALUES (1, '2025-04-03 22:48:16', '服务名称1', '服务类型1', '服务时间1', 1, '服务详情1', 'file/sheyingfuwuTupian1.jpg,file/sheyingfuwuTupian2.jpg,file/sheyingfuwuTupian3.jpg', '摄影师账号1', '摄影师姓名1', 1, 1, 1, 1, '');
INSERT INTO `sheyingfuwu` VALUES (2, '2025-04-03 22:48:16', '服务名称2', '服务类型2', '服务时间2', 2, '服务详情2', 'file/sheyingfuwuTupian2.jpg,file/sheyingfuwuTupian3.jpg,file/sheyingfuwuTupian4.jpg', '摄影师账号2', '摄影师姓名2', 2, 2, 2, 2, '');
INSERT INTO `sheyingfuwu` VALUES (3, '2025-04-03 22:48:16', '服务名称3', '服务类型3', '服务时间3', 3, '服务详情3', 'file/sheyingfuwuTupian3.jpg,file/sheyingfuwuTupian4.jpg,file/sheyingfuwuTupian5.jpg', '摄影师账号3', '摄影师姓名3', 3, 3, 3, 3, '');
INSERT INTO `sheyingfuwu` VALUES (4, '2025-04-03 22:48:16', '服务名称4', '服务类型4', '服务时间4', 4, '服务详情4', 'file/sheyingfuwuTupian4.jpg,file/sheyingfuwuTupian5.jpg,file/sheyingfuwuTupian6.jpg', '摄影师账号4', '摄影师姓名4', 4, 4, 4, 4, '');
INSERT INTO `sheyingfuwu` VALUES (5, '2025-04-03 22:48:16', '服务名称5', '服务类型5', '服务时间5', 5, '服务详情5', 'file/sheyingfuwuTupian5.jpg,file/sheyingfuwuTupian6.jpg,file/sheyingfuwuTupian7.jpg', '摄影师账号5', '摄影师姓名5', 5, 5, 5, 5, '');
INSERT INTO `sheyingfuwu` VALUES (6, '2025-04-03 22:48:16', '服务名称6', '服务类型6', '服务时间6', 6, '服务详情6', 'file/sheyingfuwuTupian6.jpg,file/sheyingfuwuTupian7.jpg,file/sheyingfuwuTupian8.jpg', '摄影师账号6', '摄影师姓名6', 6, 6, 6, 6, '');
INSERT INTO `sheyingfuwu` VALUES (7, '2025-04-03 22:48:16', '服务名称7', '服务类型7', '服务时间7', 7, '服务详情7', 'file/sheyingfuwuTupian7.jpg,file/sheyingfuwuTupian8.jpg,file/sheyingfuwuTupian9.jpg', '摄影师账号7', '摄影师姓名7', 7, 7, 7, 7, '');
INSERT INTO `sheyingfuwu` VALUES (8, '2025-04-03 22:48:16', '服务名称8', '服务类型8', '服务时间8', 8, '服务详情8', 'file/sheyingfuwuTupian8.jpg,file/sheyingfuwuTupian9.jpg,file/sheyingfuwuTupian10.jpg', '摄影师账号8', '摄影师姓名8', 8, 8, 8, 8, '');
INSERT INTO `sheyingfuwu` VALUES (9, '2025-04-03 22:48:16', '服务名称9', '服务类型9', '服务时间9', 9, '服务详情9', 'file/sheyingfuwuTupian9.jpg,file/sheyingfuwuTupian10.jpg,file/sheyingfuwuTupian11.jpg', '摄影师账号9', '摄影师姓名9', 9, 9, 9, 9, '');
INSERT INTO `sheyingfuwu` VALUES (10, '2025-04-03 22:48:16', '服务名称10', '服务类型10', '服务时间10', 10, '服务详情10', 'file/sheyingfuwuTupian10.jpg,file/sheyingfuwuTupian11.jpg,file/sheyingfuwuTupian12.jpg', '摄影师账号10', '摄影师姓名10', 10, 10, 10, 10, '');
INSERT INTO `sheyingfuwu` VALUES (11, '2025-04-03 23:03:33', '份额挖方', '服务类型9', '5', 200, '范围阿帆哇哦', 'file/1743692606737.jpg', '11', '李玉', 1, 0, 0, 0, 'file/1743692611762.mp4');

-- ----------------------------
-- Table structure for sheyinghuodong
-- ----------------------------
DROP TABLE IF EXISTS `sheyinghuodong`;
CREATE TABLE `sheyinghuodong`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动名称',
  `huodongtupian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '活动图片',
  `huodongleixing` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动类型',
  `kaishishijian` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `huodongdidian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动地点',
  `huodongneirong` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '活动内容',
  `fabushijian` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `sheyingshizhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师账号',
  `sheyingshixingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师姓名',
  `piaoshu` int NULL DEFAULT NULL COMMENT '票数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '摄影活动' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sheyinghuodong
-- ----------------------------
INSERT INTO `sheyinghuodong` VALUES (1, '2025-04-03 22:48:15', '活动名称1', 'file/sheyinghuodongHuodongtupian1.jpg,file/sheyinghuodongHuodongtupian2.jpg,file/sheyinghuodongHuodongtupian3.jpg', '活动类型1', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点1', '活动内容1', '2025-04-03 22:48:15', '摄影师账号1', '摄影师姓名1', 1);
INSERT INTO `sheyinghuodong` VALUES (2, '2025-04-03 22:48:15', '活动名称2', 'file/sheyinghuodongHuodongtupian2.jpg,file/sheyinghuodongHuodongtupian3.jpg,file/sheyinghuodongHuodongtupian4.jpg', '活动类型2', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点2', '活动内容2', '2025-04-03 22:48:15', '摄影师账号2', '摄影师姓名2', 2);
INSERT INTO `sheyinghuodong` VALUES (3, '2025-04-03 22:48:15', '活动名称3', 'file/sheyinghuodongHuodongtupian3.jpg,file/sheyinghuodongHuodongtupian4.jpg,file/sheyinghuodongHuodongtupian5.jpg', '活动类型3', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点3', '活动内容3', '2025-04-03 22:48:15', '摄影师账号3', '摄影师姓名3', 3);
INSERT INTO `sheyinghuodong` VALUES (4, '2025-04-03 22:48:15', '活动名称4', 'file/sheyinghuodongHuodongtupian4.jpg,file/sheyinghuodongHuodongtupian5.jpg,file/sheyinghuodongHuodongtupian6.jpg', '活动类型4', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点4', '活动内容4', '2025-04-03 22:48:15', '摄影师账号4', '摄影师姓名4', 4);
INSERT INTO `sheyinghuodong` VALUES (5, '2025-04-03 22:48:15', '活动名称5', 'file/sheyinghuodongHuodongtupian5.jpg,file/sheyinghuodongHuodongtupian6.jpg,file/sheyinghuodongHuodongtupian7.jpg', '活动类型5', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点5', '活动内容5', '2025-04-03 22:48:15', '摄影师账号5', '摄影师姓名5', 5);
INSERT INTO `sheyinghuodong` VALUES (6, '2025-04-03 22:48:15', '活动名称6', 'file/sheyinghuodongHuodongtupian6.jpg,file/sheyinghuodongHuodongtupian7.jpg,file/sheyinghuodongHuodongtupian8.jpg', '活动类型6', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点6', '活动内容6', '2025-04-03 22:48:15', '摄影师账号6', '摄影师姓名6', 6);
INSERT INTO `sheyinghuodong` VALUES (7, '2025-04-03 22:48:15', '活动名称7', 'file/sheyinghuodongHuodongtupian7.jpg,file/sheyinghuodongHuodongtupian8.jpg,file/sheyinghuodongHuodongtupian9.jpg', '活动类型7', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点7', '活动内容7', '2025-04-03 22:48:15', '摄影师账号7', '摄影师姓名7', 7);
INSERT INTO `sheyinghuodong` VALUES (8, '2025-04-03 22:48:15', '活动名称8', 'file/sheyinghuodongHuodongtupian8.jpg,file/sheyinghuodongHuodongtupian9.jpg,file/sheyinghuodongHuodongtupian10.jpg', '活动类型8', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点8', '活动内容8', '2025-04-03 22:48:15', '摄影师账号8', '摄影师姓名8', 8);
INSERT INTO `sheyinghuodong` VALUES (9, '2025-04-03 22:48:15', '活动名称9', 'file/sheyinghuodongHuodongtupian9.jpg,file/sheyinghuodongHuodongtupian10.jpg,file/sheyinghuodongHuodongtupian11.jpg', '活动类型9', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点9', '活动内容9', '2025-04-03 22:48:15', '摄影师账号9', '摄影师姓名9', 9);
INSERT INTO `sheyinghuodong` VALUES (10, '2025-04-03 22:48:15', '活动名称10', 'file/sheyinghuodongHuodongtupian10.jpg,file/sheyinghuodongHuodongtupian11.jpg,file/sheyinghuodongHuodongtupian12.jpg', '活动类型10', '2025-04-03 22:48:15', '2025-04-03 22:48:15', '活动地点10', '活动内容10', '2025-04-03 22:48:15', '摄影师账号10', '摄影师姓名10', 10);
INSERT INTO `sheyinghuodong` VALUES (11, '2025-04-03 23:03:12', '氛围放', 'file/1743692584660.jpg', '活动类型9', '2025-04-03 23:03:07', '2025-04-18 00:00:00', '范围啊发哇', '<p>范围阿帆哇哦</p>', '2025-04-03 23:02:59', '11', '李玉', 1);

-- ----------------------------
-- Table structure for sheyingzuopin
-- ----------------------------
DROP TABLE IF EXISTS `sheyingzuopin`;
CREATE TABLE `sheyingzuopin`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuopinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作品名称',
  `zuopinfenlei` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作品分类',
  `biaoqian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签',
  `sheyingdidian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影地点',
  `sheyingshijian` datetime NULL DEFAULT NULL COMMENT '摄影时间',
  `fengmian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '封面',
  `sheyingzuopin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '摄影作品',
  `fabushijian` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `sheyingshizhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师账号',
  `sheyingshixingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师姓名',
  `zuopinyingjianjie` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '作品影简介',
  `thumbsup_number` int NULL DEFAULT 0 COMMENT '赞',
  `crazily_number` int NULL DEFAULT 0 COMMENT '踩',
  `storeup_number` int NULL DEFAULT 0 COMMENT '收藏数',
  `discuss_number` int NULL DEFAULT 0 COMMENT '评论数',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `sfsh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '摄影作品' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sheyingzuopin
-- ----------------------------
INSERT INTO `sheyingzuopin` VALUES (1, '2025-04-03 22:48:15', '作品名称1', '作品分类1', '标签1', '摄影地点1', '2025-04-03 22:48:15', 'file/sheyingzuopinFengmian1.jpg,file/sheyingzuopinFengmian2.jpg,file/sheyingzuopinFengmian3.jpg', '摄影作品1', '2025-04-03 22:48:15', '摄影师账号1', '摄影师姓名1', '作品影简介1', 1, 1, 1, 1, '2025-04-03 22:48:15', '是', '');
INSERT INTO `sheyingzuopin` VALUES (2, '2025-04-03 22:48:15', '作品名称2', '作品分类2', '标签2', '摄影地点2', '2025-04-03 22:48:15', 'file/sheyingzuopinFengmian2.jpg,file/sheyingzuopinFengmian3.jpg,file/sheyingzuopinFengmian4.jpg', '摄影作品2', '2025-04-03 22:48:15', '摄影师账号2', '摄影师姓名2', '作品影简介2', 2, 2, 2, 2, '2025-04-03 22:48:15', '是', '');
INSERT INTO `sheyingzuopin` VALUES (3, '2025-04-03 22:48:15', '作品名称3', '作品分类3', '标签3', '摄影地点3', '2025-04-03 22:48:15', 'file/sheyingzuopinFengmian3.jpg,file/sheyingzuopinFengmian4.jpg,file/sheyingzuopinFengmian5.jpg', '摄影作品3', '2025-04-03 22:48:15', '摄影师账号3', '摄影师姓名3', '作品影简介3', 3, 3, 3, 3, '2025-04-03 22:48:15', '是', '');
INSERT INTO `sheyingzuopin` VALUES (4, '2025-04-03 22:48:15', '作品名称4', '作品分类4', '标签4', '摄影地点4', '2025-04-03 22:48:15', 'file/sheyingzuopinFengmian4.jpg,file/sheyingzuopinFengmian5.jpg,file/sheyingzuopinFengmian6.jpg', '摄影作品4', '2025-04-03 22:48:15', '摄影师账号4', '摄影师姓名4', '作品影简介4', 4, 4, 4, 4, '2025-04-03 22:48:15', '是', '');
INSERT INTO `sheyingzuopin` VALUES (5, '2025-04-03 22:48:15', '作品名称5', '作品分类5', '标签5', '摄影地点5', '2025-04-03 22:48:15', 'file/sheyingzuopinFengmian5.jpg,file/sheyingzuopinFengmian6.jpg,file/sheyingzuopinFengmian7.jpg', '摄影作品5', '2025-04-03 22:48:15', '摄影师账号5', '摄影师姓名5', '作品影简介5', 5, 5, 5, 5, '2025-04-03 22:48:15', '是', '');
INSERT INTO `sheyingzuopin` VALUES (6, '2025-04-03 22:48:15', '作品名称6', '作品分类6', '标签6', '摄影地点6', '2025-04-03 22:48:15', 'file/sheyingzuopinFengmian6.jpg,file/sheyingzuopinFengmian7.jpg,file/sheyingzuopinFengmian8.jpg', '摄影作品6', '2025-04-03 22:48:15', '摄影师账号6', '摄影师姓名6', '作品影简介6', 6, 6, 6, 6, '2025-04-03 22:48:15', '是', '');
INSERT INTO `sheyingzuopin` VALUES (7, '2025-04-03 22:48:15', '作品名称7', '作品分类7', '标签7', '摄影地点7', '2025-04-03 22:48:15', 'file/sheyingzuopinFengmian7.jpg,file/sheyingzuopinFengmian8.jpg,file/sheyingzuopinFengmian9.jpg', '摄影作品7', '2025-04-03 22:48:15', '摄影师账号7', '摄影师姓名7', '作品影简介7', 7, 7, 7, 7, '2025-04-03 22:48:15', '是', '');
INSERT INTO `sheyingzuopin` VALUES (8, '2025-04-03 22:48:15', '作品名称8', '作品分类8', '标签8', '摄影地点8', '2025-04-03 22:48:15', 'file/sheyingzuopinFengmian8.jpg,file/sheyingzuopinFengmian9.jpg,file/sheyingzuopinFengmian10.jpg', '摄影作品8', '2025-04-03 22:48:15', '摄影师账号8', '摄影师姓名8', '作品影简介8', 8, 8, 8, 8, '2025-04-03 22:48:15', '是', '');
INSERT INTO `sheyingzuopin` VALUES (9, '2025-04-03 22:48:15', '作品名称9', '作品分类9', '标签9', '摄影地点9', '2025-04-03 22:48:15', 'file/sheyingzuopinFengmian9.jpg,file/sheyingzuopinFengmian10.jpg,file/sheyingzuopinFengmian11.jpg', '摄影作品9', '2025-04-03 22:48:15', '摄影师账号9', '摄影师姓名9', '作品影简介9', 9, 9, 9, 9, '2025-04-03 22:48:15', '是', '');
INSERT INTO `sheyingzuopin` VALUES (10, '2025-04-03 22:48:15', '作品名称10', '作品分类10', '标签10', '摄影地点10', '2025-04-03 22:48:15', 'file/sheyingzuopinFengmian10.jpg,file/sheyingzuopinFengmian11.jpg,file/sheyingzuopinFengmian12.jpg', '摄影作品10', '2025-04-03 22:48:15', '摄影师账号10', '摄影师姓名10', '作品影简介10', 10, 10, 10, 10, '2025-04-03 22:48:15', '是', '');
INSERT INTO `sheyingzuopin` VALUES (11, '2025-04-03 23:02:55', '11', '作品分类9', '标签9', '11', '2025-04-03 23:02:47', 'file/1743692572389.jpg', '<p>反而发热管</p>', '2025-04-03 23:02:40', '11', '李玉', 'v都是VS的', 1, 0, 1, 1, NULL, '是', '通过');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NULL DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `userid` bigint NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '我的收藏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1, '2025-04-03 23:04:55', 11, 'sheyingzuopin', '11', 'file/1743692572389.jpg', '1', NULL, NULL, 1743692531114);
INSERT INTO `storeup` VALUES (2, '2025-04-03 23:05:01', 11, 'sheyingzuopin', '11', 'file/1743692572389.jpg', '21', NULL, NULL, 1743692531114);
INSERT INTO `storeup` VALUES (3, '2025-04-03 23:05:24', 11, 'sheyingfuwu', '份额挖方', 'file/1743692606737.jpg', '21', NULL, NULL, 1743692531114);

-- ----------------------------
-- Table structure for syslog
-- ----------------------------
DROP TABLE IF EXISTS `syslog`;
CREATE TABLE `syslog`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `operation` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '请求参数',
  `time` bigint NULL DEFAULT NULL COMMENT '请求时长(毫秒)',
  `ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '操作日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of syslog
-- ----------------------------
INSERT INTO `syslog` VALUES (38, '2025-04-25 21:21:32', 'admin', '修改用户', 'com.cl.controller.YonghuController.update()', '{\"id\":1745561990878,\"yonghuzhanghao\":\"admin\",\"yonghumima\":\"21232f297a57a5a743894a0e4a801fc3\",\"yonghuxingming\":\"111\",\"touxiang\":\"file/1745561968499.png\",\"xingbie\":\"女\",\"shoujihaoma\":\"13027781270\",\"addtime\":\"Apr 25, 2025 2:19:50 PM\"}', 7, '127.0.0.1');
INSERT INTO `syslog` VALUES (39, '2025-07-11 08:51:37', 'admin123', '导入用户', 'com.cl.controller.YonghuController.importExcel()', '{\"part\":{\"fileItem\":{\"fieldName\":\"file\",\"contentType\":\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"isFormField\":false,\"fileName\":\"新建 Microsoft Excel 工作表 (2).xlsx\",\"size\":-1,\"sizeThreshold\":0,\"repository\":{\"path\":\"C:\\\\Users\\\\LBY\\\\AppData\\\\Local\\\\Temp\\\\tomcat.3975912729331526078.8080\\\\work\\\\Tomcat\\\\localhost\\\\cl258043101\"},\"headers\":{\"headerNameToValueListMap\":{\"content-disposition\":[\"form-data; name\\u003d\\\"file\\\"; filename\\u003d\\\"新建 Microsoft Excel 工作表 (2).xlsx\\\"\"],\"content-type\":[\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\"]}},\"defaultCharset\":\"ISO-8859-1\"},\"location\":{\"path\":\"C:\\\\Users\\\\LBY\\\\AppData\\\\Local\\\\Temp\\\\tomcat.3975912729331526078.8080\\\\work\\\\Tomcat\\\\localhost\\\\cl258043101\"}},\"filename\":\"新建 Microsoft Excel 工作表 (2).xlsx\"}', 327, '127.0.0.1');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1743692531114, '11', 'yonghu', '用户', 'p67hsmspq04nsg4b652c7y7r2ibud92q', '2025-04-03 23:02:24', '2025-04-04 00:02:25');
INSERT INTO `token` VALUES (2, 1743692515069, '11', 'shangjia', '商家', 'mr5t1edcuxwk4jvgbkya8wmjt2pyjq06', '2025-04-03 23:02:35', '2025-04-04 00:07:13');
INSERT INTO `token` VALUES (3, 1, 'admin', 'users', '管理员', 'uja4zmpmsme46j98xxcrmu4iuwzh2gqz', '2025-04-03 23:03:45', '2025-07-11 09:50:16');
INSERT INTO `token` VALUES (4, 1745561990878, 'admin', 'yonghu', '用户', '2827jeyd639pkipcipzva30fw9ujyb7p', '2025-04-25 14:20:10', '2025-05-19 18:20:00');

-- ----------------------------
-- Table structure for toupiaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `toupiaoxinxi`;
CREATE TABLE `toupiaoxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动名称',
  `kaishishijian` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `piaoshu` int NULL DEFAULT NULL COMMENT '投票数',
  `toupiaoshijian` datetime NULL DEFAULT NULL COMMENT '投票时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `sheyingshizhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师账号',
  `sheyingshixingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摄影师姓名',
  `crossuserid` bigint NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint NULL DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '投票信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of toupiaoxinxi
-- ----------------------------
INSERT INTO `toupiaoxinxi` VALUES (1, '2025-04-03 22:48:16', '活动名称1', '2025-04-03 22:48:16', '2025-04-03 22:48:16', 1, '2025-04-03 22:48:16', '用户账号1', '用户姓名1', '摄影师账号1', '摄影师姓名1', 1, 1);
INSERT INTO `toupiaoxinxi` VALUES (2, '2025-04-03 22:48:16', '活动名称2', '2025-04-03 22:48:16', '2025-04-03 22:48:16', 2, '2025-04-03 22:48:16', '用户账号2', '用户姓名2', '摄影师账号2', '摄影师姓名2', 2, 2);
INSERT INTO `toupiaoxinxi` VALUES (3, '2025-04-03 22:48:16', '活动名称3', '2025-04-03 22:48:16', '2025-04-03 22:48:16', 3, '2025-04-03 22:48:16', '用户账号3', '用户姓名3', '摄影师账号3', '摄影师姓名3', 3, 3);
INSERT INTO `toupiaoxinxi` VALUES (4, '2025-04-03 22:48:16', '活动名称4', '2025-04-03 22:48:16', '2025-04-03 22:48:16', 4, '2025-04-03 22:48:16', '用户账号4', '用户姓名4', '摄影师账号4', '摄影师姓名4', 4, 4);
INSERT INTO `toupiaoxinxi` VALUES (5, '2025-04-03 22:48:16', '活动名称5', '2025-04-03 22:48:16', '2025-04-03 22:48:16', 5, '2025-04-03 22:48:16', '用户账号5', '用户姓名5', '摄影师账号5', '摄影师姓名5', 5, 5);
INSERT INTO `toupiaoxinxi` VALUES (6, '2025-04-03 22:48:16', '活动名称6', '2025-04-03 22:48:16', '2025-04-03 22:48:16', 6, '2025-04-03 22:48:16', '用户账号6', '用户姓名6', '摄影师账号6', '摄影师姓名6', 6, 6);
INSERT INTO `toupiaoxinxi` VALUES (7, '2025-04-03 22:48:16', '活动名称7', '2025-04-03 22:48:16', '2025-04-03 22:48:16', 7, '2025-04-03 22:48:16', '用户账号7', '用户姓名7', '摄影师账号7', '摄影师姓名7', 7, 7);
INSERT INTO `toupiaoxinxi` VALUES (8, '2025-04-03 22:48:16', '活动名称8', '2025-04-03 22:48:16', '2025-04-03 22:48:16', 8, '2025-04-03 22:48:16', '用户账号8', '用户姓名8', '摄影师账号8', '摄影师姓名8', 8, 8);
INSERT INTO `toupiaoxinxi` VALUES (9, '2025-04-03 22:48:16', '活动名称9', '2025-04-03 22:48:16', '2025-04-03 22:48:16', 9, '2025-04-03 22:48:16', '用户账号9', '用户姓名9', '摄影师账号9', '摄影师姓名9', 9, 9);
INSERT INTO `toupiaoxinxi` VALUES (10, '2025-04-03 22:48:16', '活动名称10', '2025-04-03 22:48:16', '2025-04-03 22:48:16', 10, '2025-04-03 22:48:16', '用户账号10', '用户姓名10', '摄影师账号10', '摄影师姓名10', 10, 10);
INSERT INTO `toupiaoxinxi` VALUES (11, '2025-04-03 23:05:10', '氛围放', '2025-04-03 23:03:07', '2025-04-18 00:00:00', 1, '2025-04-03 23:05:07', '11', '李玉', '11', '李玉', 1743692531114, 11);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `role` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '2025-04-03 22:48:16', 'admin', 'admin', '管理员');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户姓名',
  `touxiang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuzhanghao`(`yonghuzhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, '2025-04-03 22:48:15', '用户账号1', 'e10adc3949ba59abbe56e057f20f883e', '用户姓名1', 'file/yonghuTouxiang1.jpg', '男', '19819881111');
INSERT INTO `yonghu` VALUES (2, '2025-04-03 22:48:15', '用户账号2', 'e10adc3949ba59abbe56e057f20f883e', '用户姓名2', 'file/yonghuTouxiang2.jpg', '男', '19819881112');
INSERT INTO `yonghu` VALUES (3, '2025-04-03 22:48:15', '用户账号3', 'e10adc3949ba59abbe56e057f20f883e', '用户姓名3', 'file/yonghuTouxiang3.jpg', '男', '19819881113');
INSERT INTO `yonghu` VALUES (4, '2025-04-03 22:48:15', '用户账号4', 'e10adc3949ba59abbe56e057f20f883e', '用户姓名4', 'file/yonghuTouxiang4.jpg', '男', '19819881114');
INSERT INTO `yonghu` VALUES (5, '2025-04-03 22:48:15', '用户账号5', 'e10adc3949ba59abbe56e057f20f883e', '用户姓名5', 'file/yonghuTouxiang5.jpg', '男', '19819881115');
INSERT INTO `yonghu` VALUES (6, '2025-04-03 22:48:15', '用户账号6', 'e10adc3949ba59abbe56e057f20f883e', '用户姓名6', 'file/yonghuTouxiang6.jpg', '男', '19819881116');
INSERT INTO `yonghu` VALUES (7, '2025-04-03 22:48:15', '用户账号7', 'e10adc3949ba59abbe56e057f20f883e', '用户姓名7', 'file/yonghuTouxiang7.jpg', '男', '19819881117');
INSERT INTO `yonghu` VALUES (8, '2025-04-03 22:48:15', '用户账号8', 'e10adc3949ba59abbe56e057f20f883e', '用户姓名8', 'file/yonghuTouxiang8.jpg', '男', '19819881118');
INSERT INTO `yonghu` VALUES (9, '2025-04-03 22:48:15', '用户账号9', 'e10adc3949ba59abbe56e057f20f883e', '用户姓名9', 'file/yonghuTouxiang9.jpg', '男', '19819881119');
INSERT INTO `yonghu` VALUES (10, '2025-04-03 22:48:15', '用户账号10', 'e10adc3949ba59abbe56e057f20f883e', '用户姓名10', 'file/yonghuTouxiang10.jpg', '男', '198198811110');
INSERT INTO `yonghu` VALUES (11, '2025-04-03 23:02:11', '11', '6512bd43d9caa6e02c990b0a82652dca', '李玉', 'file/1743692528557.jpg', '男', '13121212121');
INSERT INTO `yonghu` VALUES (12, '2025-04-25 14:19:50', 'admin', '21232f297a57a5a743894a0e4a801fc3', '111', 'file/yonghuTouxiang10.jpg', '女', '13027781270');

-- ----------------------------
-- Table structure for zuopinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `zuopinfenlei`;
CREATE TABLE `zuopinfenlei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuopinfenlei` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作品分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '作品分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of zuopinfenlei
-- ----------------------------
INSERT INTO `zuopinfenlei` VALUES (1, '2025-04-03 22:48:15', '作品分类1');
INSERT INTO `zuopinfenlei` VALUES (2, '2025-04-03 22:48:15', '作品分类2');
INSERT INTO `zuopinfenlei` VALUES (3, '2025-04-03 22:48:15', '作品分类3');
INSERT INTO `zuopinfenlei` VALUES (4, '2025-04-03 22:48:15', '作品分类4');
INSERT INTO `zuopinfenlei` VALUES (5, '2025-04-03 22:48:15', '作品分类5');
INSERT INTO `zuopinfenlei` VALUES (6, '2025-04-03 22:48:15', '作品分类6');
INSERT INTO `zuopinfenlei` VALUES (7, '2025-04-03 22:48:15', '作品分类7');
INSERT INTO `zuopinfenlei` VALUES (8, '2025-04-03 22:48:15', '作品分类8');
INSERT INTO `zuopinfenlei` VALUES (9, '2025-04-03 22:48:15', '作品分类9');

SET FOREIGN_KEY_CHECKS = 1;
