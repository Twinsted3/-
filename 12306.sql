/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : 数据库作业

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 21/06/2024 18:05:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 数据库作业_order
-- ----------------------------
DROP TABLE IF EXISTS `数据库作业_order`;
CREATE TABLE `数据库作业_order`  (
  `no` int NOT NULL AUTO_INCREMENT,
  `user_phone_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '外键',
  `passenger_phone_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `passenger_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `train_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `origin_station` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `destination_station` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `carriage_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `seat_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `order_money` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `order_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '0/1/2 待支付，已支付待乘车，已完成',
  `train_start_time` datetime NULL DEFAULT NULL,
  `order_create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE,
  INDEX `usr_phone_index`(`user_phone_num` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 数据库作业_order
-- ----------------------------
INSERT INTO `数据库作业_order` VALUES (1, '10-9858-8628', '11-288-0711', 'testing', '2210', 'N10110011', 'D2102035123', '5', '14F', '114514', '2', '2006-04-13 00:42:20', '2006-05-20 18:49:20');
INSERT INTO `数据库作业_order` VALUES (2, '718-697-2495', '74-243-1663', 'defualt', '2210', 'mPYc3rC6Vj', 'NaUXmggdNp', 'x05mBwJ5mr', '172', '32.1', '2', '2021-03-13 05:02:15', '2020-05-18 17:09:42');
INSERT INTO `数据库作业_order` VALUES (3, '7961 801599', '21-3008-7579', 'aaaaa', 'Z16', 'IH3FbiLNLJ', 'evcz9hBHlR', 'Dw3vBVFPLM', '170', '22.2', '2', '2020-10-03 02:35:07', '2009-11-16 16:12:34');
INSERT INTO `数据库作业_order` VALUES (4, '838-406-5979', '614-258-2003', '琚王琳博', 'K23', 'KmuZ1MnJpu', 'CBOI17YwAY', 'haOq6xFn4P', '795', '61', '0', '2022-07-15 05:14:55', '2020-08-31 08:14:44');
INSERT INTO `数据库作业_order` VALUES (5, '1141414141414', '5708 601454', 'alskfgjla', 'G15', 'WJlu3FUmFV', 'YCnd1msYuZ', 'Z5YOYFFg4S', '551', '648', '2', '2014-05-30 22:45:21', '2018-11-16 15:58:23');
INSERT INTO `数据库作业_order` VALUES (7, '151111111', '112315124', 'yidegelami', '4126', '北京', '上海', '6', '', '31.5', '0', '2024-05-21 20:57:30', '2024-05-21 20:57:33');
INSERT INTO `数据库作业_order` VALUES (8, '151111111', '112315124', 'aminuosi', '4126', '北京', '上海', '5', '', '32', '0', '2024-05-21 20:57:30', '2024-05-21 20:57:33');
INSERT INTO `数据库作业_order` VALUES (10, '11111', '11111', 'admin1', 'Z16', '哈尔滨', '北京', '8', NULL, '21.767388956404655', '0', NULL, '2024-06-11 16:48:39');
INSERT INTO `数据库作业_order` VALUES (11, '11111', '11111', 'admin1', '4126', '北京', '上海', '6', NULL, '57.918190823791726', '0', NULL, '2024-06-11 16:51:24');

-- ----------------------------
-- Table structure for 数据库作业_passenger
-- ----------------------------
DROP TABLE IF EXISTS `数据库作业_passenger`;
CREATE TABLE `数据库作业_passenger`  (
  `no` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'userid',
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '乘客电话',
  `realname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE,
  INDEX `usr_phone_index`(`user_id` ASC) USING BTREE,
  CONSTRAINT `usrid_foreignkey` FOREIGN KEY (`user_id`) REFERENCES `数据库作业_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2006104 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 数据库作业_passenger
-- ----------------------------
INSERT INTO `数据库作业_passenger` VALUES (1, '0001', '769-153-1134', '孔云熙', '1', '珊瑚路343号');
INSERT INTO `数据库作业_passenger` VALUES (2, '0001', '755-5670-3977', '魏致远', '1', '福田区景田东一街251号');
INSERT INTO `数据库作业_passenger` VALUES (3, '12355162', '152-1379-2875', '张璐', '3', '延庆区028县道530号');
INSERT INTO `数据库作业_passenger` VALUES (4, '16122342', '167-6547-0530', '黎子异', '1', '海淀区清河中街68号215号');
INSERT INTO `数据库作业_passenger` VALUES (5, '28509420', '13888888888', 'Wangrituo', '1', 'none');

-- ----------------------------
-- Table structure for 数据库作业_station
-- ----------------------------
DROP TABLE IF EXISTS `数据库作业_station`;
CREATE TABLE `数据库作业_station`  (
  `no` int NOT NULL AUTO_INCREMENT,
  `station_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `station_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '外键',
  `train_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `train_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `arrive_time` datetime NULL DEFAULT NULL,
  `running_time` float NULL DEFAULT NULL COMMENT '运行小时数(小数)',
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 数据库作业_station
-- ----------------------------
INSERT INTO `数据库作业_station` VALUES (1, '13', '北京', '010000Z1622', 'Z16', '2023-10-18 21:21:20', '2023-10-19 17:11:22', 19);
INSERT INTO `数据库作业_station` VALUES (2, '14', '黑河', '010000Z1622', 'Z16', '2023-10-26 07:59:13', '2023-10-27 08:35:21', 24);
INSERT INTO `数据库作业_station` VALUES (3, '16', '齐齐哈尔', '010000408204', '4082', '2023-11-23 15:33:48', '2023-11-24 12:41:06', 21);
INSERT INTO `数据库作业_station` VALUES (4, '16', '齐齐哈尔', '01000040840Y', '4084', '2023-11-23 14:26:52', '2023-11-24 12:58:16', 22);
INSERT INTO `数据库作业_station` VALUES (5, '18', '五常', '010000623202', '6232', '2023-11-23 15:40:36', '2023-11-24 14:22:16', 22);
INSERT INTO `数据库作业_station` VALUES (6, '18', '五常', '01000062340B', '6234', '2023-11-23 15:48:10', '2023-11-24 14:11:16', 22);
INSERT INTO `数据库作业_station` VALUES (8, '13', '北京', '010000K26601', 'K266', '2023-11-23 10:44:17', '2023-11-24 10:27:32', 23);
INSERT INTO `数据库作业_station` VALUES (11, '19', '吉林', '010000T1613R', 'T161', '2023-11-23 11:30:12', '2023-11-24 23:59:33', 36);

-- ----------------------------
-- Table structure for 数据库作业_ticket
-- ----------------------------
DROP TABLE IF EXISTS `数据库作业_ticket`;
CREATE TABLE `数据库作业_ticket`  (
  `no` int NOT NULL AUTO_INCREMENT,
  `train_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `carriage_num` int NOT NULL,
  `seat_type` int NOT NULL,
  `origin_station` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `destination_station` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_num` int NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 数据库作业_ticket
-- ----------------------------
INSERT INTO `数据库作业_ticket` VALUES (1, 'Z16', 3, 2, '哈尔滨', '北京', 15, 50.00);
INSERT INTO `数据库作业_ticket` VALUES (2, '2210', 4, 5, '黑河', '大连', 33, 186.30);
INSERT INTO `数据库作业_ticket` VALUES (3, '4082', 6, 5, '黑河', '齐齐哈尔', 36, 6.80);
INSERT INTO `数据库作业_ticket` VALUES (4, 'P835', 6, 2, '辽宁', '北京', 3, 279.10);
INSERT INTO `数据库作业_ticket` VALUES (5, '4084', 4, 1, '黑河', '齐齐哈尔', 37, 272.60);
INSERT INTO `数据库作业_ticket` VALUES (6, '6232', 4, 4, '香坊', '五常', 5, 106.20);
INSERT INTO `数据库作业_ticket` VALUES (7, '6232', 3, 4, '香坊', '五常', 36, 65.40);
INSERT INTO `数据库作业_ticket` VALUES (8, 'P619', 1, 5, '哈尔滨东', '五常', 7, 13.70);
INSERT INTO `数据库作业_ticket` VALUES (9, 'K105', 5, 3, '绥化', '一面坡', 40, 212.10);
INSERT INTO `数据库作业_ticket` VALUES (10, 'Z398', 5, 5, '北安', '北京', 10, 126.10);
INSERT INTO `数据库作业_ticket` VALUES (11, 'P696', 4, 5, '哈尔滨', '成都', 33, 11.40);
INSERT INTO `数据库作业_ticket` VALUES (12, 'Z16', 2, 1, '哈尔滨', '北京', 33, 80.00);
INSERT INTO `数据库作业_ticket` VALUES (13, 'Z16', 4, 3, '哈尔滨', '北京', 50, 40.00);
INSERT INTO `数据库作业_ticket` VALUES (14, 'Z16', 5, 3, '哈尔滨', '北京', 50, 40.00);
INSERT INTO `数据库作业_ticket` VALUES (15, 'Z16', 6, 3, '哈尔滨', '北京', 50, 40.00);
INSERT INTO `数据库作业_ticket` VALUES (16, 'Z16', 7, 3, '哈尔滨', '北京', 50, 40.00);
INSERT INTO `数据库作业_ticket` VALUES (17, '2210', 5, 3, '黑河', '大连', 50, 186.30);
INSERT INTO `数据库作业_ticket` VALUES (18, '2210', 6, 3, '黑河', '大连', 50, 186.30);
INSERT INTO `数据库作业_ticket` VALUES (19, '2210', 7, 3, '黑河', '大连', 48, 186.30);
INSERT INTO `数据库作业_ticket` VALUES (20, '2210', 8, 3, '黑河', '大连', 48, 186.30);
INSERT INTO `数据库作业_ticket` VALUES (21, 'G435', 7, 3, '北京', '上海', 58, 50.50);
INSERT INTO `数据库作业_ticket` VALUES (22, 'G435', 6, 3, '北京', '上海', 45, 60.00);
INSERT INTO `数据库作业_ticket` VALUES (23, 'G435', 8, 3, '北京', '上海', 60, 50.50);
INSERT INTO `数据库作业_ticket` VALUES (24, 'G435', 5, 3, '北京', '上海', 29, 60.00);
INSERT INTO `数据库作业_ticket` VALUES (25, '4126', 5, 3, '北京', '上海', 44, 35.50);
INSERT INTO `数据库作业_ticket` VALUES (26, '4126', 6, 3, '北京', '上海', 45, 35.50);
INSERT INTO `数据库作业_ticket` VALUES (27, '4126', 7, 3, '北京', '上海', 33, 40.00);

-- ----------------------------
-- Table structure for 数据库作业_train
-- ----------------------------
DROP TABLE IF EXISTS `数据库作业_train`;
CREATE TABLE `数据库作业_train`  (
  `no` int NOT NULL AUTO_INCREMENT,
  `train_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `train_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `carriage_num` int NOT NULL,
  `origin_station` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `destination_station` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `start_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `arrive_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `running_time` float NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE,
  INDEX `车号`(`train_num` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 数据库作业_train
-- ----------------------------
INSERT INTO `数据库作业_train` VALUES (1, '0100000Z8888', 'Z16', '直特', 8, '哈尔滨', '北京', '2023-11-23 21:21:20', '2023-11-24 17:11:23', 19);
INSERT INTO `数据库作业_train` VALUES (2, '010000221005', '2210', '普快', 8, '黑河', '大连', '2023-11-23 12:52:55', '2023-11-24 12:11:07', 23);
INSERT INTO `数据库作业_train` VALUES (3, '010000408204', '4082', '普快', 8, '北安', '齐齐哈尔', '2023-11-23 15:33:48', '2023-11-24 12:41:06', 21);
INSERT INTO `数据库作业_train` VALUES (4, '01000040840Y', '4084', '普快', 8, '黑河', '齐齐哈尔', '2023-11-23 14:26:52', '2023-11-24 12:58:13', 22);
INSERT INTO `数据库作业_train` VALUES (5, '010000654302', '6543', '普客', 8, '香坊', '五常', '2023-11-23 15:40:36', '2023-11-24 14:22:13', 22);
INSERT INTO `数据库作业_train` VALUES (6, '01000062340B', '6234', '普客', 8, '哈尔滨东', '五常', '2023-11-23 15:48:10', '2023-11-24 14:11:16', 22);
INSERT INTO `数据库作业_train` VALUES (7, '01000062530F', '6253', '普客', 8, '哈尔滨东', '五常', '2023-11-23 16:50:16', '2023-11-24 11:09:54', 18);
INSERT INTO `数据库作业_train` VALUES (8, '01000062540M', '6254', '普客', 8, '绥化', '一面坡', '2023-11-23 09:22:30', '2023-11-24 09:51:47', 24);
INSERT INTO `数据库作业_train` VALUES (9, '010000K26601', 'K266', '快速', 8, '北安', '北京', '2023-11-23 10:44:17', '2023-11-24 10:27:33', 23);
INSERT INTO `数据库作业_train` VALUES (10, '010000K54801', 'K548', '快速', 8, '哈尔滨', '成都', '2023-11-23 09:10:12', '2023-11-24 13:40:53', 28);
INSERT INTO `数据库作业_train` VALUES (11, '010000T1840C', 'T184', '特快', 8, '哈尔滨', '汉口', '2023-11-23 13:53:33', '2023-11-24 7:23:53', 17);
INSERT INTO `数据库作业_train` VALUES (13, '010000G43542', 'G435', '高铁', 8, '北京', '上海', '2023-11-23 17:36:07', '2023-11-23 20:30:11', 3);
INSERT INTO `数据库作业_train` VALUES (14, '010000412660', '4126', '普客', 8, '北京', '上海', '2023-11-23 09:28:28', '2023-11-23 12:23:22', 3);
INSERT INTO `数据库作业_train` VALUES (15, '010000930960', '9309', '普客', 8, '北京', '上海', '2023-11-23 17:18:27', '2023-11-23 20:22:11', 3);
INSERT INTO `数据库作业_train` VALUES (16, '010000427403', '4274', '普客', 8, '北京', '上海', '2023-11-23 16:49:31', '2023-11-23 19:39:33', 3);

-- ----------------------------
-- Table structure for 数据库作业_user
-- ----------------------------
DROP TABLE IF EXISTS `数据库作业_user`;
CREATE TABLE `数据库作业_user`  (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` int NOT NULL,
  `gender` int NULL DEFAULT NULL COMMENT '女-0  男-1',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `usr_phone_index`(`phone_num` ASC) USING BTREE,
  CONSTRAINT `gender_check` CHECK (`gender` in (0,1)),
  CONSTRAINT `user_type_check` CHECK (`type` in (0,1,2,3))
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 数据库作业_user
-- ----------------------------
INSERT INTO `数据库作业_user` VALUES ('0001', '1670864543', 'asdzxc', '158-1032-7051', '1670864543@qq.com', '琚王琳博', 2, 1, '北下关月考大学');
INSERT INTO `数据库作业_user` VALUES ('0002', 'admin', '1234', '11111', '11111', 'admin1', 2, 1, '1');
INSERT INTO `数据库作业_user` VALUES ('105195', '乘车人111111', 'aminuosis', '13518851243', '2221119999@bjtu.edu.cn', '艾米诺受', 0, NULL, NULL);
INSERT INTO `数据库作业_user` VALUES ('12355162', 'zcbcc', 'zbchalashao', '13311113333', 'cwf1947@mail.com', 'Chic Wing Fat', 0, 1, '539 State Street');
INSERT INTO `数据库作业_user` VALUES ('131367', '13251325', 'asd', '161235152', '12222@qq.com', '', 0, NULL, NULL);
INSERT INTO `数据库作业_user` VALUES ('13263142', 'miyamo@1014', 'vbT6DAl0vp', '2', 'miyamotorin10@outlook.com', 'Miyamoto Rin', 0, 0, '909 Xiaoping E Rd, Baiyun ');
INSERT INTO `数据库作业_user` VALUES ('16122342', 'yidegelami', 'HK5bxEKcDz', '3', 'harold326@yahoo.com', 'Harold Weaver', 0, 0, '715 Binchuan Rd, Minhang District');
INSERT INTO `数据库作业_user` VALUES ('23045294', 'adadad', '114514', '133333333333', 'juwanglinbo@gmail.conm', 'wocaonima', 0, NULL, NULL);
INSERT INTO `数据库作业_user` VALUES ('28509420', 'Wangrit', 'asdzxc', '13888888888', 'c59066368dupo0899@163.com', 'Wangrituo', 0, NULL, NULL);
INSERT INTO `数据库作业_user` VALUES ('61321234', 'ddddaaaa', 'asd', '13888888888', '1555@qq.com', 'wangrito', 0, 1, '北下关月考大学');
INSERT INTO `数据库作业_user` VALUES ('62123453', 'yibaminuosi', 'ddddddsa', '13910779974', 'twinsted@qq.com', '往日托', 0, NULL, NULL);
INSERT INTO `数据库作业_user` VALUES ('62324513', 'aminosi', 'uo3DHcCYK2', '5', 'alicewa@gmail.com', 'Alice Washington', 0, 0, '873 W Ring Rd, Buji Town, Longgang');

-- ----------------------------
-- Triggers structure for table 数据库作业_order
-- ----------------------------
DROP TRIGGER IF EXISTS `return_ticket`;
delimiter ;;
CREATE TRIGGER `return_ticket` AFTER DELETE ON `数据库作业_order` FOR EACH ROW BEGIN
	update `数据库作业_ticket`
	set last_num = last_num + 1 
	where train_num = old.train_no 
	and carriage_num = old.carriage_no 
	and origin_station = old.origin_station 
	and destination_station = old.destination_station;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table 数据库作业_station
-- ----------------------------
DROP TRIGGER IF EXISTS `cal_running_time`;
delimiter ;;
CREATE TRIGGER `cal_running_time` BEFORE INSERT ON `数据库作业_station` FOR EACH ROW BEGIN
    IF NEW.start_time IS NOT NULL AND NEW.arrive_time IS NOT NULL THEN
        SET NEW.running_time = TIMESTAMPDIFF(HOUR,NEW.start_time, NEW.arrive_time);
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table 数据库作业_train
-- ----------------------------
DROP TRIGGER IF EXISTS `train_running_time`;
delimiter ;;
CREATE TRIGGER `train_running_time` BEFORE INSERT ON `数据库作业_train` FOR EACH ROW BEGIN
    IF NEW.start_time IS NOT NULL AND NEW.arrive_time IS NOT NULL THEN
        SET NEW.running_time = TIMESTAMPDIFF(HOUR,NEW.start_time, NEW.arrive_time);
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table 数据库作业_train
-- ----------------------------
DROP TRIGGER IF EXISTS `get_train_num`;
delimiter ;;
CREATE TRIGGER `get_train_num` BEFORE INSERT ON `数据库作业_train` FOR EACH ROW BEGIN
	DECLARE n VARCHAR(5);
    IF NEW.train_id IS NOT NULL THEN
			SET n = SUBSTR(NEW.train_id,6,5);
			SET n = TRIM(LEADING '0' FROM n);
      SET NEW.train_num = n;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table 数据库作业_train
-- ----------------------------
DROP TRIGGER IF EXISTS `update_train_num`;
delimiter ;;
CREATE TRIGGER `update_train_num` BEFORE UPDATE ON `数据库作业_train` FOR EACH ROW BEGIN
	DECLARE n VARCHAR(5);
    IF NEW.train_id IS NOT NULL THEN
			SET n = SUBSTR(NEW.train_id,6,5);
			SET n = TRIM(LEADING '0' FROM n);
      SET NEW.train_num = n;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table 数据库作业_user
-- ----------------------------
DROP TRIGGER IF EXISTS `add_id`;
delimiter ;;
CREATE TRIGGER `add_id` BEFORE INSERT ON `数据库作业_user` FOR EACH ROW BEGIN
	DECLARE x int default 111111;
	if new.id = NULL THEN
		set x = round(rand()*899999+100000);
		set new.id = CAST(x as char);
	END if;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table 数据库作业_user
-- ----------------------------
DROP TRIGGER IF EXISTS `add_passenger`;
delimiter ;;
CREATE TRIGGER `add_passenger` AFTER INSERT ON `数据库作业_user` FOR EACH ROW BEGIN
INSERT into `数据库作业_passenger` (user_id, phone, realname, type, address)
VALUES(new.id, 
				new.phone_num, 
				if(new.realname is not null, new.realname, "none"), 
				1, 
				if(new.address is not null, new.address, "none")
);
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
