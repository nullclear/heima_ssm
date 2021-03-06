/*
 Navicat Premium Data Transfer

 Source Server         : Oracle
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Schema         : ROOT

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 07/08/2020 22:40:39
*/


-- ----------------------------
-- Table structure for MEMBER
-- ----------------------------
DROP TABLE "ROOT"."MEMBER";
CREATE TABLE "ROOT"."MEMBER" (
  "ID" VARCHAR2(32 BYTE) DEFAULT SYS_GUID()  NOT NULL,
  "NAME" VARCHAR2(20 BYTE),
  "NICKNAME" VARCHAR2(20 BYTE),
  "PHONENUM" VARCHAR2(20 BYTE),
  "EMAIL" VARCHAR2(20 BYTE)
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MEMBER
-- ----------------------------
INSERT INTO "ROOT"."MEMBER" VALUES ('E61D65F673D54F68B0861025C69773DB', '张三', '小三', '18888888888', 'zs@163.com');

-- ----------------------------
-- Table structure for ORDERS
-- ----------------------------
DROP TABLE "ROOT"."ORDERS";
CREATE TABLE "ROOT"."ORDERS" (
  "ID" VARCHAR2(32 BYTE) DEFAULT SYS_GUID()  NOT NULL,
  "ORDERNUM" VARCHAR2(20 BYTE) NOT NULL,
  "ORDERTIME" TIMESTAMP(6),
  "PEOPLECOUNT" NUMBER,
  "ORDERDESC" VARCHAR2(500 BYTE),
  "PAYTYPE" NUMBER,
  "ORDERSTATUS" NUMBER,
  "PRODUCTID" VARCHAR2(32 BYTE),
  "MEMBERID" VARCHAR2(32 BYTE)
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ORDERS
-- ----------------------------
INSERT INTO "ROOT"."ORDERS" VALUES ('0E7231DC797C486290E8713CA3C6ECCC', '12345', TO_TIMESTAMP('2018-03-02 12:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '2', '没什么', '0', '1', '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO "ROOT"."ORDERS" VALUES ('5DC6A48DD4E94592AE904930EA866AFA', '54321', TO_TIMESTAMP('2018-03-02 12:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '2', '没什么', '0', '1', '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO "ROOT"."ORDERS" VALUES ('2FF351C4AC744E2092DCF08CFD314420', '67890', TO_TIMESTAMP('2018-03-02 12:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO "ROOT"."ORDERS" VALUES ('A0657832D93E4B10AE88A2D4B70B1A28', '98765', TO_TIMESTAMP('2018-03-02 12:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO "ROOT"."ORDERS" VALUES ('E4DD4C45EED84870ABA83574A801083E', '11111', TO_TIMESTAMP('2018-03-02 12:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO "ROOT"."ORDERS" VALUES ('96CC8BD43C734CC2ACBFF09501B4DD5D', '22222', TO_TIMESTAMP('2018-03-02 12:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO "ROOT"."ORDERS" VALUES ('55F9AF582D5A4DB28FB4EC3199385762', '33333', TO_TIMESTAMP('2018-03-02 12:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO "ROOT"."ORDERS" VALUES ('CA005CF1BE3C4EF68F88ABC7DF30E976', '44444', TO_TIMESTAMP('2018-03-02 12:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO "ROOT"."ORDERS" VALUES ('3081770BC3984EF092D9E99760FDABDE', '55555', TO_TIMESTAMP('2018-03-02 12:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');

-- ----------------------------
-- Table structure for ORDER_TRAVELLER
-- ----------------------------
DROP TABLE "ROOT"."ORDER_TRAVELLER";
CREATE TABLE "ROOT"."ORDER_TRAVELLER" (
  "ORDERID" VARCHAR2(32 BYTE) NOT NULL,
  "TRAVELLERID" VARCHAR2(32 BYTE) NOT NULL
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ORDER_TRAVELLER
-- ----------------------------
INSERT INTO "ROOT"."ORDER_TRAVELLER" VALUES ('0E7231DC797C486290E8713CA3C6ECCC', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO "ROOT"."ORDER_TRAVELLER" VALUES ('2FF351C4AC744E2092DCF08CFD314420', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO "ROOT"."ORDER_TRAVELLER" VALUES ('3081770BC3984EF092D9E99760FDABDE', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO "ROOT"."ORDER_TRAVELLER" VALUES ('55F9AF582D5A4DB28FB4EC3199385762', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO "ROOT"."ORDER_TRAVELLER" VALUES ('5DC6A48DD4E94592AE904930EA866AFA', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO "ROOT"."ORDER_TRAVELLER" VALUES ('96CC8BD43C734CC2ACBFF09501B4DD5D', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO "ROOT"."ORDER_TRAVELLER" VALUES ('A0657832D93E4B10AE88A2D4B70B1A28', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO "ROOT"."ORDER_TRAVELLER" VALUES ('CA005CF1BE3C4EF68F88ABC7DF30E976', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO "ROOT"."ORDER_TRAVELLER" VALUES ('E4DD4C45EED84870ABA83574A801083E', 'EE7A71FB6945483FBF91543DBE851960');

-- ----------------------------
-- Table structure for PERMISSION
-- ----------------------------
DROP TABLE "ROOT"."PERMISSION";
CREATE TABLE "ROOT"."PERMISSION" (
  "ID" VARCHAR2(32 BYTE) DEFAULT SYS_GUID()  NOT NULL,
  "PERMISSIONNAME" VARCHAR2(50 BYTE),
  "URL" VARCHAR2(50 BYTE)
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PERMISSION
-- ----------------------------
INSERT INTO "ROOT"."PERMISSION" VALUES ('963B456A12464ADF8427E366928B07C7', 'user findAll', '/user/findAll.do');
INSERT INTO "ROOT"."PERMISSION" VALUES ('CF2B1B6034D74556BEF32D2643629297', 'user findById', '/user/findById.do');
INSERT INTO "ROOT"."PERMISSION" VALUES ('F97877E105814533B4E636909D95B5E3', 'role findAll', '/role/findAll.do');

-- ----------------------------
-- Table structure for PRODUCT
-- ----------------------------
DROP TABLE "ROOT"."PRODUCT";
CREATE TABLE "ROOT"."PRODUCT" (
  "ID" VARCHAR2(32 BYTE) DEFAULT SYS_GUID()  NOT NULL,
  "PRODUCTNUM" VARCHAR2(50 BYTE) NOT NULL,
  "PRODUCTNAME" VARCHAR2(50 BYTE),
  "CITYNAME" VARCHAR2(50 BYTE),
  "DEPARTURETIME" TIMESTAMP(6),
  "PRODUCTPRICE" NUMBER,
  "PRODUCTDESC" VARCHAR2(500 BYTE),
  "PRODUCTSTATUS" NUMBER
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PRODUCT
-- ----------------------------
INSERT INTO "ROOT"."PRODUCT" VALUES ('676C5BD1D35E429A8C2E114939C5685A', 'itcast-002', '北京三日游', '北京', TO_TIMESTAMP('2018-10-10 10:10:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1200', '不错的旅行', '1');
INSERT INTO "ROOT"."PRODUCT" VALUES ('12B7ABF2A4C544568B0A7C69F36BF8B7', 'itcast-003', '上海五日游', '上海', TO_TIMESTAMP('2018-04-25 14:30:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1800', '魔都我来了', '0');
INSERT INTO "ROOT"."PRODUCT" VALUES ('9F71F01CB448476DAFB309AA6DF9497F', 'itcast-001', '北京三日游', '北京', TO_TIMESTAMP('2018-10-10 10:10:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1200', '不错的旅行', '1');
INSERT INTO "ROOT"."PRODUCT" VALUES ('5BBC5D8398C24CC4B26A134DE4DB6156', 'itcat-1', '广州一日游', '上海', TO_TIMESTAMP('2020-03-18 00:15:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '888888', 'haixing', '1');
INSERT INTO "ROOT"."PRODUCT" VALUES ('5E1070DCEA7B4611BEFC2E3C3B1CE2C8', 'itcat-22222', '广州一日游', '上海', TO_TIMESTAMP('2020-03-06 01:50:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1111111', 'sssssss', '0');

-- ----------------------------
-- Table structure for ROLE
-- ----------------------------
DROP TABLE "ROOT"."ROLE";
CREATE TABLE "ROOT"."ROLE" (
  "ID" VARCHAR2(32 BYTE) DEFAULT SYS_GUID()  NOT NULL,
  "ROLENAME" VARCHAR2(50 BYTE),
  "ROLEDESC" VARCHAR2(50 BYTE)
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ROLE
-- ----------------------------
INSERT INTO "ROOT"."ROLE" VALUES ('1111', 'ADMIN', 'vip');
INSERT INTO "ROOT"."ROLE" VALUES ('2222', 'USER', 'user');
INSERT INTO "ROOT"."ROLE" VALUES ('127FF8D57513433E9EEAF557A947F0A5', 'guest', '测试账户');

-- ----------------------------
-- Table structure for ROLE_PERMISSION
-- ----------------------------
DROP TABLE "ROOT"."ROLE_PERMISSION";
CREATE TABLE "ROOT"."ROLE_PERMISSION" (
  "PERMISSIONID" VARCHAR2(32 BYTE) NOT NULL,
  "ROLEID" VARCHAR2(32 BYTE) NOT NULL
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ROLE_PERMISSION
-- ----------------------------
INSERT INTO "ROOT"."ROLE_PERMISSION" VALUES ('963B456A12464ADF8427E366928B07C7', '1111');
INSERT INTO "ROOT"."ROLE_PERMISSION" VALUES ('963B456A12464ADF8427E366928B07C7', '127FF8D57513433E9EEAF557A947F0A5');
INSERT INTO "ROOT"."ROLE_PERMISSION" VALUES ('963B456A12464ADF8427E366928B07C7', '2222');
INSERT INTO "ROOT"."ROLE_PERMISSION" VALUES ('CF2B1B6034D74556BEF32D2643629297', '1111');

-- ----------------------------
-- Table structure for SYSLOG
-- ----------------------------
DROP TABLE "ROOT"."SYSLOG";
CREATE TABLE "ROOT"."SYSLOG" (
  "ID" VARCHAR2(32 BYTE) DEFAULT SYS_GUID()  NOT NULL,
  "VISITTIME" TIMESTAMP(6),
  "USERNAME" VARCHAR2(50 BYTE),
  "IP" VARCHAR2(30 BYTE),
  "URL" VARCHAR2(50 BYTE),
  "EXECUTIONTIME" NUMBER,
  "METHOD" VARCHAR2(200 BYTE)
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SYSLOG
-- ----------------------------
INSERT INTO "ROOT"."SYSLOG" VALUES ('109408DD890A4E86BFA861233345405F', TO_TIMESTAMP('2020-04-07 03:03:18.250000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'tom', '0:0:0:0:0:0:0:1', '/orders/findAll.do', '129', '[类名] com.yxy.ssm.controller.OrdersController[方法名] findAll');
INSERT INTO "ROOT"."SYSLOG" VALUES ('03D35A635C7549DBA382F4C95995D53B', TO_TIMESTAMP('2020-04-07 03:03:20.652000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'tom', '0:0:0:0:0:0:0:1', '/orders/findById.do', '66', '[类名] com.yxy.ssm.controller.OrdersController[方法名] findById');
INSERT INTO "ROOT"."SYSLOG" VALUES ('82359A23BBDA4638B95FBCCF796FC81C', TO_TIMESTAMP('2020-04-07 03:08:57.562000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'tom', '0:0:0:0:0:0:0:1', '/user/findAll.do', '13', '[类名] com.yxy.ssm.controller.UserController[方法名] findAll');
INSERT INTO "ROOT"."SYSLOG" VALUES ('3219A1E4AAE448F6AA3D549D7B6E1769', TO_TIMESTAMP('2020-04-07 03:08:59.721000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'tom', '0:0:0:0:0:0:0:1', '/user/findById.do', '63', '[类名] com.yxy.ssm.controller.UserController[方法名] findById');
INSERT INTO "ROOT"."SYSLOG" VALUES ('EB6C478246604EEB82A67976D6C086AF', TO_TIMESTAMP('2020-04-07 03:11:32.186000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'tom', '0:0:0:0:0:0:0:1', '/user/findAll.do', '4', '[类名] com.yxy.ssm.controller.UserController[方法名] findAll');
INSERT INTO "ROOT"."SYSLOG" VALUES ('2A19BF0A739840F7881AB38976F7F313', TO_TIMESTAMP('2020-04-07 03:12:12.359000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'tom', '0:0:0:0:0:0:0:1', '/permission/findAll.do', '13', '[类名] com.yxy.ssm.controller.PermissionController[方法名] findAll');
INSERT INTO "ROOT"."SYSLOG" VALUES ('F0BC62668B3248ADB8AF14AC4E954955', TO_TIMESTAMP('2020-04-07 03:12:31.893000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'tom', '0:0:0:0:0:0:0:1', '/role/findAll.do', '13', '[类名] com.yxy.ssm.controller.RoleController[方法名] findAll');
INSERT INTO "ROOT"."SYSLOG" VALUES ('5B84A90F96C9476FA35C90ACD1C4EDF6', TO_TIMESTAMP('2020-04-07 03:12:38.651000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'tom', '0:0:0:0:0:0:0:1', '/role/findAll.do', '3', '[类名] com.yxy.ssm.controller.RoleController[方法名] findAll');

-- ----------------------------
-- Table structure for TRAVELLER
-- ----------------------------
DROP TABLE "ROOT"."TRAVELLER";
CREATE TABLE "ROOT"."TRAVELLER" (
  "ID" VARCHAR2(32 BYTE) DEFAULT SYS_GUID()  NOT NULL,
  "NAME" VARCHAR2(20 BYTE),
  "SEX" VARCHAR2(20 BYTE),
  "PHONENUM" VARCHAR2(20 BYTE),
  "CREDENTIALSTYPE" NUMBER,
  "CREDENTIALSNUM" VARCHAR2(50 BYTE),
  "TRAVELLERTYPE" NUMBER
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of TRAVELLER
-- ----------------------------
INSERT INTO "ROOT"."TRAVELLER" VALUES ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '张龙', '男', '13333333333', '0', '123456789009876543', '0');
INSERT INTO "ROOT"."TRAVELLER" VALUES ('EE7A71FB6945483FBF91543DBE851960', '张小龙', '男', '15555555555', '0', '987654321123456789', '1');

-- ----------------------------
-- Table structure for USERS
-- ----------------------------
DROP TABLE "ROOT"."USERS";
CREATE TABLE "ROOT"."USERS" (
  "ID" VARCHAR2(32 BYTE) DEFAULT SYS_GUID()  NOT NULL,
  "EMAIL" VARCHAR2(50 BYTE) NOT NULL,
  "USERNAME" VARCHAR2(50 BYTE),
  "PASSWORD" VARCHAR2(100 BYTE),
  "PHONENUM" VARCHAR2(20 BYTE),
  "STATUS" NUMBER
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USERS
-- ----------------------------
INSERT INTO "ROOT"."USERS" VALUES ('4D6BDA8FD68E413AAFF91FA1773BFA1D', 'fox@itcast', 'fox', '$2a$10$5BPoPPHQirD3Oi3WqDR4K.vh3imYIH13D4AQiN5A71WDF8OABsQ2m', '13455555', '1');
INSERT INTO "ROOT"."USERS" VALUES ('C28D9F0399CE49E58F6693432613821E', 'james@163.com', 'james', '$2a$10$yfuQm8YaVcFz0TZs.O7SDeVfV5Kel42Yfza9RbiYI4YCZJGrvtaAS', '122445566', '1');
INSERT INTO "ROOT"."USERS" VALUES ('111-222', 'tom@163.com', 'tom', '$2a$10$IVrWjlicVbv0Zl5LqQD7W.Z8PoMm6qosl.1nEVCC.FGT3WUFr1TfC', '133333', '1');

-- ----------------------------
-- Table structure for USERS_ROLE
-- ----------------------------
DROP TABLE "ROOT"."USERS_ROLE";
CREATE TABLE "ROOT"."USERS_ROLE" (
  "USERID" VARCHAR2(32 BYTE) NOT NULL,
  "ROLEID" VARCHAR2(32 BYTE) NOT NULL
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USERS_ROLE
-- ----------------------------
INSERT INTO "ROOT"."USERS_ROLE" VALUES ('111-222', '1111');
INSERT INTO "ROOT"."USERS_ROLE" VALUES ('111-222', '2222');
INSERT INTO "ROOT"."USERS_ROLE" VALUES ('4D6BDA8FD68E413AAFF91FA1773BFA1D', '1111');
INSERT INTO "ROOT"."USERS_ROLE" VALUES ('4D6BDA8FD68E413AAFF91FA1773BFA1D', '127FF8D57513433E9EEAF557A947F0A5');
INSERT INTO "ROOT"."USERS_ROLE" VALUES ('4D6BDA8FD68E413AAFF91FA1773BFA1D', '2222');
INSERT INTO "ROOT"."USERS_ROLE" VALUES ('C28D9F0399CE49E58F6693432613821E', '127FF8D57513433E9EEAF557A947F0A5');
INSERT INTO "ROOT"."USERS_ROLE" VALUES ('C28D9F0399CE49E58F6693432613821E', '2222');

-- ----------------------------
-- Primary Key structure for table MEMBER
-- ----------------------------
ALTER TABLE "ROOT"."MEMBER" ADD CONSTRAINT "SYS_C0011053" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table ORDERS
-- ----------------------------
ALTER TABLE "ROOT"."ORDERS" ADD CONSTRAINT "SYS_C0011055" PRIMARY KEY ("ID");

-- ----------------------------
-- Uniques structure for table ORDERS
-- ----------------------------
ALTER TABLE "ROOT"."ORDERS" ADD CONSTRAINT "SYS_C0011056" UNIQUE ("ORDERNUM") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table ORDERS
-- ----------------------------
ALTER TABLE "ROOT"."ORDERS" ADD CONSTRAINT "SYS_C0011054" CHECK ("ORDERNUM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ORDER_TRAVELLER
-- ----------------------------
ALTER TABLE "ROOT"."ORDER_TRAVELLER" ADD CONSTRAINT "SYS_C0011057" PRIMARY KEY ("ORDERID", "TRAVELLERID");

-- ----------------------------
-- Primary Key structure for table PERMISSION
-- ----------------------------
ALTER TABLE "ROOT"."PERMISSION" ADD CONSTRAINT "SYS_C0011058" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table PRODUCT
-- ----------------------------
ALTER TABLE "ROOT"."PRODUCT" ADD CONSTRAINT "SYS_C0011060" PRIMARY KEY ("ID");

-- ----------------------------
-- Uniques structure for table PRODUCT
-- ----------------------------
ALTER TABLE "ROOT"."PRODUCT" ADD CONSTRAINT "PRODUCT" UNIQUE ("ID", "PRODUCTNUM") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table PRODUCT
-- ----------------------------
ALTER TABLE "ROOT"."PRODUCT" ADD CONSTRAINT "SYS_C0011059" CHECK ("PRODUCTNUM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ROLE
-- ----------------------------
ALTER TABLE "ROOT"."ROLE" ADD CONSTRAINT "SYS_C0011062" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table ROLE_PERMISSION
-- ----------------------------
ALTER TABLE "ROOT"."ROLE_PERMISSION" ADD CONSTRAINT "SYS_C0011063" PRIMARY KEY ("PERMISSIONID", "ROLEID");

-- ----------------------------
-- Primary Key structure for table SYSLOG
-- ----------------------------
ALTER TABLE "ROOT"."SYSLOG" ADD CONSTRAINT "SYS_C0011064" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table TRAVELLER
-- ----------------------------
ALTER TABLE "ROOT"."TRAVELLER" ADD CONSTRAINT "SYS_C0011065" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table USERS
-- ----------------------------
ALTER TABLE "ROOT"."USERS" ADD CONSTRAINT "SYS_C0011067" PRIMARY KEY ("ID");

-- ----------------------------
-- Uniques structure for table USERS
-- ----------------------------
ALTER TABLE "ROOT"."USERS" ADD CONSTRAINT "SYS_C0011068" UNIQUE ("EMAIL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table USERS
-- ----------------------------
ALTER TABLE "ROOT"."USERS" ADD CONSTRAINT "SYS_C0011066" CHECK ("EMAIL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USERS_ROLE
-- ----------------------------
ALTER TABLE "ROOT"."USERS_ROLE" ADD CONSTRAINT "SYS_C0011069" PRIMARY KEY ("USERID", "ROLEID");

-- ----------------------------
-- Foreign Keys structure for table ORDERS
-- ----------------------------
ALTER TABLE "ROOT"."ORDERS" ADD CONSTRAINT "SYS_C0011070" FOREIGN KEY ("MEMBERID") REFERENCES "ROOT"."MEMBER" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ROOT"."ORDERS" ADD CONSTRAINT "SYS_C0011071" FOREIGN KEY ("PRODUCTID") REFERENCES "ROOT"."PRODUCT" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ORDER_TRAVELLER
-- ----------------------------
ALTER TABLE "ROOT"."ORDER_TRAVELLER" ADD CONSTRAINT "SYS_C0011072" FOREIGN KEY ("TRAVELLERID") REFERENCES "ROOT"."TRAVELLER" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ROOT"."ORDER_TRAVELLER" ADD CONSTRAINT "SYS_C0011073" FOREIGN KEY ("ORDERID") REFERENCES "ROOT"."ORDERS" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ROLE_PERMISSION
-- ----------------------------
ALTER TABLE "ROOT"."ROLE_PERMISSION" ADD CONSTRAINT "SYS_C0011074" FOREIGN KEY ("ROLEID") REFERENCES "ROOT"."ROLE" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ROOT"."ROLE_PERMISSION" ADD CONSTRAINT "SYS_C0011075" FOREIGN KEY ("PERMISSIONID") REFERENCES "ROOT"."PERMISSION" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USERS_ROLE
-- ----------------------------
ALTER TABLE "ROOT"."USERS_ROLE" ADD CONSTRAINT "SYS_C0011076" FOREIGN KEY ("ROLEID") REFERENCES "ROOT"."ROLE" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ROOT"."USERS_ROLE" ADD CONSTRAINT "SYS_C0011077" FOREIGN KEY ("USERID") REFERENCES "ROOT"."USERS" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
