-- ----------------------------
--  Table : stocks_types
-- ----------------------------
DROP TABLE IF EXISTS "bootcamp"."stocks_types";
CREATE TABLE "bootcamp"."stocks_types" (
	"type_id" int4 NOT NULL,
	"type_code" varchar(10) NOT NULL COLLATE "default",
	"type_name" varchar(255) NOT NULL COLLATE "default"
)
WITH (OIDS=FALSE);

-- ----------------------------
--  Records of stocks_types
-- ----------------------------
BEGIN;
INSERT INTO "bootcamp"."stocks_types" VALUES ('1','EQS','Stock');
INSERT INTO "bootcamp"."stocks_types" VALUES ('2','ETF','Exchange Traded Fund');
COMMIT;

-- ----------------------------
--  Primary key structure for table stocks_types
-- ----------------------------
ALTER TABLE "bootcamp"."stocks_types" ADD PRIMARY KEY ("type_id") NOT DEFERRABLE INITIALLY IMMEDIATE;
