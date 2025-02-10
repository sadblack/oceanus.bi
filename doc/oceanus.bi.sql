/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : venus_bi

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 24/05/2021 13:09:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bi_chart
-- ----------------------------
DROP TABLE IF EXISTS `bi_chart`;
CREATE TABLE `bi_chart`  (
  `chart_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `chart_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `chart_desc` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_private` tinyint NOT NULL DEFAULT 1,
  `status` int NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_id` int NOT NULL,
  `source_id` int NOT NULL,
  PRIMARY KEY (`chart_id`) USING BTREE,
  INDEX `bi_chart_source_id_id_ace030aa_fk_so`(`source_id`) USING BTREE,
  CONSTRAINT `bi_chart_source_id_id_ace030aa_fk_so` FOREIGN KEY (`source_id`) REFERENCES `bi_datasource` (`source_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bi_chart
-- ----------------------------
INSERT INTO `bi_chart` VALUES ('03cce4e1-75b1-4fa6-8d47-943b3ae09c7b', '用户来源支付订单分析', '用户来源支付订单分析', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Type\":\"int\",\"availableFunc\":[{\"func\":\"sum\",\"name\":\"合计\"},{\"func\":\"avg\",\"name\":\"平均\"},{\"func\":\"max\",\"name\":\"最大值\"},{\"func\":\"min\",\"name\":\"最小值\"},{\"func\":\"count\",\"name\":\"计数\"},{\"func\":\"none\",\"name\":\"-\"}],\"Column\":\"payed_order\",\"calculFunc\":\"sum\",\"cname\":\"支付订单数\",\"name\":\"payed_order\",\"lable\":\"支付订单数(合计)\"},{\"Type\":\"int\",\"availableFunc\":[{\"func\":\"sum\",\"name\":\"合计\"},{\"func\":\"avg\",\"name\":\"平均\"},{\"func\":\"max\",\"name\":\"最大值\"},{\"func\":\"min\",\"name\":\"最小值\"},{\"func\":\"count\",\"name\":\"计数\"},{\"func\":\"none\",\"name\":\"-\"}],\"Column\":\"new_order\",\"calculFunc\":\"sum\",\"cname\":\"新订单数\",\"name\":\"new_order\",\"lable\":\"新订单数(合计)\"}],\"selectedDimension\":[{\"Type\":\"varchar\",\"asxAxis\":true,\"isDimension\":true,\"Column\":\"user_src\",\"cname\":\"用户来源\",\"name\":\"user_src\",\"lable\":\"用户来源\",\"id\":6464}],\"chartType\":\"bar\",\"filters\":[]}', 1, 1, '2020-08-28 10:13:37', '2020-08-29 15:03:33', 1, 12),
('0c02aaa8-7b63-437d-a293-7c665e7ebee8', '订单商品数', '', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Column\":\"good_order\",\"cname\":\"订单商品数\",\"calculFunc\":\"sum\",\"Type\":\"int\",\"availableFunc\":[{\"name\":\"合计\",\"func\":\"sum\"},{\"name\":\"平均\",\"func\":\"avg\"},{\"name\":\"最大值\",\"func\":\"max\"},{\"name\":\"最小值\",\"func\":\"min\"},{\"name\":\"计数\",\"func\":\"count\"},{\"name\":\"-\",\"func\":\"none\"},{\"name\":\"去重计数\",\"func\":\"distinct\"}],\"name\":\"good_order\",\"lable\":\"订单商品数(合计)\"}],\"selectedDimension\":[],\"chartType\":\"number\",\"filters\":[]}', 1, 1, '2020-09-03 14:53:31', '2020-09-03 14:52:31', 1, 12),
('13942e1e-c450-4a29-9f23-f642c78c0355', '支付订单数', '', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Column\":\"payed_order\",\"cname\":\"支付订单数\",\"calculFunc\":\"sum\",\"Type\":\"int\",\"availableFunc\":[{\"name\":\"合计\",\"func\":\"sum\"},{\"name\":\"平均\",\"func\":\"avg\"},{\"name\":\"最大值\",\"func\":\"max\"},{\"name\":\"最小值\",\"func\":\"min\"},{\"name\":\"计数\",\"func\":\"count\"},{\"name\":\"-\",\"func\":\"none\"},{\"name\":\"去重计数\",\"func\":\"distinct\"}],\"name\":\"payed_order\",\"lable\":\"支付订单数(合计)\"}],\"selectedDimension\":[],\"chartType\":\"number\",\"filters\":[]}', 1, 1, '2020-09-03 14:52:20', '2020-09-03 14:51:20', 1, 12),
('45fc5e96-912b-496b-8c32-d69873c9d5e3', '取消订单数', '', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Column\":\"cancel_order\",\"cname\":\"取消订单数\",\"calculFunc\":\"sum\",\"Type\":\"int\",\"availableFunc\":[{\"name\":\"合计\",\"func\":\"sum\"},{\"name\":\"平均\",\"func\":\"avg\"},{\"name\":\"最大值\",\"func\":\"max\"},{\"name\":\"最小值\",\"func\":\"min\"},{\"name\":\"计数\",\"func\":\"count\"},{\"name\":\"-\",\"func\":\"none\"},{\"name\":\"去重计数\",\"func\":\"distinct\"}],\"name\":\"cancel_order\",\"lable\":\"取消订单数(合计)\"}],\"selectedDimension\":[],\"chartType\":\"number\",\"filters\":[]}', 1, 1, '2020-09-03 14:53:07', '2020-09-03 14:52:07', 1, 12),
('5496fa64-5d86-4530-9e58-c7f6e3a96178', '区域新订单数分析', '', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Column\":\"new_order\",\"cname\":\"新订单数\",\"calculFunc\":\"sum\",\"Type\":\"int\",\"availableFunc\":[{\"name\":\"合计\",\"func\":\"sum\"},{\"name\":\"平均\",\"func\":\"avg\"},{\"name\":\"最大值\",\"func\":\"max\"},{\"name\":\"最小值\",\"func\":\"min\"},{\"name\":\"计数\",\"func\":\"count\"},{\"name\":\"-\",\"func\":\"none\"}],\"name\":\"new_order\",\"lable\":\"new_order(合计)\"}],\"selectedDimension\":[{\"Type\":\"varchar\",\"asxAxis\":true,\"isDimension\":true,\"Column\":\"order_location\",\"cname\":\"区域\",\"name\":\"order_location\",\"lable\":\"order_location\",\"id\":6466}],\"chartType\":\"pie\",\"filters\":[]}', 1, 1, '2020-08-28 10:15:06', '2020-08-29 11:49:32', 1, 12),
('57f0ef26-1279-4be8-bf34-793c5d426eaf', '测试过滤条件', '', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Type\":\"int\",\"availableFunc\":[{\"func\":\"sum\",\"name\":\"合计\"},{\"func\":\"avg\",\"name\":\"平均\"},{\"func\":\"max\",\"name\":\"最大值\"},{\"func\":\"min\",\"name\":\"最小值\"},{\"func\":\"count\",\"name\":\"计数\"},{\"func\":\"none\",\"name\":\"-\"},{\"func\":\"distinct\",\"name\":\"去重计数\"}],\"Column\":\"payed_order\",\"calculFunc\":\"sum\",\"cname\":\"支付订单数\",\"name\":\"payed_order\",\"lable\":\"支付订单数(合计)\"}],\"selectedDimension\":[{\"Type\":\"varchar\",\"asxAxis\":true,\"isDimension\":true,\"Column\":\"date\",\"cname\":\"时间\",\"name\":\"date\",\"lable\":\"时间\",\"id\":0}],\"chartType\":\"bar\",\"filters\":[{\"filteCol\":\"new_order\",\"colType\":\"int\",\"operatorParamNum\":1,\"filterOperator\":\"&lt;=\",\"value\":{\"value1\":\"200\",\"arrValue\":[]}},{\"filteCol\":\"pending_order\",\"colType\":\"int\",\"filterOperator\":\"&gt;\",\"value\":{\"value1\":\"1000\",\"arrValue\":[]},\"operatorParamNum\":1}]}', 1, 1, '2020-09-04 09:46:45', '2020-09-04 10:26:56', 1, 12),
('68eb3d09-29af-47fe-a0b0-eb59a66435f9', '订单区域复购分析', '', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Type\":\"int\",\"availableFunc\":[{\"func\":\"sum\",\"name\":\"合计\"},{\"func\":\"avg\",\"name\":\"平均\"},{\"func\":\"max\",\"name\":\"最大值\"},{\"func\":\"min\",\"name\":\"最小值\"},{\"func\":\"count\",\"name\":\"计数\"},{\"func\":\"none\",\"name\":\"-\"}],\"Column\":\"report_order\",\"calculFunc\":\"sum\",\"cname\":\"复购数\",\"name\":\"report_order\",\"lable\":\"复购数(合计)\"}],\"selectedDimension\":[{\"Type\":\"varchar\",\"asxAxis\":true,\"isDimension\":true,\"Column\":\"order_location\",\"cname\":\"区域\",\"name\":\"order_location\",\"lable\":\"区域\",\"id\":3}],\"chartType\":\"horizontalBar\",\"filters\":[]}', 1, 1, '2020-08-29 14:39:04', '2020-09-04 18:52:56', 1, 12),
('75c52d21-a469-4de8-acb9-904cf60f63ca', '测试分析', '', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[\"user_src desc\"],\"limit\":200,\"selectedCalcul\":[{\"Type\":\"varchar\",\"availableFunc\":[{\"func\":\"count\",\"name\":\"计数\"},{\"func\":\"none\",\"name\":\"-\"},{\"func\":\"distinct\",\"name\":\"去重计数\"}],\"Column\":\"order_src\",\"calculFunc\":\"distinct\",\"cname\":\"订单来源\",\"name\":\"order_src\",\"lable\":\"订单来源(去重计数)\"}],\"selectedDimension\":[{\"Type\":\"varchar\",\"isDimension\":true,\"Column\":\"user_src\",\"cname\":\"用户来源\",\"name\":\"user_src\",\"id\":1,\"lable\":\"用户来源\",\"asxAxis\":true}],\"chartType\":\"pie\",\"filters\":[]}', 1, 1, '2020-09-02 17:10:15', '2020-09-02 17:10:44', 1, 12),
('75e370ba-ce09-401c-9a06-b00d421abfca', '用户来源', '', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Column\":\"new_order\",\"cname\":\"新订单数\",\"calculFunc\":\"sum\",\"Type\":\"int\",\"availableFunc\":[{\"name\":\"合计\",\"func\":\"sum\"},{\"name\":\"平均\",\"func\":\"avg\"},{\"name\":\"最大值\",\"func\":\"max\"},{\"name\":\"最小值\",\"func\":\"min\"},{\"name\":\"计数\",\"func\":\"count\"},{\"name\":\"-\",\"func\":\"none\"},{\"name\":\"去重计数\",\"func\":\"distinct\"}],\"lable\":\"新订单数(合计)\",\"name\":\"new_order\"},{\"Column\":\"pending_order\",\"cname\":\"待支付订单数\",\"calculFunc\":\"sum\",\"Type\":\"int\",\"availableFunc\":[{\"name\":\"合计\",\"func\":\"sum\"},{\"name\":\"平均\",\"func\":\"avg\"},{\"name\":\"最大值\",\"func\":\"max\"},{\"name\":\"最小值\",\"func\":\"min\"},{\"name\":\"计数\",\"func\":\"count\"},{\"name\":\"-\",\"func\":\"none\"},{\"name\":\"去重计数\",\"func\":\"distinct\"}],\"lable\":\"待支付订单数(合计)\",\"name\":\"pending_order\"}],\"selectedDimension\":[{\"Column\":\"user_src\",\"Type\":\"varchar\",\"cname\":\"用户来源\",\"id\":1,\"name\":\"user_src\",\"isDimension\":true,\"lable\":\"用户来源\",\"asxAxis\":true}],\"chartType\":\"bar\",\"filters\":[]}', 1, 1, '2020-09-08 09:09:14', '2020-09-08 09:09:15', 1, 12),
('a4faad40-585c-4a40-aad8-dfbb9b171246', '测试112', '', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Type\":\"int\",\"availableFunc\":[{\"func\":\"sum\",\"name\":\"合计\"},{\"func\":\"avg\",\"name\":\"平均\"},{\"func\":\"max\",\"name\":\"最大值\"},{\"func\":\"min\",\"name\":\"最小值\"},{\"func\":\"count\",\"name\":\"计数\"},{\"func\":\"none\",\"name\":\"-\"}],\"Column\":\"new_order\",\"calculFunc\":\"sum\",\"cname\":\"新订单数\",\"name\":\"new_order(合计)\"}],\"selectedDimension\":[{\"Type\":\"varchar\",\"isDimension\":true,\"Column\":\"date\",\"cname\":\"时间\",\"name\":\"date\",\"id\":0}],\"chartType\":\"table\",\"filters\":[]}', 1, 1, '2020-08-29 11:47:09', '2020-08-29 11:47:45', 1, 12),
('d57b2854-a86a-4537-81b6-175114c7258c', '取消及拒付订单统计', '这是一个测试面板', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[\"reject_order desc\"],\"limit\":200,\"selectedCalcul\":[{\"Type\":\"int\",\"availableFunc\":[{\"func\":\"sum\",\"name\":\"合计\"},{\"func\":\"avg\",\"name\":\"平均\"},{\"func\":\"max\",\"name\":\"最大值\"},{\"func\":\"min\",\"name\":\"最小值\"},{\"func\":\"count\",\"name\":\"计数\"},{\"func\":\"none\",\"name\":\"-\"}],\"Column\":\"reject_order\",\"calculFunc\":\"sum\",\"cname\":\"拒绝订单数\",\"name\":\"reject_order\",\"lable\":\"拒绝订单数(合计)\"},{\"Type\":\"int\",\"availableFunc\":[{\"func\":\"sum\",\"name\":\"合计\"},{\"func\":\"avg\",\"name\":\"平均\"},{\"func\":\"max\",\"name\":\"最大值\"},{\"func\":\"min\",\"name\":\"最小值\"},{\"func\":\"count\",\"name\":\"计数\"},{\"func\":\"none\",\"name\":\"-\"}],\"Column\":\"cancel_order\",\"calculFunc\":\"sum\",\"cname\":\"取消订单数\",\"name\":\"cancel_order\",\"lable\":\"取消订单数(合计)\"}],\"selectedDimension\":[{\"Type\":\"varchar\",\"asxAxis\":true,\"isDimension\":true,\"Column\":\"date\",\"cname\":\"时间\",\"name\":\"date\",\"lable\":\"时间\",\"id\":6463}],\"chartType\":\"bar\",\"filters\":[{\"filteCol\":\"date\",\"colType\":\"varchar\",\"operatorParamNum\":2,\"filterOperator\":\"BETWEEN\",\"value\":{\"value2\":\"2015-10-20\",\"value1\":\"2015-10-12\",\"arrValue\":[]}}]}', 1, 1, '2020-08-28 10:08:33', '2020-09-04 19:00:50', 1, 12),
('e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1', '待支付订单数', '', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Column\":\"pending_order\",\"cname\":\"待支付订单数\",\"calculFunc\":\"sum\",\"Type\":\"int\",\"availableFunc\":[{\"name\":\"合计\",\"func\":\"sum\"},{\"name\":\"平均\",\"func\":\"avg\"},{\"name\":\"最大值\",\"func\":\"max\"},{\"name\":\"最小值\",\"func\":\"min\"},{\"name\":\"计数\",\"func\":\"count\"},{\"name\":\"-\",\"func\":\"none\"},{\"name\":\"去重计数\",\"func\":\"distinct\"}],\"name\":\"pending_order\",\"lable\":\"待支付订单数(合计)\"}],\"selectedDimension\":[],\"chartType\":\"number\",\"filters\":[]}', 1, 1, '2020-09-03 14:52:45', '2020-09-03 14:51:45', 1, 12),
('f2b74c75-dd85-4007-ab5f-6ae1e90845b5', '订单来源分析', '订单来源分析', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Type\":\"int\",\"availableFunc\":[{\"func\":\"sum\",\"name\":\"合计\"},{\"func\":\"avg\",\"name\":\"平均\"},{\"func\":\"max\",\"name\":\"最大值\"},{\"func\":\"min\",\"name\":\"最小值\"},{\"func\":\"count\",\"name\":\"计数\"},{\"func\":\"none\",\"name\":\"-\"}],\"Column\":\"new_order\",\"calculFunc\":\"sum\",\"cname\":\"新订单数\",\"name\":\"new_order\",\"lable\":\"新订单数(合计)\"}],\"selectedDimension\":[{\"Type\":\"varchar\",\"asxAxis\":true,\"isDimension\":true,\"Column\":\"order_src\",\"cname\":\"订单来源\",\"name\":\"order_src\",\"lable\":\"订单来源\",\"id\":6465}],\"chartType\":\"pie\",\"filters\":[]}', 1, 1, '2020-08-28 10:23:37', '2020-09-08 08:15:15', 1, 12),
('f6086692-ff12-46e5-abcb-58519a4dbf88', '新订单合计数', '', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Type\":\"int\",\"availableFunc\":[{\"func\":\"sum\",\"name\":\"合计\"},{\"func\":\"avg\",\"name\":\"平均\"},{\"func\":\"max\",\"name\":\"最大值\"},{\"func\":\"min\",\"name\":\"最小值\"},{\"func\":\"count\",\"name\":\"计数\"},{\"func\":\"none\",\"name\":\"-\"},{\"func\":\"distinct\",\"name\":\"去重计数\"}],\"Column\":\"new_order\",\"calculFunc\":\"sum\",\"cname\":\"新订单数\",\"name\":\"new_order\",\"lable\":\"新订单数(合计)\"}],\"selectedDimension\":[],\"chartType\":\"number\",\"filters\":[]}', 1, 1, '2020-09-03 14:19:49', '2020-09-03 14:46:00', 1, 12),
('f6161606-4e63-4de7-85b8-b89789fcfce1', '字段去重统计演示', '字段去重统计演示', '{\"dataSrc\":\"order_analysis\",\"source_id\":12,\"orderByStrs\":[],\"limit\":200,\"selectedCalcul\":[{\"Column\":\"order_src\",\"cname\":\"订单来源\",\"calculFunc\":\"distinct\",\"Type\":\"varchar\",\"availableFunc\":[{\"name\":\"计数\",\"func\":\"count\"},{\"name\":\"-\",\"func\":\"none\"},{\"name\":\"去重计数\",\"func\":\"distinct\"}],\"name\":\"order_src\",\"lable\":\"订单来源(去重计数)\"}],\"selectedDimension\":[{\"Column\":\"order_location\",\"Type\":\"varchar\",\"cname\":\"区域\",\"id\":3,\"lable\":\"区域\",\"name\":\"order_location\",\"asxAxis\":true,\"isDimension\":true}],\"chartType\":\"pie\",\"filters\":[]}', 1, 1, '2020-09-01 14:04:25', '2020-09-01 14:03:30', 1, 12);

-- ----------------------------
-- Table structure for bi_chartboardmap
-- ----------------------------
DROP TABLE IF EXISTS `bi_chartboardmap`;
CREATE TABLE `bi_chartboardmap`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `chart_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dashboard_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bi_chartboardmap_chart_id`(`chart_id`) USING BTREE,
  INDEX `bi_chartboardmap_dashboard_id`(`dashboard_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bi_chartboardmap
-- ----------------------------
INSERT INTO `bi_chartboardmap` VALUES (9, '2020-08-28 15:14:15', '2020-08-28 15:14:15', '03cce4e1-75b1-4fa6-8d47-943b3ae09c7b', 'ac1c083e-d554-4c28-83e3-6f890f37e018'),
(10, '2020-08-28 15:14:22', '2020-08-28 15:14:22', '5496fa64-5d86-4530-9e58-c7f6e3a96178', 'ac1c083e-d554-4c28-83e3-6f890f37e018'),
(11, '2020-08-28 15:14:50', '2020-08-28 15:14:50', 'd57b2854-a86a-4537-81b6-175114c7258c', 'ac1c083e-d554-4c28-83e3-6f890f37e018'),
(12, '2020-08-28 19:14:37', '2020-08-28 19:14:37', 'f2b74c75-dd85-4007-ab5f-6ae1e90845b5', 'ac1c083e-d554-4c28-83e3-6f890f37e018'),
(13, '2020-08-29 12:27:23', '2020-08-29 12:27:23', '03cce4e1-75b1-4fa6-8d47-943b3ae09c7b', 'db707ab4-0102-4123-a366-4420a6aafe43'),
(14, '2020-08-29 12:27:29', '2020-08-29 12:27:29', '5496fa64-5d86-4530-9e58-c7f6e3a96178', 'db707ab4-0102-4123-a366-4420a6aafe43'),
(15, '2020-08-29 12:27:36', '2020-08-29 12:27:36', 'f2b74c75-dd85-4007-ab5f-6ae1e90845b5', 'db707ab4-0102-4123-a366-4420a6aafe43'),
(16, '2020-08-29 12:27:43', '2020-08-29 12:27:43', 'd57b2854-a86a-4537-81b6-175114c7258c', 'db707ab4-0102-4123-a366-4420a6aafe43'),
(18, '2020-09-01 14:04:46', '2020-09-01 14:04:46', 'f6161606-4e63-4de7-85b8-b89789fcfce1', 'db707ab4-0102-4123-a366-4420a6aafe43'),
(19, '2020-09-02 16:42:22', '2020-09-02 16:42:22', '03cce4e1-75b1-4fa6-8d47-943b3ae09c7b', 'b44002b0-ed7d-49e0-9ec7-ade3a24a3e93'),
(20, '2020-09-02 16:42:30', '2020-09-02 16:42:30', '68eb3d09-29af-47fe-a0b0-eb59a66435f9', 'b44002b0-ed7d-49e0-9ec7-ade3a24a3e93'),
(21, '2020-09-02 16:42:34', '2020-09-02 16:42:34', '5496fa64-5d86-4530-9e58-c7f6e3a96178', 'b44002b0-ed7d-49e0-9ec7-ade3a24a3e93'),
(22, '2020-09-02 17:08:35', '2020-09-02 17:08:35', '03cce4e1-75b1-4fa6-8d47-943b3ae09c7b', 'cec92ab4-d5de-42b7-80d0-f9ab2ce5aa9b'),
(23, '2020-09-02 17:08:39', '2020-09-02 17:08:39', '5496fa64-5d86-4530-9e58-c7f6e3a96178', 'cec92ab4-d5de-42b7-80d0-f9ab2ce5aa9b'),
(24, '2020-09-02 17:08:44', '2020-09-02 17:08:44', '68eb3d09-29af-47fe-a0b0-eb59a66435f9', 'cec92ab4-d5de-42b7-80d0-f9ab2ce5aa9b'),
(25, '2020-09-02 17:08:47', '2020-09-02 17:08:47', 'f6161606-4e63-4de7-85b8-b89789fcfce1', 'cec92ab4-d5de-42b7-80d0-f9ab2ce5aa9b'),
(26, '2020-09-02 17:08:50', '2020-09-02 17:08:50', 'f2b74c75-dd85-4007-ab5f-6ae1e90845b5', 'cec92ab4-d5de-42b7-80d0-f9ab2ce5aa9b'),
(27, '2020-09-02 17:09:07', '2020-09-02 17:09:07', 'd57b2854-a86a-4537-81b6-175114c7258c', 'cec92ab4-d5de-42b7-80d0-f9ab2ce5aa9b'),
(28, '2020-09-02 17:10:35', '2020-09-02 17:10:35', '75c52d21-a469-4de8-acb9-904cf60f63ca', '4a5935a2-2ee7-418d-8f4d-3264ed0a679b'),
(29, '2020-09-03 12:12:03', '2020-09-03 12:12:03', '03cce4e1-75b1-4fa6-8d47-943b3ae09c7b', '29561412-13c3-4984-ab09-299341d11ceb'),
(30, '2020-09-03 12:12:04', '2020-09-03 12:12:04', '03cce4e1-75b1-4fa6-8d47-943b3ae09c7b', '29561412-13c3-4984-ab09-299341d11ceb'),
(31, '2020-09-03 12:12:09', '2020-09-03 12:12:09', '68eb3d09-29af-47fe-a0b0-eb59a66435f9', '29561412-13c3-4984-ab09-299341d11ceb'),
(32, '2020-09-03 12:12:14', '2020-09-03 12:12:14', 'a4faad40-585c-4a40-aad8-dfbb9b171246', '29561412-13c3-4984-ab09-299341d11ceb'),
(33, '2020-09-03 12:37:30', '2020-09-03 12:37:30', '03cce4e1-75b1-4fa6-8d47-943b3ae09c7b', '4de8022a-0d4a-4f0e-ba16-d546c305fd7e'),
(34, '2020-09-03 12:37:35', '2020-09-03 12:37:35', 'a4faad40-585c-4a40-aad8-dfbb9b171246', '4de8022a-0d4a-4f0e-ba16-d546c305fd7e'),
(35, '2020-09-03 14:20:10', '2020-09-03 14:20:10', 'f6086692-ff12-46e5-abcb-58519a4dbf88', '4de8022a-0d4a-4f0e-ba16-d546c305fd7e'),
(36, '2020-09-03 14:53:48', '2020-09-03 14:53:48', '0c02aaa8-7b63-437d-a293-7c665e7ebee8', '4de8022a-0d4a-4f0e-ba16-d546c305fd7e'),
(37, '2020-09-03 14:53:54', '2020-09-03 14:53:54', '13942e1e-c450-4a29-9f23-f642c78c0355', '4de8022a-0d4a-4f0e-ba16-d546c305fd7e'),
(38, '2020-09-03 14:54:04', '2020-09-03 14:54:04', '45fc5e96-912b-496b-8c32-d69873c9d5e3', '4de8022a-0d4a-4f0e-ba16-d546c305fd7e'),
(39, '2020-09-03 14:54:14', '2020-09-03 14:54:14', 'e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1', '4de8022a-0d4a-4f0e-ba16-d546c305fd7e'),
(40, '2020-09-04 10:27:50', '2020-09-04 10:27:50', '57f0ef26-1279-4be8-bf34-793c5d426eaf', 'b44002b0-ed7d-49e0-9ec7-ade3a24a3e93'),
(42, '2020-09-04 13:59:25', '2020-09-04 13:59:25', '45fc5e96-912b-496b-8c32-d69873c9d5e3', 'ac1c083e-d554-4c28-83e3-6f890f37e018'),
(43, '2020-09-04 13:59:42', '2020-09-04 13:59:42', '13942e1e-c450-4a29-9f23-f642c78c0355', 'ac1c083e-d554-4c28-83e3-6f890f37e018'),
(44, '2020-09-04 14:00:03', '2020-09-04 14:00:03', '0c02aaa8-7b63-437d-a293-7c665e7ebee8', 'ac1c083e-d554-4c28-83e3-6f890f37e018'),
(45, '2020-09-04 14:02:20', '2020-09-04 14:02:20', 'e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1', 'ac1c083e-d554-4c28-83e3-6f890f37e018'),
(46, '2020-09-04 14:02:36', '2020-09-04 14:02:36', 'f6086692-ff12-46e5-abcb-58519a4dbf88', 'ac1c083e-d554-4c28-83e3-6f890f37e018'),
(47, '2020-09-04 18:52:13', '2020-09-04 18:52:13', '68eb3d09-29af-47fe-a0b0-eb59a66435f9', 'ac1c083e-d554-4c28-83e3-6f890f37e018'),
(48, '2020-09-05 11:20:02', '2020-09-05 11:20:02', '03cce4e1-75b1-4fa6-8d47-943b3ae09c7b', '70caa17e-2e5a-4096-8c61-e4336b6b98a6'),
(49, '2020-09-05 11:20:06', '2020-09-05 11:20:06', '13942e1e-c450-4a29-9f23-f642c78c0355', '70caa17e-2e5a-4096-8c61-e4336b6b98a6'),
(50, '2020-09-05 11:20:09', '2020-09-05 11:20:09', '45fc5e96-912b-496b-8c32-d69873c9d5e3', '70caa17e-2e5a-4096-8c61-e4336b6b98a6'),
(51, '2020-09-05 11:20:15', '2020-09-05 11:20:15', '0c02aaa8-7b63-437d-a293-7c665e7ebee8', '70caa17e-2e5a-4096-8c61-e4336b6b98a6'),
(52, '2020-09-05 11:20:59', '2020-09-05 11:20:59', '5496fa64-5d86-4530-9e58-c7f6e3a96178', '70caa17e-2e5a-4096-8c61-e4336b6b98a6'),
(53, '2020-09-05 11:21:26', '2020-09-05 11:21:26', 'e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1', '70caa17e-2e5a-4096-8c61-e4336b6b98a6'),
(54, '2020-09-05 11:21:30', '2020-09-05 11:21:30', 'd57b2854-a86a-4537-81b6-175114c7258c', '70caa17e-2e5a-4096-8c61-e4336b6b98a6'),
(55, '2020-09-05 11:21:33', '2020-09-05 11:21:33', '68eb3d09-29af-47fe-a0b0-eb59a66435f9', '70caa17e-2e5a-4096-8c61-e4336b6b98a6'),
(56, '2020-09-05 11:21:39', '2020-09-05 11:21:39', 'f6086692-ff12-46e5-abcb-58519a4dbf88', '70caa17e-2e5a-4096-8c61-e4336b6b98a6'),
(57, '2020-09-05 11:21:42', '2020-09-05 11:21:42', 'f2b74c75-dd85-4007-ab5f-6ae1e90845b5', '70caa17e-2e5a-4096-8c61-e4336b6b98a6'),
(58, '2020-09-05 11:23:12', '2020-09-05 11:23:12', 'f6161606-4e63-4de7-85b8-b89789fcfce1', '70caa17e-2e5a-4096-8c61-e4336b6b98a6'),
(59, '2020-09-05 11:25:43', '2020-09-05 11:25:43', '03cce4e1-75b1-4fa6-8d47-943b3ae09c7b', '10ea9f87-0634-45dd-8081-973b3ec7191b'),
(60, '2020-09-05 11:25:47', '2020-09-05 11:25:47', '13942e1e-c450-4a29-9f23-f642c78c0355', '10ea9f87-0634-45dd-8081-973b3ec7191b'),
(61, '2020-09-05 11:25:52', '2020-09-05 11:25:52', '5496fa64-5d86-4530-9e58-c7f6e3a96178', '10ea9f87-0634-45dd-8081-973b3ec7191b'),
(62, '2020-09-05 11:26:07', '2020-09-05 11:26:07', '0c02aaa8-7b63-437d-a293-7c665e7ebee8', '10ea9f87-0634-45dd-8081-973b3ec7191b'),
(63, '2020-09-05 11:26:21', '2020-09-05 11:26:21', '45fc5e96-912b-496b-8c32-d69873c9d5e3', '10ea9f87-0634-45dd-8081-973b3ec7191b'),
(64, '2020-09-05 11:26:35', '2020-09-05 11:26:35', 'e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1', '10ea9f87-0634-45dd-8081-973b3ec7191b'),
(65, '2020-09-05 11:27:09', '2020-09-05 11:27:09', 'f6086692-ff12-46e5-abcb-58519a4dbf88', '10ea9f87-0634-45dd-8081-973b3ec7191b'),
(66, '2020-09-05 11:27:40', '2020-09-05 11:27:40', '68eb3d09-29af-47fe-a0b0-eb59a66435f9', '10ea9f87-0634-45dd-8081-973b3ec7191b'),
(67, '2020-09-08 09:09:43', '2020-09-08 09:09:43', '75e370ba-ce09-401c-9a06-b00d421abfca', '29561412-13c3-4984-ab09-299341d11ceb'),
(68, '2021-05-13 17:13:06', '2021-05-13 17:13:06', '03cce4e1-75b1-4fa6-8d47-943b3ae09c7b', 'ed7a6e5f-a159-4b9f-bcf1-1eb1094fce51'),
(69, '2021-05-13 17:13:11', '2021-05-13 17:13:11', '0c02aaa8-7b63-437d-a293-7c665e7ebee8', 'ed7a6e5f-a159-4b9f-bcf1-1eb1094fce51'),
(70, '2021-05-13 17:13:14', '2021-05-13 17:13:14', '57f0ef26-1279-4be8-bf34-793c5d426eaf', 'ed7a6e5f-a159-4b9f-bcf1-1eb1094fce51'),
(71, '2021-05-13 17:13:17', '2021-05-13 17:13:17', '45fc5e96-912b-496b-8c32-d69873c9d5e3', 'ed7a6e5f-a159-4b9f-bcf1-1eb1094fce51');

-- ----------------------------
-- Table structure for bi_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `bi_dashboard`;
CREATE TABLE `bi_dashboard`  (
  `dashboard_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dashborad_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dashborad_desc` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `private_status` tinyint NOT NULL DEFAULT 1,
  `dashborad_status` int NOT NULL DEFAULT 1,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `creator_id` int NOT NULL,
  `project_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dashboard_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bi_dashboard
-- ----------------------------
INSERT INTO `bi_dashboard` VALUES ('10ea9f87-0634-45dd-8081-973b3ec7191b', '珠宝订单分析', '', '[{\"yOffSet\":9,\"topLine\":[[0,0],[12,0]],\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":0,\"i\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"id\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"xOffSet\":12,\"bottomLine\":[[0,9],[12,9]]},{\"yOffSet\":17,\"topLine\":[[15,13],[20,13]],\"w\":5,\"moved\":false,\"x\":15,\"h\":4,\"y\":13,\"i\":\"13942e1e-c450-4a29-9f23-f642c78c0355\",\"id\":\"13942e1e-c450-4a29-9f23-f642c78c0355\",\"xOffSet\":20,\"bottomLine\":[[15,17],[20,17]]},{\"yOffSet\":9,\"topLine\":[[12,0],[24,0]],\"w\":12,\"moved\":false,\"x\":12,\"h\":9,\"y\":0,\"i\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"id\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"xOffSet\":24,\"bottomLine\":[[12,9],[24,9]]},{\"yOffSet\":17,\"topLine\":[[10,13],[15,13]],\"w\":5,\"moved\":false,\"x\":10,\"h\":4,\"y\":13,\"i\":\"0c02aaa8-7b63-437d-a293-7c665e7ebee8\",\"id\":\"0c02aaa8-7b63-437d-a293-7c665e7ebee8\",\"xOffSet\":15,\"bottomLine\":[[10,17],[15,17]]},{\"yOffSet\":13,\"topLine\":[[10,9],[15,9]],\"w\":5,\"moved\":false,\"x\":10,\"h\":4,\"y\":9,\"i\":\"45fc5e96-912b-496b-8c32-d69873c9d5e3\",\"id\":\"45fc5e96-912b-496b-8c32-d69873c9d5e3\",\"xOffSet\":15,\"bottomLine\":[[10,13],[15,13]]},{\"yOffSet\":13,\"topLine\":[[15,9],[20,9]],\"w\":5,\"moved\":false,\"x\":15,\"h\":4,\"y\":9,\"i\":\"e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1\",\"id\":\"e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1\",\"xOffSet\":20,\"bottomLine\":[[15,13],[20,13]]},{\"yOffSet\":17,\"topLine\":[[20,9],[24,9]],\"w\":4,\"moved\":false,\"x\":20,\"h\":8,\"y\":9,\"i\":\"f6086692-ff12-46e5-abcb-58519a4dbf88\",\"id\":\"f6086692-ff12-46e5-abcb-58519a4dbf88\",\"xOffSet\":24,\"bottomLine\":[[20,17],[24,17]]},{\"w\":10,\"moved\":false,\"x\":0,\"h\":8,\"y\":9,\"i\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\",\"id\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\"}]', 1, 1, '2020-09-05 11:25:37.000000', '2020-09-08 11:56:41.000000', 1, '7c9edbc7-b227-45cb-bafb-587df0cf7911');
INSERT INTO `bi_dashboard` VALUES ('29561412-13c3-4984-ab09-299341d11ceb', '我的数据概览', '我的数据概览', '[{\"yOffSet\":9,\"topLine\":[[0,0],[12,0]],\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":0,\"i\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"id\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"xOffSet\":12,\"bottomLine\":[[0,9],[12,9]]},{\"yOffSet\":9,\"topLine\":[[12,0],[24,0]],\"w\":12,\"moved\":false,\"x\":12,\"h\":9,\"y\":9,\"i\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\",\"id\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\",\"xOffSet\":24,\"bottomLine\":[[12,9],[24,9]]},{\"yOffSet\":18,\"topLine\":[[0,9],[12,9]],\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":9,\"i\":\"a4faad40-585c-4a40-aad8-dfbb9b171246\",\"id\":\"a4faad40-585c-4a40-aad8-dfbb9b171246\",\"xOffSet\":12,\"bottomLine\":[[0,18],[12,18]]},{\"w\":12,\"moved\":false,\"x\":12,\"h\":9,\"y\":0,\"i\":\"75e370ba-ce09-401c-9a06-b00d421abfca\",\"id\":\"75e370ba-ce09-401c-9a06-b00d421abfca\"}]', 1, 1, '2020-09-03 12:10:38.000000', '2020-09-08 11:56:37.000000', 1, '0b5861f1-6362-45e1-8f02-ac21e7983ad7');
INSERT INTO `bi_dashboard` VALUES ('2cde7a70-5fad-4b71-b887-a07f732382f6', '我的数据概览', '', '[]', 1, 1, '2020-09-03 18:34:45.000000', '2020-09-07 17:45:20.000000', 2, '0b5861f1-6362-45e1-8f02-ac21e7983ad7');
INSERT INTO `bi_dashboard` VALUES ('4a5935a2-2ee7-418d-8f4d-3264ed0a679b', '测试分析看板', '', '[{\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":0,\"i\":\"75c52d21-a469-4de8-acb9-904cf60f63ca\",\"id\":\"75c52d21-a469-4de8-acb9-904cf60f63ca\"}]', 1, 1, '2020-09-02 17:10:28.000000', '2020-09-08 11:56:44.000000', 1, '84cd5909-16ee-446c-8526-6379759223b2');
INSERT INTO `bi_dashboard` VALUES ('4de8022a-0d4a-4f0e-ba16-d546c305fd7e', '测试公开概览', '测试公开概览', '[{\"yOffSet\":9,\"topLine\":[[0,0],[12,0]],\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":4,\"i\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"id\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"xOffSet\":12,\"bottomLine\":[[0,9],[12,9]]},{\"yOffSet\":9,\"topLine\":[[12,0],[24,0]],\"w\":12,\"moved\":false,\"x\":12,\"h\":9,\"y\":4,\"i\":\"a4faad40-585c-4a40-aad8-dfbb9b171246\",\"id\":\"a4faad40-585c-4a40-aad8-dfbb9b171246\",\"xOffSet\":24,\"bottomLine\":[[12,9],[24,9]]},{\"yOffSet\":27,\"topLine\":[[0,18],[12,18]],\"w\":5,\"moved\":false,\"x\":0,\"h\":4,\"y\":0,\"i\":\"f6086692-ff12-46e5-abcb-58519a4dbf88\",\"id\":\"f6086692-ff12-46e5-abcb-58519a4dbf88\",\"xOffSet\":12,\"bottomLine\":[[0,27],[12,27]]},{\"yOffSet\":36,\"topLine\":[[0,27],[12,27]],\"w\":5,\"moved\":false,\"x\":5,\"h\":4,\"y\":0,\"i\":\"0c02aaa8-7b63-437d-a293-7c665e7ebee8\",\"id\":\"0c02aaa8-7b63-437d-a293-7c665e7ebee8\",\"xOffSet\":12,\"bottomLine\":[[0,36],[12,36]]},{\"yOffSet\":45,\"topLine\":[[0,36],[12,36]],\"w\":5,\"moved\":false,\"x\":10,\"h\":4,\"y\":0,\"i\":\"13942e1e-c450-4a29-9f23-f642c78c0355\",\"id\":\"13942e1e-c450-4a29-9f23-f642c78c0355\",\"xOffSet\":12,\"bottomLine\":[[0,45],[12,45]]},{\"yOffSet\":54,\"topLine\":[[0,45],[12,45]],\"w\":4,\"moved\":false,\"x\":20,\"h\":4,\"y\":0,\"i\":\"45fc5e96-912b-496b-8c32-d69873c9d5e3\",\"id\":\"45fc5e96-912b-496b-8c32-d69873c9d5e3\",\"xOffSet\":12,\"bottomLine\":[[0,54],[12,54]]},{\"w\":5,\"moved\":false,\"x\":15,\"h\":4,\"y\":0,\"i\":\"e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1\",\"id\":\"e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1\"}]', 0, 1, '2020-09-03 12:36:42.000000', '2020-09-08 11:45:31.000000', 1, '0b5861f1-6362-45e1-8f02-ac21e7983ad7');
INSERT INTO `bi_dashboard` VALUES ('70caa17e-2e5a-4096-8c61-e4336b6b98a6', '订单数据分析演示概览', '分析订单情况', '[{\"yOffSet\":8,\"topLine\":[[5,0],[16,0]],\"w\":11,\"moved\":false,\"x\":5,\"h\":8,\"y\":0,\"i\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"id\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"xOffSet\":16,\"bottomLine\":[[5,8],[16,8]]},{\"yOffSet\":4,\"topLine\":[[0,0],[5,0]],\"w\":5,\"moved\":false,\"x\":0,\"h\":4,\"y\":0,\"i\":\"13942e1e-c450-4a29-9f23-f642c78c0355\",\"id\":\"13942e1e-c450-4a29-9f23-f642c78c0355\",\"xOffSet\":5,\"bottomLine\":[[0,4],[5,4]]},{\"yOffSet\":8,\"topLine\":[[0,4],[5,4]],\"w\":5,\"moved\":false,\"x\":0,\"h\":4,\"y\":4,\"i\":\"45fc5e96-912b-496b-8c32-d69873c9d5e3\",\"id\":\"45fc5e96-912b-496b-8c32-d69873c9d5e3\",\"xOffSet\":5,\"bottomLine\":[[0,8],[5,8]]},{\"yOffSet\":12,\"topLine\":[[8,8],[15,8]],\"w\":7,\"moved\":false,\"x\":8,\"h\":4,\"y\":8,\"i\":\"0c02aaa8-7b63-437d-a293-7c665e7ebee8\",\"id\":\"0c02aaa8-7b63-437d-a293-7c665e7ebee8\",\"xOffSet\":15,\"bottomLine\":[[8,12],[15,12]]},{\"yOffSet\":16,\"topLine\":[[0,8],[8,8]],\"w\":8,\"moved\":false,\"x\":0,\"h\":8,\"y\":8,\"i\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"id\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"xOffSet\":8,\"bottomLine\":[[0,16],[8,16]]},{\"yOffSet\":16,\"topLine\":[[8,12],[15,12]],\"w\":7,\"moved\":false,\"x\":8,\"h\":4,\"y\":12,\"i\":\"e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1\",\"id\":\"e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1\",\"xOffSet\":15,\"bottomLine\":[[8,16],[15,16]]},{\"yOffSet\":24,\"topLine\":[[0,16],[13,16]],\"w\":11,\"moved\":false,\"x\":0,\"h\":8,\"y\":16,\"i\":\"d57b2854-a86a-4537-81b6-175114c7258c\",\"id\":\"d57b2854-a86a-4537-81b6-175114c7258c\",\"xOffSet\":13,\"bottomLine\":[[0,24],[13,24]]},{\"yOffSet\":16,\"topLine\":[[15,8],[24,8]],\"w\":9,\"moved\":false,\"x\":15,\"h\":8,\"y\":8,\"i\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\",\"id\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\",\"xOffSet\":24,\"bottomLine\":[[15,16],[24,16]]},{\"yOffSet\":24,\"topLine\":[[13,16],[18,16]],\"w\":5,\"moved\":false,\"x\":11,\"h\":8,\"y\":16,\"i\":\"f6086692-ff12-46e5-abcb-58519a4dbf88\",\"id\":\"f6086692-ff12-46e5-abcb-58519a4dbf88\",\"xOffSet\":18,\"bottomLine\":[[13,24],[18,24]]},{\"yOffSet\":8,\"topLine\":[[16,0],[24,0]],\"w\":8,\"moved\":false,\"x\":16,\"h\":8,\"y\":0,\"i\":\"f2b74c75-dd85-4007-ab5f-6ae1e90845b5\",\"id\":\"f2b74c75-dd85-4007-ab5f-6ae1e90845b5\",\"xOffSet\":24,\"bottomLine\":[[16,8],[24,8]]},{\"w\":8,\"moved\":false,\"x\":16,\"h\":8,\"y\":16,\"i\":\"f6161606-4e63-4de7-85b8-b89789fcfce1\",\"id\":\"f6161606-4e63-4de7-85b8-b89789fcfce1\"}]', 0, 1, '2020-09-05 11:19:44.000000', '2020-09-08 11:56:47.000000', 1, '84cd5909-16ee-446c-8526-6379759223b2');
INSERT INTO `bi_dashboard` VALUES ('98cbe07c-9ba4-41f4-be6a-4785ea28f42a', '我的数据概览', '', '[]', 1, 1, '2020-09-07 17:45:44.000000', '2020-09-07 17:45:44.000000', 2, '0e3211ad-5175-4d26-9439-5e2e7d81fa54');
INSERT INTO `bi_dashboard` VALUES ('ac1c083e-d554-4c28-83e3-6f890f37e018', '订单分析概览', '订单分析概览', '[{\"yOffSet\":16,\"topLine\":[[5,7],[15,7]],\"w\":10,\"moved\":false,\"x\":5,\"h\":7,\"y\":6,\"i\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"id\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"xOffSet\":15,\"bottomLine\":[[5,16],[15,16]]},{\"yOffSet\":7,\"topLine\":[[8,0],[16,0]],\"w\":8,\"moved\":false,\"x\":8,\"h\":6,\"y\":0,\"i\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"id\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"xOffSet\":16,\"bottomLine\":[[8,7],[16,7]]},{\"yOffSet\":27,\"topLine\":[[0,16],[24,16]],\"w\":24,\"moved\":false,\"x\":0,\"h\":11,\"y\":13,\"i\":\"d57b2854-a86a-4537-81b6-175114c7258c\",\"id\":\"d57b2854-a86a-4537-81b6-175114c7258c\",\"xOffSet\":24,\"bottomLine\":[[0,27],[24,27]]},{\"yOffSet\":7,\"topLine\":[[0,0],[8,0]],\"w\":8,\"moved\":false,\"x\":0,\"h\":6,\"y\":0,\"i\":\"f2b74c75-dd85-4007-ab5f-6ae1e90845b5\",\"id\":\"f2b74c75-dd85-4007-ab5f-6ae1e90845b5\",\"xOffSet\":8,\"bottomLine\":[[0,7],[8,7]]},{\"yOffSet\":11,\"topLine\":[[15,7],[20,7]],\"w\":5,\"moved\":false,\"x\":15,\"h\":3,\"y\":6,\"i\":\"45fc5e96-912b-496b-8c32-d69873c9d5e3\",\"id\":\"45fc5e96-912b-496b-8c32-d69873c9d5e3\",\"xOffSet\":20,\"bottomLine\":[[15,11],[20,11]]},{\"yOffSet\":16,\"topLine\":[[15,11],[20,11]],\"w\":5,\"moved\":false,\"x\":15,\"h\":4,\"y\":9,\"i\":\"13942e1e-c450-4a29-9f23-f642c78c0355\",\"id\":\"13942e1e-c450-4a29-9f23-f642c78c0355\",\"xOffSet\":20,\"bottomLine\":[[15,16],[20,16]]},{\"yOffSet\":9,\"topLine\":[[20,0],[24,0]],\"w\":4,\"moved\":false,\"x\":20,\"h\":7,\"y\":6,\"i\":\"0c02aaa8-7b63-437d-a293-7c665e7ebee8\",\"id\":\"0c02aaa8-7b63-437d-a293-7c665e7ebee8\",\"xOffSet\":24,\"bottomLine\":[[20,9],[24,9]]},{\"yOffSet\":11,\"topLine\":[[0,7],[5,7]],\"w\":5,\"moved\":false,\"x\":0,\"h\":3,\"y\":6,\"i\":\"e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1\",\"id\":\"e83a1ab1-fc6b-464f-8b60-9f101d0fdfa1\",\"xOffSet\":5,\"bottomLine\":[[0,11],[5,11]]},{\"yOffSet\":16,\"topLine\":[[0,11],[5,11]],\"w\":5,\"moved\":false,\"x\":0,\"h\":4,\"y\":9,\"i\":\"f6086692-ff12-46e5-abcb-58519a4dbf88\",\"id\":\"f6086692-ff12-46e5-abcb-58519a4dbf88\",\"xOffSet\":5,\"bottomLine\":[[0,16],[5,16]]},{\"w\":8,\"moved\":false,\"x\":16,\"h\":6,\"y\":0,\"i\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\",\"id\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\"}]', 1, 1, '2020-08-28 14:21:27.000000', '2021-05-13 17:16:58.000000', 1, '0b5861f1-6362-45e1-8f02-ac21e7983ad7');
INSERT INTO `bi_dashboard` VALUES ('b44002b0-ed7d-49e0-9ec7-ade3a24a3e93', '测试看板', '', '[{\"yOffSet\":9,\"topLine\":[[0,0],[12,0]],\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":0,\"i\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"id\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"xOffSet\":12,\"bottomLine\":[[0,9],[12,9]]},{\"yOffSet\":9,\"topLine\":[[12,0],[24,0]],\"w\":12,\"moved\":false,\"x\":12,\"h\":9,\"y\":0,\"i\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\",\"id\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\",\"xOffSet\":24,\"bottomLine\":[[12,9],[24,9]]},{\"yOffSet\":18,\"topLine\":[[0,9],[12,9]],\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":9,\"i\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"id\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"xOffSet\":12,\"bottomLine\":[[0,18],[12,18]]},{\"w\":12,\"moved\":false,\"x\":12,\"h\":9,\"y\":9,\"i\":\"57f0ef26-1279-4be8-bf34-793c5d426eaf\",\"id\":\"57f0ef26-1279-4be8-bf34-793c5d426eaf\"}]', 0, 1, '2020-09-02 16:42:10.000000', '2020-09-08 11:56:39.000000', 1, '0e3211ad-5175-4d26-9439-5e2e7d81fa54');
INSERT INTO `bi_dashboard` VALUES ('cec92ab4-d5de-42b7-80d0-f9ab2ce5aa9b', '演示看板', '', '[{\"yOffSet\":9,\"topLine\":[[0,0],[12,0]],\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":0,\"i\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"id\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"xOffSet\":12,\"bottomLine\":[[0,9],[12,9]]},{\"yOffSet\":9,\"topLine\":[[12,0],[24,0]],\"w\":12,\"moved\":false,\"x\":12,\"h\":9,\"y\":0,\"i\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"id\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"xOffSet\":24,\"bottomLine\":[[12,9],[24,9]]},{\"yOffSet\":27,\"topLine\":[[0,18],[12,18]],\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":29,\"i\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\",\"id\":\"68eb3d09-29af-47fe-a0b0-eb59a66435f9\",\"xOffSet\":12,\"bottomLine\":[[0,27],[12,27]]},{\"yOffSet\":18,\"topLine\":[[12,9],[24,9]],\"w\":12,\"moved\":false,\"x\":12,\"h\":9,\"y\":9,\"i\":\"f6161606-4e63-4de7-85b8-b89789fcfce1\",\"id\":\"f6161606-4e63-4de7-85b8-b89789fcfce1\",\"xOffSet\":24,\"bottomLine\":[[12,18],[24,18]]},{\"yOffSet\":18,\"topLine\":[[0,9],[12,9]],\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":9,\"i\":\"f2b74c75-dd85-4007-ab5f-6ae1e90845b5\",\"id\":\"f2b74c75-dd85-4007-ab5f-6ae1e90845b5\",\"xOffSet\":12,\"bottomLine\":[[0,18],[12,18]]},{\"w\":24,\"moved\":false,\"x\":0,\"h\":11,\"y\":18,\"i\":\"d57b2854-a86a-4537-81b6-175114c7258c\",\"id\":\"d57b2854-a86a-4537-81b6-175114c7258c\"}]', 1, 1, '2020-09-02 17:08:32.000000', '2020-09-08 12:48:54.000000', 1, '84cd5909-16ee-446c-8526-6379759223b2');
INSERT INTO `bi_dashboard` VALUES ('db707ab4-0102-4123-a366-4420a6aafe43', '我的演示概览', '演示看板', '[{\"yOffSet\":18,\"topLine\":[[0,9],[12,9]],\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":9,\"i\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"id\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"xOffSet\":12,\"bottomLine\":[[0,18],[12,18]]},{\"yOffSet\":9,\"topLine\":[[12,0],[24,0]],\"w\":12,\"moved\":false,\"x\":12,\"h\":9,\"y\":0,\"i\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"id\":\"5496fa64-5d86-4530-9e58-c7f6e3a96178\",\"xOffSet\":24,\"bottomLine\":[[12,9],[24,9]]},{\"yOffSet\":9,\"topLine\":[[0,0],[12,0]],\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":0,\"i\":\"f2b74c75-dd85-4007-ab5f-6ae1e90845b5\",\"id\":\"f2b74c75-dd85-4007-ab5f-6ae1e90845b5\",\"xOffSet\":12,\"bottomLine\":[[0,9],[12,9]]},{\"yOffSet\":18,\"topLine\":[[12,9],[24,9]],\"w\":12,\"moved\":false,\"x\":12,\"h\":9,\"y\":9,\"i\":\"d57b2854-a86a-4537-81b6-175114c7258c\",\"id\":\"d57b2854-a86a-4537-81b6-175114c7258c\",\"xOffSet\":24,\"bottomLine\":[[12,18],[24,18]]},{\"w\":12,\"moved\":false,\"x\":0,\"h\":9,\"y\":18,\"i\":\"f6161606-4e63-4de7-85b8-b89789fcfce1\",\"id\":\"f6161606-4e63-4de7-85b8-b89789fcfce1\"}]', 0, 1, '2020-08-29 12:27:11.000000', '2020-09-08 11:51:09.000000', 1, '0b5861f1-6362-45e1-8f02-ac21e7983ad7');
INSERT INTO `bi_dashboard` VALUES ('ed7a6e5f-a159-4b9f-bcf1-1eb1094fce51', '的鹅鹅鹅', '', '[{\"id\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"x\":0,\"y\":0,\"w\":12,\"h\":9,\"i\":\"03cce4e1-75b1-4fa6-8d47-943b3ae09c7b\",\"moved\":false,\"yOffSet\":9,\"xOffSet\":12,\"bottomLine\":[[0,9],[12,9]],\"topLine\":[[0,0],[12,0]]},{\"id\":\"0c02aaa8-7b63-437d-a293-7c665e7ebee8\",\"x\":12,\"y\":0,\"w\":6,\"h\":3,\"i\":\"0c02aaa8-7b63-437d-a293-7c665e7ebee8\",\"moved\":false,\"yOffSet\":18,\"xOffSet\":12,\"bottomLine\":[[0,18],[12,18]],\"topLine\":[[0,9],[12,9]]},{\"id\":\"57f0ef26-1279-4be8-bf34-793c5d426eaf\",\"x\":12,\"y\":3,\"w\":12,\"h\":9,\"i\":\"57f0ef26-1279-4be8-bf34-793c5d426eaf\",\"moved\":false,\"yOffSet\":27,\"xOffSet\":12,\"bottomLine\":[[0,27],[12,27]],\"topLine\":[[0,18],[12,18]]},{\"id\":\"45fc5e96-912b-496b-8c32-d69873c9d5e3\",\"x\":18,\"y\":0,\"w\":6,\"h\":3,\"i\":\"45fc5e96-912b-496b-8c32-d69873c9d5e3\",\"moved\":false}]', 0, 1, '2021-05-13 17:12:59.000000', '2021-05-13 17:13:33.000000', 1, '0b5861f1-6362-45e1-8f02-ac21e7983ad7');

-- ----------------------------
-- Table structure for bi_datasource
-- ----------------------------
DROP TABLE IF EXISTS `bi_datasource`;
CREATE TABLE `bi_datasource`  (
  `source_id` int NOT NULL AUTO_INCREMENT,
  `base_alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creator_id` int NOT NULL,
  `conn_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `db_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `driver_class` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `is_private` tinyint(1) NULL DEFAULT 1,
  `updated_at` datetime NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `databasename` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`source_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bi_datasource
-- ----------------------------
INSERT INTO `bi_datasource` VALUES (12, '演示数据源', 1, 'jdbc:mysql://localhost:3306/demo?useSSL=false&serverTimezone=Asia/Shanghai', 'root', 'zhangfeng', 'doris', 'com.mysql.jdbc.Driver', 1, 1, '2020-08-27 13:25:51', '2020-08-27 13:25:51', NULL);
INSERT INTO `bi_datasource` VALUES (13, '测试', 1, 'jdbc:mysql://localhost:3306/sql12298540?useSSL=false&serverTimezone=Asia/Shanghai', 'root', 'zhangfeng', 'mysql', 'com.mysql.cj.jdbc.Driver', 1, 1, '2020-08-29 10:30:15', '2020-08-29 10:30:15', '');

-- ----------------------------
-- Table structure for bi_datasource_table
-- ----------------------------
DROP TABLE IF EXISTS `bi_datasource_table`;
CREATE TABLE `bi_datasource_table`  (
  `table_id` int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `table_alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT NULL,
  `creator_id` int NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL,
  `source_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`table_id`) USING BTREE,
  INDEX `INDEX_Reference_source_id`(`source_id`) USING BTREE,
  CONSTRAINT `FK_Reference_source_id` FOREIGN KEY (`source_id`) REFERENCES `bi_datasource` (`source_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 316 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bi_datasource_table
-- ----------------------------
INSERT INTO `bi_datasource_table` VALUES (268, 'order_analysis', '订单分析', '2020-08-27 17:47:30', '2020-08-27 17:47:30', 1, 1, 12);
INSERT INTO `bi_datasource_table` VALUES (269, 'order_analysis', '订单分析', '2020-08-29 10:30:35', '2020-08-29 10:30:35', 1, 1, 13);
INSERT INTO `bi_datasource_table` VALUES (314, 'dws_test', '测试表', '2020-08-31 14:43:50', '2020-08-31 14:43:50', 1, 1, 12);
INSERT INTO `bi_datasource_table` VALUES (315, 'dws_demo', '演示表', '2020-08-31 14:44:28', '2020-08-31 14:44:28', 1, 1, 12);
INSERT INTO `bi_datasource_table` VALUES (316, 'demo2', '演示2', '2020-08-31 14:45:14', '2020-08-31 14:45:14', 1, 1, 12);

-- ----------------------------
-- Table structure for bi_datasource_tablefield
-- ----------------------------
DROP TABLE IF EXISTS `bi_datasource_tablefield`;
CREATE TABLE `bi_datasource_tablefield`  (
  `field_id` int NOT NULL AUTO_INCREMENT,
  `table_id` int NULL DEFAULT NULL,
  `field_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `field_cname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `field_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_empty` tinyint NULL DEFAULT NULL,
  `createdate` datetime NULL DEFAULT NULL,
  `create_user_id` int NULL DEFAULT NULL,
  `create_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_enable` tinyint NULL DEFAULT NULL,
  `field_lenght` int NULL DEFAULT NULL,
  PRIMARY KEY (`field_id`) USING BTREE,
  INDEX `INDEX_Reference_4_table_id`(`table_id`) USING BTREE,
  CONSTRAINT `FK_Reference_4_table_id` FOREIGN KEY (`table_id`) REFERENCES `bi_datasource_table` (`table_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7523 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bi_datasource_tablefield
-- ----------------------------
INSERT INTO `bi_datasource_tablefield` VALUES (6463, 268, 'date', '时间', 'varchar', 1, '2020-08-27 17:47:30', 1, 'admin', 1, 19),
(6464, 268, 'user_src', '用户来源', 'varchar', 1, '2020-08-27 17:47:30', 1, 'admin', 1, 9),
(6465, 268, 'order_src', '订单来源', 'varchar', 1, '2020-08-27 17:47:30', 1, 'admin', 1, 11),
(6466, 268, 'order_location', '区域', 'varchar', 1, '2020-08-27 17:47:30', 1, 'admin', 1, 2),
(6467, 268, 'new_order', '新订单数', 'int', 1, '2020-08-27 17:47:30', 1, 'admin', 1, 10),
(6468, 268, 'payed_order', '支付订单数', 'int', 1, '2020-08-27 17:47:30', 1, 'admin', 1, 10),
(6469, 268, 'pending_order', '待支付订单数', 'int', 1, '2020-08-27 17:47:30', 1, 'admin', 1, 10),
(6470, 268, 'cancel_order', '取消订单数', 'int', 1, '2020-08-27 17:47:30', 1, 'admin', 1, 10),
(6471, 268, 'reject_order', '拒绝订单数', 'int', 1, '2020-08-27 17:47:30', 1, 'admin', 1, 10),
(6472, 268, 'good_order', '订单商品数', 'int', 1, '2020-08-27 17:47:30', 1, 'admin', 1, 10),
(6473, 268, 'report_order', '复购数', 'int', 1, '2020-08-27 17:47:30', 1, 'admin', 1, 10),
(6485, 269, 'date', 'date', 'VARCHAR', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 19),
(6486, 269, 'user_src', 'user_src', 'VARCHAR', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 9),
(6487, 269, 'order_src', 'order_src', 'VARCHAR', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 11),
(6488, 269, 'order_location', 'order_location', 'VARCHAR', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 2),
(6489, 269, 'new_order', 'new_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6490, 269, 'payed_order', 'payed_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6491, 269, 'pending_order', 'pending_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6492, 269, 'cancel_order', 'cancel_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6493, 269, 'reject_order', 'reject_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6494, 269, 'good_order', 'good_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6495, 269, 'report_order', 'report_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6496, 269, 'date', 'date', 'VARCHAR', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 19),
(6497, 269, 'user_src', 'user_src', 'VARCHAR', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 9),
(6498, 269, 'order_src', 'order_src', 'VARCHAR', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 11),
(6499, 269, 'order_location', 'order_location', 'VARCHAR', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 2),
(6500, 269, 'new_order', 'new_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6501, 269, 'payed_order', 'payed_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6502, 269, 'pending_order', 'pending_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6503, 269, 'cancel_order', 'cancel_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6504, 269, 'reject_order', 'reject_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6505, 269, 'good_order', 'good_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(6506, 269, 'report_order', 'report_order', 'INT', 1, '2020-08-29 10:30:35', 1, 'admin', 1, 10),
(7518, 314, 'demo_id', '编号', 'int', 1, '2020-08-31 15:35:05', 1, 'admin', 1, 0),
(7519, 314, 'demo_name', '名称', 'varchar', 1, '2020-08-31 15:35:05', 1, 'admin', 1, 30),
(7520, 314, 'demo_password', '密码', 'varchar', 1, '2020-08-31 15:35:05', 1, 'admin', 1, 20),
(7521, 315, 'demo_id', '编号', 'int', 1, '2020-08-31 15:35:30', 1, 'admin', 1, 0),
(7522, 315, 'demo_name', '名称', 'varchar', 1, '2020-08-31 15:35:30', 1, 'admin', 1, 30),
(7523, 315, 'demo_password', '密码', 'varchar', 1, '2020-08-31 15:35:30', 1, 'admin', 1, 20);

-- ----------------------------
-- Table structure for bi_project
-- ----------------------------
DROP TABLE IF EXISTS `bi_project`;
CREATE TABLE `bi_project`  (
  `project_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `project_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `project_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `creator_id` int NOT NULL,
  `private_status` tinyint(1) NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `creator_username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bi_project
-- ----------------------------
INSERT INTO `bi_project` VALUES ('0b5861f1-6362-45e1-8f02-ac21e7983ad7', '电商数据分析项目', '这是一个电商数据分析项目', '2020-09-02 16:08:03', 1, 0, 1, 'admin');
INSERT INTO `bi_project` VALUES ('0e3211ad-5175-4d26-9439-5e2e7d81fa54', '会员数据分析项目', '', '2020-09-02 16:07:52', 1, 0, 1, 'admin');
INSERT INTO `bi_project` VALUES ('7c9edbc7-b227-45cb-bafb-587df0cf7911', '珠宝数据分析项目', '', '2020-09-02 16:07:39', 1, 1, 1, 'admin');
INSERT INTO `bi_project` VALUES ('84cd5909-16ee-446c-8526-6379759223b2', '数据分析演示项目', '数据分析演示项目', '2020-09-02 17:08:22', 1, 0, 1, 'admin');

-- ----------------------------
-- Table structure for bi_report
-- ----------------------------
DROP TABLE IF EXISTS `bi_report`;
CREATE TABLE `bi_report`  (
  `report_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `report_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `report_sql` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `report_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creator_id` int NOT NULL,
  `create_date` datetime NOT NULL,
  `private_status` tinyint(1) NOT NULL,
  `status` int NOT NULL,
  `source_id` int NOT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `field_cnames` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bi_report
-- ----------------------------
INSERT INTO `bi_report` VALUES ('51409d88-54be-4eb1-a712-946fd2649edb', '测试报表', 'SELECT\n  sum(new_order) as new_order,\n  date\nFROM order_analysis\nGROUP BY date', '测试报表', 1, '2020-09-07 16:52:23', 0, 1, 12, '2020-09-08 13:29:40', '新订单数,时间');
INSERT INTO `bi_report` VALUES ('c2f1dc04-336e-473e-8dbf-0dd329a6bb10', '订单区域来源分析', 'SELECT\n  sum(payed_order) as payed_order,\n  user_src,\n  order_location\nFROM\n  order_analysis\nGROUP BY\n  user_src,\n  order_location', '订单区域来源分析', 1, '2020-09-07 16:56:32', 0, 1, 12, '2020-09-08 13:28:31', '支付订单数,用户来源,订单区域');
INSERT INTO `bi_report` VALUES ('dc6842ab-928d-4980-bcb9-01246cf1db83', '订单按区域分析报表', 'SELECT\n  sum(payed_order) as payed_order,\n  user_src,\n  order_location\nFROM\n  order_analysis\nGROUP BY\n  user_src,\n  order_location', '订单按区域分析报表', 1, '2020-09-07 16:55:48', 0, 1, 12, '2020-09-07 18:28:43', NULL);

-- ----------------------------
-- Table structure for bi_report_share
-- ----------------------------
DROP TABLE IF EXISTS `bi_report_share`;
CREATE TABLE `bi_report_share`  (
  `share_id` int NOT NULL AUTO_INCREMENT,
  `report_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `to_user_id` int NOT NULL,
  `share_user_id` int NOT NULL,
  `share_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`share_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bi_report_share
-- ----------------------------
INSERT INTO `bi_report_share` VALUES (4, 'c2f1dc04-336e-473e-8dbf-0dd329a6bb10', 1, 1, '2020-09-07 16:57:02');
INSERT INTO `bi_report_share` VALUES (5, 'c2f1dc04-336e-473e-8dbf-0dd329a6bb10', 2, 1, '2020-09-07 16:57:02');
INSERT INTO `bi_report_share` VALUES (6, 'c2f1dc04-336e-473e-8dbf-0dd329a6bb10', 100, 1, '2020-09-07 16:57:02');

-- ----------------------------
-- Table structure for bi_share_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `bi_share_dashboard`;
CREATE TABLE `bi_share_dashboard`  (
  `share_id` int NOT NULL AUTO_INCREMENT,
  `to_user_id` int NOT NULL,
  `share_user_id` int NOT NULL,
  `dashboard_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `share_date` datetime NOT NULL,
  PRIMARY KEY (`share_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bi_share_dashboard
-- ----------------------------
INSERT INTO `bi_share_dashboard` VALUES (1, 1, 1, '4de8022a-0d4a-4f0e-ba16-d546c305fd7e', '2020-09-03 16:18:47');
INSERT INTO `bi_share_dashboard` VALUES (2, 2, 1, '4de8022a-0d4a-4f0e-ba16-d546c305fd7e', '2020-09-03 18:25:21');
INSERT INTO `bi_share_dashboard` VALUES (3, 100, 1, '4de8022a-0d4a-4f0e-ba16-d546c305fd7e', '2020-09-04 11:39:25');
INSERT INTO `bi_share_dashboard` VALUES (4, 2, 1, 'ac1c083e-d554-4c28-83e3-6f890f37e018', '2020-09-04 14:01:01');
INSERT INTO `bi_share_dashboard` VALUES (5, 100, 1, 'ac1c083e-d554-4c28-83e3-6f890f37e018', '2020-09-04 14:01:01');
INSERT INTO `bi_share_dashboard` VALUES (6, 2, 1, '70caa17e-2e5a-4096-8c61-e4336b6b98a6', '2020-09-05 11:24:39');
INSERT INTO `bi_share_dashboard` VALUES (7, 100, 1, '70caa17e-2e5a-4096-8c61-e4336b6b98a6', '2020-09-05 11:24:39');
INSERT INTO `bi_share_dashboard` VALUES (8, 1, 1, '70caa17e-2e5a-4096-8c61-e4336b6b98a6', '2020-09-05 11:24:48');
INSERT INTO `bi_share_dashboard` VALUES (9, 1, 1, '10ea9f87-0634-45dd-8081-973b3ec7191b', '2020-09-05 11:28:02');
INSERT INTO `bi_share_dashboard` VALUES (10, 2, 1, '10ea9f87-0634-45dd-8081-973b3ec7191b', '2020-09-05 11:28:02');
INSERT INTO `bi_share_dashboard` VALUES (11, 100, 1, '10ea9f87-0634-45dd-8081-973b3ec7191b', '2020-09-05 11:28:02');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('VenusScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('VenusScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('VenusScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fired_time` bigint NOT NULL,
  `sched_time` bigint NOT NULL,
  `priority` int NOT NULL,
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.data.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720026636F6D2E646174612E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E646174612E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.data.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720026636F6D2E646174612E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E646174612E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.data.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720026636F6D2E646174612E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E646174612E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('VenusScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.oceanus.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E6F6365616E75732E73797374656D2E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E6F6365616E75732E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('VenusScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.oceanus.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E6F6365616E75732E73797374656D2E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E6F6365616E75732E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('VenusScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.oceanus.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E6F6365616E75732E73797374656D2E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E6F6365616E75732E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('VenusScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('VenusScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_checkin_time` bigint NOT NULL,
  `checkin_interval` bigint NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'doris011599212134904', 1599279063572, 15000);
INSERT INTO `qrtz_scheduler_state` VALUES ('VenusScheduler', 'DESKTOP-16KRP7V1621832862920', 1621832943660, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `repeat_count` bigint NOT NULL,
  `repeat_interval` bigint NOT NULL,
  `times_triggered` bigint NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `int_prop_1` int NULL DEFAULT NULL,
  `int_prop_2` int NULL DEFAULT NULL,
  `long_prop_1` bigint NULL DEFAULT NULL,
  `long_prop_2` bigint NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `next_fire_time` bigint NULL DEFAULT NULL,
  `prev_fire_time` bigint NULL DEFAULT NULL,
  `priority` int NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `start_time` bigint NOT NULL,
  `end_time` bigint NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `misfire_instr` smallint NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1599212140000, -1, 5, 'PAUSED', 'CRON', 1599212135000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1599212145000, -1, 5, 'PAUSED', 'CRON', 1599212136000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1599212140000, -1, 5, 'PAUSED', 'CRON', 1599212136000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('VenusScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1621832870000, -1, 5, 'PAUSED', 'CRON', 1621832863000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('VenusScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1621832865000, -1, 5, 'PAUSED', 'CRON', 1621832863000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('VenusScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1621832880000, -1, 5, 'PAUSED', 'CRON', 1621832863000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '数据科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男'),
(2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女'),
(3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知'),
(4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单'),
(5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单'),
(6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态'),
(7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态'),
(8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态'),
(9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态'),
(10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组'),
(11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组'),
(12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是'),
(13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否'),
(14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知'),
(15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告'),
(16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态'),
(17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态'),
(18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作'),
(19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作'),
(20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作'),
(21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作'),
(22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作'),
(23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作'),
(24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作'),
(25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作'),
(26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作'),
(27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态'),
(28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态'),
(100, 0, '启用', '1', 'table_enable', NULL, NULL, 'N', '0', 'admin', '2020-07-17 14:31:34', 'admin', '2020-07-17 14:39:09', NULL),
(101, 1, '禁用', '0', 'table_enable', NULL, NULL, 'N', '0', 'admin', '2020-07-17 14:32:13', 'admin', '2020-07-17 14:40:14', NULL),
(102, 0, '严格模式', '1', 'table_mode', NULL, NULL, 'N', '0', 'admin', '2020-07-17 14:33:50', '', NULL, NULL),
(103, 0, '非严格模式', '0', 'table_mode', NULL, NULL, 'N', '0', 'admin', '2020-07-17 14:34:01', 'admin', '2020-07-17 16:13:39', NULL),
(104, 0, '否', '1', 'field_is_empty', NULL, NULL, 'N', '0', 'admin', '2020-07-17 17:34:18', 'admin', '2020-07-17 17:39:46', NULL),
(105, 1, '是', '0', 'field_is_empty', NULL, NULL, 'N', '0', 'admin', '2020-07-17 17:34:25', 'admin', '2020-07-17 17:40:40', NULL),
(106, 0, '启用', '1', 'field_is_enable', NULL, NULL, 'N', '0', 'admin', '2020-07-17 17:38:02', '', NULL, NULL),
(107, 1, '禁用', '0', 'field_is_enable', NULL, NULL, 'N', '0', 'admin', '2020-07-17 17:38:15', '', NULL, NULL),
(108, 1, '字符串', 'string', 'rule_field_type', NULL, NULL, 'N', '0', 'admin', '2020-07-18 11:09:04', '', NULL, NULL),
(109, 2, '数字', 'number', 'rule_field_type', NULL, NULL, 'N', '0', 'admin', '2020-07-18 11:09:20', '', NULL, NULL),
(110, 3, '日期', 'date', 'rule_field_type', NULL, NULL, 'N', '0', 'admin', '2020-07-18 11:09:33', '', NULL, NULL),
(111, 1, 'doris', 'doris', 'db_type', NULL, NULL, 'N', '0', 'admin', '2020-07-20 11:00:44', '', NULL, NULL),
(112, 0, 'Mysql', 'mysql', 'db_type', NULL, NULL, 'N', '0', 'admin', '2020-07-20 11:00:55', '', NULL, NULL),
(113, 0, '启用', '1', 'company_status', NULL, NULL, 'N', '0', 'admin', '2020-07-20 14:22:32', '', NULL, NULL),
(114, 1, '禁用', '0', 'company_status', NULL, NULL, 'N', '0', 'admin', '2020-07-20 14:22:44', '', NULL, NULL),
(115, 0, 'BIGINT', 'BIGINT', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:42:07', '', NULL, NULL),
(116, 1, 'BOOLEAN', 'BOOLEAN', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:42:22', '', NULL, NULL),
(117, 3, 'CHAR', 'CHAR', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:42:36', '', NULL, NULL),
(118, 4, 'DATE', 'DATE', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:42:51', '', NULL, NULL),
(119, 5, 'DATETIME', 'DATETIME', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:43:02', '', NULL, NULL),
(120, 6, 'DECIMAL', 'DECIMAL', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:43:15', '', NULL, NULL),
(121, 7, 'DOUBLE', 'DOUBLE', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:43:28', '', NULL, NULL),
(122, 8, 'FLOAT', 'FLOAT', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:43:39', 'admin', '2020-08-19 17:43:49', NULL),
(123, 9, 'INT', 'INT', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:43:59', '', NULL, NULL),
(124, 10, 'LARGEINT', 'LARGEINT', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:44:12', '', NULL, NULL),
(125, 11, 'SMALLINT', 'SMALLINT', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:44:26', '', NULL, NULL),
(126, 12, 'TINYINT', 'TINYINT', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:44:40', '', NULL, NULL),
(127, 13, 'VARCHAR', 'VARCHAR', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-08-19 17:44:52', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '表是否启用', 'table_enable', '0', 'admin', '2020-07-17 14:30:57', 'admin', '2020-07-17 14:50:32', NULL);
INSERT INTO `sys_dict_type` VALUES (101, '表模式', 'table_mode', '0', 'admin', '2020-07-17 14:33:33', 'admin', '2020-07-17 14:51:32', NULL);
INSERT INTO `sys_dict_type` VALUES (102, '表字段是否为空', 'field_is_empty', '0', 'admin', '2020-07-17 17:33:50', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '字段是否启用', 'field_is_enable', '0', 'admin', '2020-07-17 17:37:45', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '数据类型', 'rule_field_type', '0', 'admin', '2020-07-18 11:08:37', 'admin', '2020-07-18 11:24:24', NULL);
INSERT INTO `sys_dict_type` VALUES (105, '数据源类型', 'db_type', '0', 'admin', '2020-07-20 11:00:21', 'admin', '2020-07-20 11:02:05', NULL);
INSERT INTO `sys_dict_type` VALUES (106, '企业状态', 'company_status', '0', 'admin', '2020-07-20 14:22:12', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (107, '数据类型', 'data_type', '0', 'admin', '2020-08-19 17:41:47', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 378 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '113.132.11.170', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-19 15:41:20');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '113.132.11.170', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-19 15:49:33');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '23.105.220.60', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-19 16:50:13');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '113.132.11.170', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-19 17:41:27');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-19 17:59:30');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-19 18:50:50');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-20 09:28:24');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-20 09:31:18');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-20 10:21:07');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-20 10:37:43');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-20 11:09:05');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '202.100.50.29', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-20 11:59:52');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '202.100.50.29', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-20 12:13:10');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '202.100.50.29', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-20 13:06:33');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '202.100.50.29', 'XX XX', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-08-20 14:20:41');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '202.100.50.29', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-20 14:20:44');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-20 14:51:42');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', '219.144.137.55', 'XX XX', 'Chrome Mobile', 'Mac OS X (iPhone)', '0', '登录成功', '2020-08-21 00:24:12');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '23.105.220.60', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-21 09:24:13');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '115.171.85.200', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-21 11:49:03');


-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2046 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 4, 'system', NULL, 1, 'M', '0', '0', '', 'system', 'admin', '2018-03-16 11:33:00', 'admin', '2020-08-11 09:39:51', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 5, 'monitor', NULL, 1, 'M', '0', '0', '', 'monitor', 'admin', '2018-03-16 11:33:00', 'admin', '2020-08-14 17:56:21', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 6, 'tool', NULL, 1, 'M', '1', '0', '', 'tool', 'admin', '2018-03-16 11:33:00', 'admin', '2020-08-14 17:56:31', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 12:49:02', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 系统凌晨维护', '1', '<p>维护内容</p>', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-20 12:49:10', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.data.project.monitor.controller.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/rest/monitor/operlog/clean', '113.132.11.170', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 15:24:01');
INSERT INTO `sys_oper_log` VALUES (2, '登陆日志', 9, 'com.data.project.monitor.controller.SysLogininforController.clean()', 'DELETE', 1, 'admin', NULL, '/rest/monitor/logininfor/clean', '113.132.11.170', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 15:24:12');
INSERT INTO `sys_oper_log` VALUES (3, '登陆日志', 9, 'com.data.project.monitor.controller.SysLogininforController.clean()', 'DELETE', 1, 'admin', NULL, '/rest/monitor/logininfor/clean', '113.132.11.170', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 15:34:56');
INSERT INTO `sys_oper_log` VALUES (4, '字典类型', 1, 'com.data.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/type', '113.132.11.170', 'XX XX', '{\"params\":{},\"dictType\":\"data_type\",\"createBy\":\"admin\",\"dictName\":\"数据类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:41:48');
INSERT INTO `sys_oper_log` VALUES (5, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"BIGINT\",\"dictSort\":0,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"BIGINT\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:42:07');
INSERT INTO `sys_oper_log` VALUES (6, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"BOOLEAN\",\"dictSort\":1,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"BOOLEAN\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:42:22');
INSERT INTO `sys_oper_log` VALUES (7, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"CHAR\",\"dictSort\":3,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"CHAR\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:42:36');
INSERT INTO `sys_oper_log` VALUES (8, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"DATE\",\"dictSort\":4,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"DATE\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:42:51');
INSERT INTO `sys_oper_log` VALUES (9, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"DATETIME\",\"dictSort\":5,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"DATETIME\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:43:02');
INSERT INTO `sys_oper_log` VALUES (10, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"DECIMAL\",\"dictSort\":6,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"DECIMAL\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:43:16');
INSERT INTO `sys_oper_log` VALUES (11, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"DOUBLE\",\"dictSort\":7,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"DOUBLE\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:43:28');
INSERT INTO `sys_oper_log` VALUES (12, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"FLOAT\",\"dictSort\":9,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"FLOAT\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:43:39');
INSERT INTO `sys_oper_log` VALUES (13, '字典数据', 2, 'com.data.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"FLOAT\",\"dictSort\":8,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"FLOAT\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1597830219000,\"dictCode\":122,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:43:49');
INSERT INTO `sys_oper_log` VALUES (14, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"INT\",\"dictSort\":9,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"INT\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:43:59');
INSERT INTO `sys_oper_log` VALUES (15, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"LARGEINT\",\"dictSort\":10,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"LARGEINT\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:44:12');
INSERT INTO `sys_oper_log` VALUES (16, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"SMALLINT\",\"dictSort\":11,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"SMALLINT\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:44:26');
INSERT INTO `sys_oper_log` VALUES (17, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"TINYINT\",\"dictSort\":12,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"TINYINT\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:44:40');
INSERT INTO `sys_oper_log` VALUES (18, '字典数据', 1, 'com.data.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/rest/system/dict/data', '113.132.11.170', 'XX XX', '{\"dictValue\":\"VARCHAR\",\"dictSort\":13,\"params\":{},\"dictType\":\"data_type\",\"dictLabel\":\"VARCHAR\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 17:44:52');
INSERT INTO `sys_oper_log` VALUES (19, '菜单管理', 2, 'com.data.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/rest/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"database\",\"orderNum\":\"2\",\"menuName\":\"数仓管理\",\"params\":{},\"parentId\":2022,\"path\":\"data-manager\",\"component\":\"data/capacity/index\",\"children\":[],\"createTime\":1597043658000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2029,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 19:21:25');
INSERT INTO `sys_oper_log` VALUES (20, '菜单管理', 2, 'com.data.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/rest/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"add_partition\",\"orderNum\":\"1\",\"menuName\":\"分区管理\",\"params\":{},\"parentId\":2022,\"path\":\"partition\",\"component\":\"data/partitions/index\",\"children\":[],\"createTime\":1597043519000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2027,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-19 19:22:50');
INSERT INTO `sys_oper_log` VALUES (21, '菜单管理', 1, 'com.data.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/rest/system/menu', '113.132.8.90', 'XX XX', '{\"visible\":\"0\",\"icon\":\"pf_monitor\",\"orderNum\":\"5\",\"menuName\":\"视图状态管理\",\"params\":{},\"parentId\":2022,\"path\":\"view_status\",\"component\":\"data/view_status/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-23 11:10:25');
INSERT INTO `sys_oper_log` VALUES (22, '菜单管理', 2, 'com.data.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/rest/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"view\",\"orderNum\":\"4\",\"menuName\":\"物化视图管理\",\"params\":{},\"parentId\":2022,\"path\":\"mvview\",\"component\":\"data/mvview/index\",\"children\":[],\"createTime\":1597043457000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2026,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-08-24 10:38:40');
INSERT INTO `sys_oper_log` VALUES (23, '用户头像', 2, 'com.data.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/rest/system/user/profile/avatar', '127.0.0.1', '内网IP', '', 'null', 1, 'java.io.FileNotFoundException: C:\\Users\\zhang\\AppData\\Local\\Temp\\tomcat.5498916628455060266.30001\\work\\Tomcat\\localhost\\ROOT\\soft\\dataplateform\\upload\\avatar\\2020\\09\\01\\85f803456f38b22f533ae60c6a7e6e86.jpeg (系统找不到指定的路径。)', '2020-09-01 11:22:44');
INSERT INTO `sys_oper_log` VALUES (24, '个人信息', 2, 'com.data.project.system.controller.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/rest/system/user/profile/updatePwd', '127.0.0.1', '内网IP', 'zhangfeng zhangfeng', '{\"msg\":\"新密码不能与旧密码相同\",\"code\":500}', 0, NULL, '2020-09-01 11:23:08');
INSERT INTO `sys_oper_log` VALUES (25, '个人信息', 2, 'com.data.project.system.controller.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/rest/system/user/profile/updatePwd', '127.0.0.1', '内网IP', 'zhangfeng zhangfeng1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-09-01 11:28:36');
INSERT INTO `sys_oper_log` VALUES (26, '个人信息', 2, 'com.data.project.system.controller.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/rest/system/user/profile/updatePwd', '127.0.0.1', '内网IP', 'zhangfeng1 zhangfeng', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-09-01 11:28:48');
INSERT INTO `sys_oper_log` VALUES (27, '个人信息', 2, 'com.data.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/rest/system/user/profile', '117.36.119.62', 'XX XX', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"系统管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1598931180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$92ngqc1P014Rc02rM3nld.AYF/l7fbNkY9OtOi0rzvc/ER58.yI5y\",\"loginIp\":\"127.0.0.1\",\"email\":\"zhangjf1@gmail.com\",\"nickName\":\"系统管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"/profile/avatar/2020/08/13/c5476b6dcd69dbcfd748d4191ef283b7.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-09-01 11:43:29');
INSERT INTO `sys_oper_log` VALUES (28, '用户头像', 2, 'com.data.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/rest/system/user/profile/avatar', '117.36.119.62', 'XX XX', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/09/01/6602808ec738a9003a3a0e48d2e09eda.jpeg\",\"code\":200}', 0, NULL, '2020-09-01 11:43:48');
INSERT INTO `sys_oper_log` VALUES (29, '用户管理', 1, 'com.data.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/rest/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13677777777\",\"admin\":false,\"remark\":\"没有备注\",\"password\":\"$2a$10$GouWbubZWG03eENtLF4PT.CQ5yYAEm8TesdlWnDf5DlvuGshjySxC\",\"postIds\":[],\"email\":\"41108453@qq.com\",\"nickName\":\"测试员\",\"sex\":\"0\",\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-09-04 11:17:40');
INSERT INTO `sys_oper_log` VALUES (30, '用户管理', 2, 'com.data.project.system.controller.SysUserController.changeStatus()', 'PUT', 1, 'admin', NULL, '/rest/system/user/changeStatus', '125.76.212.94', 'XX XX', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"userId\":100,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-09-04 13:00:00');
INSERT INTO `sys_oper_log` VALUES (31, '用户管理', 2, 'com.data.project.system.controller.SysUserController.changeStatus()', 'PUT', 1, 'admin', NULL, '/rest/system/user/changeStatus', '125.76.212.94', 'XX XX', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"userId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-09-04 13:00:03');
INSERT INTO `sys_oper_log` VALUES (32, '用户管理', 2, 'com.data.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/rest/system/user', '185.152.67.14', 'XX XX', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"系统管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1598931180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"zhangjf1@gmail.com\",\"nickName\":\"系统管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"/profile/avatar/2020/09/01/6602808ec738a9003a3a0e48d2e09eda.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[],\"createTime\":1598931180000,\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员用户', '2020-09-05 09:22:30');
INSERT INTO `sys_oper_log` VALUES (33, '个人信息', 2, 'com.oceanus.system.system.controller.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/rest/system/user/profile/updatePwd', '127.0.0.1', '内网IP', 'zhangfeng 123456', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-24 13:08:38');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '系统管理员', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '系统管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理员');
INSERT INTO `sys_role` VALUES (2, '通用角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通用角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '系统管理员', '00', 'zhangjf1@gmail.com', '15888888888', '0', '/profile/avatar/2020/09/01/6602808ec738a9003a3a0e48d2e09eda.jpeg', '$2a$10$V0BzVEKiUnWRM2lam9/Pp.SjNtb4zQ9gS3FbNVMZLHN22h4hdCvF2', '0', '0', '127.0.0.1', '2020-09-01 11:33:00', 'admin', '2020-09-01 11:33:00', 'ry', '2020-09-01 11:43:29', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'zhangfeng', '张家峰', '00', 'zhangjf1@gmail.com', '15666666666', '1', '', '$2a$10$92ngqc1P014Rc02rM3nld.AYF/l7fbNkY9OtOi0rzvc/ER58.yI5y', '0', '0', '127.0.0.1', '2020-09-01 11:33:00', 'admin', '2020-09-01 11:33:00', 'ry', '2020-09-01 11:33:00', '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, 'test', '测试员', '00', '41108453@qq.com', '13677777777', '0', '', '$2a$10$GouWbubZWG03eENtLF4PT.CQ5yYAEm8TesdlWnDf5DlvuGshjySxC', '0', '0', '', NULL, 'admin', '2020-09-04 11:17:39', 'admin', '2020-09-04 13:00:03', '没有备注');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 2);

SET FOREIGN_KEY_CHECKS = 1;
