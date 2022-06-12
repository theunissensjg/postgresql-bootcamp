-- ----------------------------
--  Table: Customers
-- ----------------------------
DROP TABLE IF EXISTS "bootcamp"."customers";
CREATE TABLE "bootcamp"."customers" (
	"customer_id" int4 NOT NULL,
	"first_name" varchar(100) COLLATE "default",
	"last_name" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);

-- ----------------------------
--  Sample customers records
-- ----------------------------
BEGIN;
INSERT INTO "bootcamp"."customers" VALUES ('1', 'John', 'Doe');
INSERT INTO "bootcamp"."customers" VALUES ('2', 'Jeff', 'Smith');
INSERT INTO "bootcamp"."customers" VALUES ('3', 'Mike', 'Steel');
INSERT INTO "bootcamp"."customers" VALUES ('4', 'Mark', 'Benjamin');
INSERT INTO "bootcamp"."customers" VALUES ('5', 'Hannah', 'Rose');
COMMIT;

-- ----------------------------
--  Primary key for table : customers
-- ----------------------------
ALTER TABLE "bootcamp"."customers" ADD PRIMARY KEY ("customer_id") NOT DEFERRABLE INITIALLY IMMEDIATE;
