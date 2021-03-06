﻿/*
 Navicat MySQL Data Transfer

 Source Server         : 10.253.192.15-sy-test
 Source Server Type    : MySQL
 Source Server Version : 50642
 Source Host           : 10.253.192.15:3306
 Source Schema         : msg_push

 Target Server Type    : MySQL
 Target Server Version : 50642
 File Encoding         : 65001

 Date: 05/05/2019 09:49:58
*/
CREATE database msg_push;
use msg_push;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for msg_push_activity
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_activity`;
CREATE TABLE `msg_push_activity`  (
  `activity_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动编号',
  `activity_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `activity_initiate_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动发起人',
  `activity_rule_id` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动规则编号',
  `reward_content` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '奖励内容',
  `reward_receive_method_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '奖励领取方式编号',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '活动起始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '活动截止时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `update_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `isEnable` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用',
  `isVerified` tinyint(1) NULL DEFAULT NULL COMMENT '是否完成审核'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '活动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_activity_extend_way
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_activity_extend_way`;
CREATE TABLE `msg_push_activity_extend_way`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主键',
  `activity_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动编号',
  `extend_way_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '推广途径编号',
  `create_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人员',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `update_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人员',
  `isEnable` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用',
  `isVeritified` tinyint(1) NULL DEFAULT NULL COMMENT '是否完成审核'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '活动推广途径关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_activity_extend_way_record
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_activity_extend_way_record`;
CREATE TABLE `msg_push_activity_extend_way_record`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主键',
  `user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `extend_way_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动推广途径编号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户活动推广途径历史记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_activity_extend_way_veritify_record
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_activity_extend_way_veritify_record`;
CREATE TABLE `msg_push_activity_extend_way_veritify_record`  (
  `activity_extend_way_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '推广活动途径编号',
  `verfitied_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `update_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '活动推广途径审核记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_activity_rule
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_activity_rule`;
CREATE TABLE `msg_push_activity_rule`  (
  `activity_rule_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动规则编号',
  `activity_rule_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动规则名称',
  `create_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `isEnable` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '活动规则表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_extend_way
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_extend_way`;
CREATE TABLE `msg_push_extend_way`  (
  `extend_way_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '推广途径编号',
  `extend_way_name` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '推广途径名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `isEnable` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否禁用'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '推广途径字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_membership_level
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_membership_level`;
CREATE TABLE `msg_push_membership_level`  (
  `membership_level_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员等级编号',
  `membership_level_name` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员等级名称',
  `recharge_amount` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '需要累计充值金额',
  `create_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `isEnable` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员等级表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_membership_level_msgcount_relationship
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_membership_level_msgcount_relationship`;
CREATE TABLE `msg_push_membership_level_msgcount_relationship`  (
  `membership_level_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员等级编号',
  `max_push_msg_count` int(11) NULL DEFAULT NULL COMMENT '允许推送消息条数',
  `create_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `isEnable` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员等级消息数关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_product_base
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_product_base`;
CREATE TABLE `msg_push_product_base`  (
  `product_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '品类编号',
  `product_name` char(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '品类名称',
  `product_place_info` char(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '品类信息',
  `product_introduce_info` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '品类介绍信息',
  `product_introduce_url` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '品类介绍url',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `isEnable` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '品类基础信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_product_extend
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_product_extend`;
CREATE TABLE `msg_push_product_extend`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主键',
  `product_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '品类编号',
  `activity_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动编号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `operator_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `isEnable` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '品类活动关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_recharge_record`;
CREATE TABLE `msg_push_recharge_record`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主键',
  `user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `recharge_count` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '充值金额',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户充值历史记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_resource
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_resource`;
CREATE TABLE `msg_push_resource`  (
  `msg_push_resource_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源编号',
  `msg_push_resource_name` char(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `msg_push_resource_type` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源类型',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `isEnable` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资源表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_reward_user
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_reward_user`;
CREATE TABLE `msg_push_reward_user`  (
  `id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主键',
  `user_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `extend_way_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动推广途径编号',
  `create_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户活动推广奖励记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_role
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_role`;
CREATE TABLE `msg_push_role`  (
  `msg_push_role_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色编号',
  `msg_push_role_name` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `create_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_role_resource_relationship
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_role_resource_relationship`;
CREATE TABLE `msg_push_role_resource_relationship`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主键',
  `msg_push_role_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色编号',
  `msg_push_resource_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源编号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `create_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `isEnable` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色资源关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_user
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_user`;
CREATE TABLE `msg_push_user`  (
  `user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `user_name` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `user_pwd` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `phone_num` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `user_sex` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别',
  `user_email` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `isDelete` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_user_membership_relationship
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_user_membership_relationship`;
CREATE TABLE `msg_push_user_membership_relationship`  (
  `user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `membership_level_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员等级编号',
  `recharge_amount_total` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '累计充值金额',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户会员关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_user_role_relationship
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_user_role_relationship`;
CREATE TABLE `msg_push_user_role_relationship`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主键',
  `msg_push_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `msg_push_role_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色编号',
  `create_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `isEnable` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_user_wx_relationship
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_user_wx_relationship`;
CREATE TABLE `msg_push_user_wx_relationship`  (
  `user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `openId` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户openId',
  `msg_push_user_nick` char(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信昵称',
  `msg_push_head_url` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信头像url',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户账号微信关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for msg_push_verified_record
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_verified_record`;
CREATE TABLE `msg_push_verified_record`  (
  `activity_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动编号',
  `verified_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `update_user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '活动审核记录表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;





INSERT INTO `msg_push_user` VALUES ('1', 'zx', '123456', '13161372951', '女', '1163003193', '2019-5-9 22:24:11', '2019-5-9 22:24:14', 1);
INSERT INTO `msg_push_user` VALUES ('2', 'zyx', '123456', '15653693446', '男', '1163003193', '2019-5-9 22:25:37', '2019-5-9 22:25:40', 1);
INSERT INTO `msg_push_role` VALUES ('1', 'administrators', '1', '2019-5-9 22:26:06', '2019-5-9 22:26:09');
INSERT INTO `msg_push_role` VALUES ('2', 'ordinaryMember', '2', '2019-5-9 22:28:05', '2019-5-9 22:28:08');

























