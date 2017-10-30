/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : BIGDATA-PAPRIKA
Source Server Version : 110200
Source Host           : 125.64.14.16:1521
Source Schema         : YOGURT

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-10-30 19:05:21
*/


-- ----------------------------
-- Table structure for P_POTATO_SHOW
-- ----------------------------
DROP TABLE "YOGURT"."P_POTATO_SHOW";
CREATE TABLE "YOGURT"."P_POTATO_SHOW" (
"PPS_ID" NUMBER NOT NULL ,
"PROVINCENAME" VARCHAR2(50 BYTE) NOT NULL ,
"CITYNAME" VARCHAR2(50 BYTE) NOT NULL ,
"COUNTYNAME" VARCHAR2(50 BYTE) NOT NULL ,
"DEVNAME" VARCHAR2(50 BYTE) NULL ,
"STARTDATE" DATE NULL ,
"SCCID" NUMBER NULL ,
"GENERATION" NUMBER NULL ,
"TIMES" NUMBER NULL ,
"LONGITUDE" NUMBER(12,2) NULL ,
"LATITUDE" NUMBER(12,2) NULL ,
"SCORE" NUMBER(10,2) NULL ,
"DEVID" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Indexes structure for table P_POTATO_SHOW
-- ----------------------------
CREATE INDEX "YOGURT"."I_POTATO_SHOW"
ON "YOGURT"."P_POTATO_SHOW" ("PPS_ID" ASC, "SCCID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table P_POTATO_SHOW
-- ----------------------------
ALTER TABLE "YOGURT"."P_POTATO_SHOW" ADD CHECK ("PPS_ID" IS NOT NULL);
ALTER TABLE "YOGURT"."P_POTATO_SHOW" ADD CHECK ("PROVINCENAME" IS NOT NULL);
ALTER TABLE "YOGURT"."P_POTATO_SHOW" ADD CHECK ("CITYNAME" IS NOT NULL);
ALTER TABLE "YOGURT"."P_POTATO_SHOW" ADD CHECK ("COUNTYNAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table P_POTATO_SHOW
-- ----------------------------
ALTER TABLE "YOGURT"."P_POTATO_SHOW" ADD PRIMARY KEY ("PPS_ID");
