--------------------------------------------------------
--  File created - السبت-سبتمبر-22-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CFG_TARGET_CUSTOMERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CFG_TARGET_CUSTOMERS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence CFG_TARGET_SECTIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CFG_TARGET_SECTIONS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence LKB_CUSTOMERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_CUSTOMERS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence LKB_CUST_SECTIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_CUST_SECTIONS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence LKB_ITEMS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_ITEMS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence LKB_ITEM_UNITS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_ITEM_UNITS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence LKB_JOB_TITLES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_JOB_TITLES_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence LKB_MANUFACTURERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_MANUFACTURERS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence LKB_REPS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_REPS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence LKB_SUPPLIERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_SUPPLIERS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence TRX_DAILY_SALES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TRX_DAILY_SALES_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence TRX_INVENTORIES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TRX_INVENTORIES_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Table CFG_ITEM_UNITS_MIN
--------------------------------------------------------

  CREATE TABLE "CFG_ITEM_UNITS_MIN" 
   (	"ITEM_ID" NUMBER, 
	"UNIT_ID" NUMBER, 
	"MIN_QUANT" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table CFG_TARGET
--------------------------------------------------------

  CREATE TABLE "CFG_TARGET" 
   (	"TRX_ID" NUMBER, 
	"TRX_DATE" DATE DEFAULT SYSDATE, 
	"TRG_YEAR" NUMBER, 
	"TRG_MONTH" NUMBER, 
	"ITEM_ID" NUMBER, 
	"UNIT_ID" NUMBER, 
	"REP_ID" NUMBER, 
	"TRG_QUANTITY" NUMBER, 
	"TRG_AMOUNT" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table CFG_TARGET_CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "CFG_TARGET_CUSTOMERS" 
   (	"TARGET_CUST_ID" NUMBER, 
	"TARGET_SEC_ID" NUMBER, 
	"CUSTOMER_ID" NUMBER, 
	"NOTES" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table CFG_TARGET_SECTIONS
--------------------------------------------------------

  CREATE TABLE "CFG_TARGET_SECTIONS" 
   (	"TRG_SEC_ID" NUMBER, 
	"TARGET_ID" NUMBER, 
	"SECTION_ID" NUMBER, 
	"NOTES" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table LKB_CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "LKB_CUSTOMERS" 
   (	"CUSTOMER_ID" NUMBER, 
	"CUSTOMER_CODE" VARCHAR2(100), 
	"CUSTOMER_NAME" VARCHAR2(200), 
	"SECTION_ID" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table LKB_CUST_SECTIONS
--------------------------------------------------------

  CREATE TABLE "LKB_CUST_SECTIONS" 
   (	"SECTION_ID" NUMBER, 
	"SECTION_CODE" VARCHAR2(100), 
	"SECTION_NAME" VARCHAR2(200), 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table LKB_ITEMS
--------------------------------------------------------

  CREATE TABLE "LKB_ITEMS" 
   (	"ITEM_ID" NUMBER, 
	"ITEM_CODE" VARCHAR2(100), 
	"ITEM_NAME" VARCHAR2(200), 
	"MANUFACTURE_ID" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table LKB_JOB_TITLES
--------------------------------------------------------

  CREATE TABLE "LKB_JOB_TITLES" 
   (	"TITLE_ID" NUMBER, 
	"TITLE_CODE" VARCHAR2(100), 
	"TITLE_NAME" VARCHAR2(200), 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table LKB_MANUFACTURERS
--------------------------------------------------------

  CREATE TABLE "LKB_MANUFACTURERS" 
   (	"MNF_ID" NUMBER, 
	"MNF_CODE" VARCHAR2(100), 
	"MNF_NAME" VARCHAR2(200), 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table LKB_REPS
--------------------------------------------------------

  CREATE TABLE "LKB_REPS" 
   (	"REP_ID" NUMBER, 
	"REP_CODE" VARCHAR2(500), 
	"REP_NAME" VARCHAR2(2000), 
	"REP_TITLE_ID" NUMBER, 
	"MANAGER_ID" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table LKB_SUPPLIERS
--------------------------------------------------------

  CREATE TABLE "LKB_SUPPLIERS" 
   (	"SUPPLIER_ID" NUMBER, 
	"SUPPLIER_CODE" VARCHAR2(100), 
	"SUPPLIER_NAME" VARCHAR2(200), 
	"MANUFACTURE_ID" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table LKB_UNITS
--------------------------------------------------------

  CREATE TABLE "LKB_UNITS" 
   (	"UNIT_ID" NUMBER, 
	"UNIT_CODE" VARCHAR2(100), 
	"UNIT_NAME" VARCHAR2(200), 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table RTN_ITEMS_SUPPLIERS
--------------------------------------------------------

  CREATE TABLE "RTN_ITEMS_SUPPLIERS" 
   (	"ITEM_ID" NUMBER, 
	"SUPPLIER_ID" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table RTN_ITEMS_UNITS
--------------------------------------------------------

  CREATE TABLE "RTN_ITEMS_UNITS" 
   (	"ITEM_ID" NUMBER, 
	"UNIT_ID" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500), 
	"SALES_PRICE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table RTN_REPS_CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "RTN_REPS_CUSTOMERS" 
   (	"REP_ID" NUMBER, 
	"CUSTOMER_ID" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table RTN_REPS_ITEMS
--------------------------------------------------------

  CREATE TABLE "RTN_REPS_ITEMS" 
   (	"REP_ID" NUMBER, 
	"ITEM_ID" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table TRX_DAILY_SALES
--------------------------------------------------------

  CREATE TABLE "TRX_DAILY_SALES" 
   (	"TRX_ID" NUMBER, 
	"TRX_CODE" VARCHAR2(100), 
	"TRX_DATE" DATE DEFAULT SYSDATE, 
	"TRX_TYPE" NUMBER DEFAULT 2, 
	"CUSTOMER_ID" NUMBER, 
	"ITEM_ID" NUMBER, 
	"UNIT_ID" NUMBER, 
	"PRICE" NUMBER, 
	"QUANTITY" NUMBER, 
	"AMOUNT" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;

   COMMENT ON COLUMN "TRX_DAILY_SALES"."TRX_CODE" IS 'Invoice number (by owner)';
   COMMENT ON COLUMN "TRX_DAILY_SALES"."TRX_TYPE" IS '1= Due Opening balance, 2=Invoice';
--------------------------------------------------------
--  DDL for Table TRX_INVENTORIES
--------------------------------------------------------

  CREATE TABLE "TRX_INVENTORIES" 
   (	"TRX_ID" NUMBER, 
	"TRX_CODE" VARCHAR2(100), 
	"TRX_DATE" DATE DEFAULT SYSDATE, 
	"TRX_TYPE" NUMBER DEFAULT 2, 
	"ITEM_ID" NUMBER, 
	"UNIT_ID" NUMBER, 
	"QUANTITY_IN" NUMBER, 
	"QUANTITY_OUT" NUMBER, 
	"SALES_ID" NUMBER, 
	"INVENTORY_NOTES" VARCHAR2(4000), 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500)
   ) ;

   COMMENT ON COLUMN "TRX_INVENTORIES"."TRX_TYPE" IS '1= Opening balance, 2=Invoice';
   COMMENT ON COLUMN "TRX_INVENTORIES"."SALES_ID" IS 'The invoice number ';
--------------------------------------------------------
--  DDL for View ITEMS_MIN_ALARM
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "ITEMS_MIN_ALARM" ("ITEM_ID", "ITEM_NAME", "UNIT_ID", "UNIT_NAME", "MIN_QUANT", "BALANCE") AS 
  SELECT "ITEM_ID","ITEM_NAME","UNIT_ID","UNIT_NAME","MIN_QUANT","BALANCE"
  FROM (SELECT M.ITEM_ID,
               I.ITEM_NAME,
               M.UNIT_ID,
               U.UNIT_NAME,
               M.MIN_QUANT,
               (SELECT SUM (N.QUANTITY_IN) - SUM (N.QUANTITY_OUT)
                  FROM TRX_INVENTORIES N
                 WHERE N.ITEM_ID = M.ITEM_ID AND N.UNIT_ID = M.UNIT_ID)
                  BALANCE
          FROM CFG_ITEM_UNITS_MIN M, LKB_ITEMS I, LKB_UNITS U
         WHERE M.ITEM_ID = I.ITEM_ID AND M.UNIT_ID = U.UNIT_ID)
 WHERE BALANCE < MIN_QUANT;
REM INSERTING into CFG_ITEM_UNITS_MIN
SET DEFINE OFF;
REM INSERTING into CFG_TARGET
SET DEFINE OFF;
REM INSERTING into CFG_TARGET_CUSTOMERS
SET DEFINE OFF;
REM INSERTING into CFG_TARGET_SECTIONS
SET DEFINE OFF;
REM INSERTING into LKB_CUSTOMERS
SET DEFINE OFF;
REM INSERTING into LKB_CUST_SECTIONS
SET DEFINE OFF;
Insert into LKB_CUST_SECTIONS (SECTION_ID,SECTION_CODE,SECTION_NAME,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (1,'SEC-001','Pharmacies',to_timestamp('22-SEP-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_CUST_SECTIONS (SECTION_ID,SECTION_CODE,SECTION_NAME,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (2,'SEC-002','Large Animals',to_timestamp('22-SEP-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into LKB_ITEMS
SET DEFINE OFF;
REM INSERTING into LKB_JOB_TITLES
SET DEFINE OFF;
REM INSERTING into LKB_MANUFACTURERS
SET DEFINE OFF;
REM INSERTING into LKB_REPS
SET DEFINE OFF;
REM INSERTING into LKB_SUPPLIERS
SET DEFINE OFF;
REM INSERTING into LKB_UNITS
SET DEFINE OFF;
REM INSERTING into RTN_ITEMS_SUPPLIERS
SET DEFINE OFF;
REM INSERTING into RTN_ITEMS_UNITS
SET DEFINE OFF;
REM INSERTING into RTN_REPS_CUSTOMERS
SET DEFINE OFF;
REM INSERTING into RTN_REPS_ITEMS
SET DEFINE OFF;
REM INSERTING into TRX_DAILY_SALES
SET DEFINE OFF;
REM INSERTING into TRX_INVENTORIES
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index CFG_TARGET_SECTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_TARGET_SECTIONS_PK" ON "CFG_TARGET_SECTIONS" ("TRG_SEC_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_JOB_TITLES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_JOB_TITLES_PK" ON "LKB_JOB_TITLES" ("TITLE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_PROD_UNITS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_PROD_UNITS_PK" ON "LKB_UNITS" ("UNIT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_PROD_UNITS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_PROD_UNITS_U01" ON "LKB_UNITS" ("UNIT_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index RTN_ITEMS_UNITS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RTN_ITEMS_UNITS_PK" ON "RTN_ITEMS_UNITS" ("ITEM_ID", "UNIT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_TARGET_SECTIONS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_TARGET_SECTIONS_U01" ON "CFG_TARGET_SECTIONS" ("TARGET_ID", "SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_ITEMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_ITEMS_PK" ON "LKB_ITEMS" ("ITEM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_TARGET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_TARGET_PK" ON "CFG_TARGET" ("TRX_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RTN_REPS_CUSTOMERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RTN_REPS_CUSTOMERS_PK" ON "RTN_REPS_CUSTOMERS" ("REP_ID", "CUSTOMER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_REPS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_REPS_U01" ON "LKB_REPS" ("REP_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_CUST_SECTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_CUST_SECTIONS_PK" ON "LKB_CUST_SECTIONS" ("SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_SUPPLIERS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_SUPPLIERS_U01" ON "LKB_SUPPLIERS" ("SUPPLIER_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_CUST_SECTIONS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_CUST_SECTIONS_U01" ON "LKB_CUST_SECTIONS" ("SECTION_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_CUSTOMERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_CUSTOMERS_PK" ON "LKB_CUSTOMERS" ("CUSTOMER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TRX_DAILY_SALES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TRX_DAILY_SALES_PK" ON "TRX_DAILY_SALES" ("TRX_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_SUPPLIERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_SUPPLIERS_PK" ON "LKB_SUPPLIERS" ("SUPPLIER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RTN_REPS_ITEMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RTN_REPS_ITEMS_PK" ON "RTN_REPS_ITEMS" ("REP_ID", "ITEM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_REPS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_REPS_PK" ON "LKB_REPS" ("REP_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RTN_ITEM_SUPPLIERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RTN_ITEM_SUPPLIERS_PK" ON "RTN_ITEMS_SUPPLIERS" ("ITEM_ID", "SUPPLIER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_TARGET_CUSTOMERS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_TARGET_CUSTOMERS_U01" ON "CFG_TARGET_CUSTOMERS" ("TARGET_SEC_ID", "CUSTOMER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TRX_INVENTORIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TRX_INVENTORIES_PK" ON "TRX_INVENTORIES" ("TRX_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_MANUFACTURERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_MANUFACTURERS_PK" ON "LKB_MANUFACTURERS" ("MNF_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_CUSTOMERS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_CUSTOMERS_U01" ON "LKB_CUSTOMERS" ("CUSTOMER_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_ITEM_UNITS_MIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_ITEM_UNITS_MIN_PK" ON "CFG_ITEM_UNITS_MIN" ("ITEM_ID", "UNIT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_ITEMS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_ITEMS_U01" ON "LKB_ITEMS" ("ITEM_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_TARGET_CUSTOMERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_TARGET_CUSTOMERS_PK" ON "CFG_TARGET_CUSTOMERS" ("TARGET_CUST_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table LKB_CUST_SECTIONS
--------------------------------------------------------

  ALTER TABLE "LKB_CUST_SECTIONS" ADD CONSTRAINT "LKB_CUST_SECTIONS_U01" UNIQUE ("SECTION_NAME")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_CUST_SECTIONS" ADD CONSTRAINT "LKB_CUST_SECTIONS_PK" PRIMARY KEY ("SECTION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRX_DAILY_SALES
--------------------------------------------------------

  ALTER TABLE "TRX_DAILY_SALES" ADD CONSTRAINT "TRX_DAILY_SALES_PK" PRIMARY KEY ("TRX_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_TARGET_CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "CFG_TARGET_CUSTOMERS" ADD CONSTRAINT "CFG_TARGET_CUSTOMERS_U01" UNIQUE ("TARGET_SEC_ID", "CUSTOMER_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "CFG_TARGET_CUSTOMERS" ADD CONSTRAINT "CFG_TARGET_CUSTOMERS_PK" PRIMARY KEY ("TARGET_CUST_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RTN_REPS_ITEMS
--------------------------------------------------------

  ALTER TABLE "RTN_REPS_ITEMS" ADD CONSTRAINT "RTN_REPS_ITEMS_PK" PRIMARY KEY ("REP_ID", "ITEM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_JOB_TITLES
--------------------------------------------------------

  ALTER TABLE "LKB_JOB_TITLES" ADD CONSTRAINT "LKB_JOB_TITLES_PK" PRIMARY KEY ("TITLE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RTN_ITEMS_SUPPLIERS
--------------------------------------------------------

  ALTER TABLE "RTN_ITEMS_SUPPLIERS" ADD CONSTRAINT "RTN_ITEM_SUPPLIERS_PK" PRIMARY KEY ("ITEM_ID", "SUPPLIER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_ITEMS
--------------------------------------------------------

  ALTER TABLE "LKB_ITEMS" ADD CONSTRAINT "LKB_ITEMS_U01" UNIQUE ("ITEM_NAME")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_ITEMS" ADD CONSTRAINT "LKB_ITEMS_PK" PRIMARY KEY ("ITEM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_ITEM_UNITS_MIN
--------------------------------------------------------

  ALTER TABLE "CFG_ITEM_UNITS_MIN" ADD CONSTRAINT "CFG_ITEM_UNITS_MIN_PK" PRIMARY KEY ("ITEM_ID", "UNIT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_REPS
--------------------------------------------------------

  ALTER TABLE "LKB_REPS" ADD CONSTRAINT "LKB_REPS_U01" UNIQUE ("REP_NAME")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_REPS" ADD CONSTRAINT "LKB_REPS_PK" PRIMARY KEY ("REP_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_SUPPLIERS
--------------------------------------------------------

  ALTER TABLE "LKB_SUPPLIERS" ADD CONSTRAINT "LKB_SUPPLIERS_U01" UNIQUE ("SUPPLIER_NAME")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_SUPPLIERS" ADD CONSTRAINT "LKB_SUPPLIERS_PK" PRIMARY KEY ("SUPPLIER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "LKB_CUSTOMERS" ADD CONSTRAINT "LKB_CUSTOMERS_U01" UNIQUE ("CUSTOMER_NAME")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_CUSTOMERS" ADD CONSTRAINT "LKB_CUSTOMERS_PK" PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_UNITS
--------------------------------------------------------

  ALTER TABLE "LKB_UNITS" ADD CONSTRAINT "LKB_PROD_UNITS_U01" UNIQUE ("UNIT_NAME")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_UNITS" ADD CONSTRAINT "LKB_PROD_UNITS_PK" PRIMARY KEY ("UNIT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RTN_ITEMS_UNITS
--------------------------------------------------------

  ALTER TABLE "RTN_ITEMS_UNITS" ADD CONSTRAINT "RTN_ITEMS_UNITS_PK" PRIMARY KEY ("ITEM_ID", "UNIT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RTN_REPS_CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "RTN_REPS_CUSTOMERS" ADD CONSTRAINT "RTN_REPS_CUSTOMERS_PK" PRIMARY KEY ("REP_ID", "CUSTOMER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRX_INVENTORIES
--------------------------------------------------------

  ALTER TABLE "TRX_INVENTORIES" ADD CONSTRAINT "TRX_INVENTORIES_PK" PRIMARY KEY ("TRX_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_TARGET_SECTIONS
--------------------------------------------------------

  ALTER TABLE "CFG_TARGET_SECTIONS" ADD CONSTRAINT "CFG_TARGET_SECTIONS_U01" UNIQUE ("TARGET_ID", "SECTION_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "CFG_TARGET_SECTIONS" ADD CONSTRAINT "CFG_TARGET_SECTIONS_PK" PRIMARY KEY ("TRG_SEC_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_TARGET
--------------------------------------------------------

  ALTER TABLE "CFG_TARGET" ADD CONSTRAINT "CFG_TARGET_PK" PRIMARY KEY ("TRX_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "CFG_TARGET" MODIFY ("TRX_ID" NOT NULL ENABLE);
  ALTER TABLE "CFG_TARGET" MODIFY ("REP_ID" CONSTRAINT "CFG_TARGET_C02" NOT NULL ENABLE);
  ALTER TABLE "CFG_TARGET" MODIFY ("ITEM_ID" CONSTRAINT "CFG_TARGET_C01" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LKB_MANUFACTURERS
--------------------------------------------------------

  ALTER TABLE "LKB_MANUFACTURERS" ADD CONSTRAINT "LKB_MANUFACTURERS_PK" PRIMARY KEY ("MNF_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CFG_ITEM_UNITS_MIN
--------------------------------------------------------

  ALTER TABLE "CFG_ITEM_UNITS_MIN" ADD CONSTRAINT "CFG_ITEM_UNITS_MIN_R01" FOREIGN KEY ("ITEM_ID")
	  REFERENCES "LKB_ITEMS" ("ITEM_ID") ENABLE;
  ALTER TABLE "CFG_ITEM_UNITS_MIN" ADD CONSTRAINT "CFG_ITEM_UNITS_MIN_R02" FOREIGN KEY ("UNIT_ID")
	  REFERENCES "LKB_UNITS" ("UNIT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CFG_TARGET
--------------------------------------------------------

  ALTER TABLE "CFG_TARGET" ADD CONSTRAINT "CFG_TARGET_R01" FOREIGN KEY ("ITEM_ID")
	  REFERENCES "LKB_ITEMS" ("ITEM_ID") ENABLE;
  ALTER TABLE "CFG_TARGET" ADD CONSTRAINT "CFG_TARGET_R02" FOREIGN KEY ("UNIT_ID")
	  REFERENCES "LKB_UNITS" ("UNIT_ID") ENABLE;
  ALTER TABLE "CFG_TARGET" ADD CONSTRAINT "CFG_TARGET_R03" FOREIGN KEY ("REP_ID")
	  REFERENCES "LKB_REPS" ("REP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CFG_TARGET_CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "CFG_TARGET_CUSTOMERS" ADD CONSTRAINT "CFG_TARGET_CUSTOMERS_R01" FOREIGN KEY ("TARGET_SEC_ID")
	  REFERENCES "CFG_TARGET_SECTIONS" ("TRG_SEC_ID") ENABLE;
  ALTER TABLE "CFG_TARGET_CUSTOMERS" ADD CONSTRAINT "CFG_TARGET_CUSTOMERS_R02" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "LKB_CUSTOMERS" ("CUSTOMER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CFG_TARGET_SECTIONS
--------------------------------------------------------

  ALTER TABLE "CFG_TARGET_SECTIONS" ADD CONSTRAINT "CFG_TARGET_SECTIONS_R01" FOREIGN KEY ("SECTION_ID")
	  REFERENCES "LKB_CUST_SECTIONS" ("SECTION_ID") ENABLE;
  ALTER TABLE "CFG_TARGET_SECTIONS" ADD CONSTRAINT "CFG_TARGET_SECTIONS_R02" FOREIGN KEY ("TARGET_ID")
	  REFERENCES "CFG_TARGET" ("TRX_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LKB_CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "LKB_CUSTOMERS" ADD CONSTRAINT "LKB_CUSTOMERS_R01" FOREIGN KEY ("SECTION_ID")
	  REFERENCES "LKB_CUST_SECTIONS" ("SECTION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LKB_ITEMS
--------------------------------------------------------

  ALTER TABLE "LKB_ITEMS" ADD CONSTRAINT "LKB_ITEMS_R01" FOREIGN KEY ("MANUFACTURE_ID")
	  REFERENCES "LKB_MANUFACTURERS" ("MNF_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LKB_REPS
--------------------------------------------------------

  ALTER TABLE "LKB_REPS" ADD CONSTRAINT "LKB_REPS_R01" FOREIGN KEY ("REP_TITLE_ID")
	  REFERENCES "LKB_JOB_TITLES" ("TITLE_ID") ENABLE;
  ALTER TABLE "LKB_REPS" ADD CONSTRAINT "LKB_REPS_R02" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "LKB_REPS" ("REP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LKB_SUPPLIERS
--------------------------------------------------------

  ALTER TABLE "LKB_SUPPLIERS" ADD CONSTRAINT "LKB_SUPPLIERS_R01" FOREIGN KEY ("MANUFACTURE_ID")
	  REFERENCES "LKB_MANUFACTURERS" ("MNF_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RTN_ITEMS_SUPPLIERS
--------------------------------------------------------

  ALTER TABLE "RTN_ITEMS_SUPPLIERS" ADD CONSTRAINT "RTN_ITEM_SUPPLIERS_R01" FOREIGN KEY ("ITEM_ID")
	  REFERENCES "LKB_ITEMS" ("ITEM_ID") ENABLE;
  ALTER TABLE "RTN_ITEMS_SUPPLIERS" ADD CONSTRAINT "RTN_ITEM_SUPPLIERS_R02" FOREIGN KEY ("SUPPLIER_ID")
	  REFERENCES "LKB_SUPPLIERS" ("SUPPLIER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RTN_ITEMS_UNITS
--------------------------------------------------------

  ALTER TABLE "RTN_ITEMS_UNITS" ADD CONSTRAINT "RTN_ITEMS_UNITS_R01" FOREIGN KEY ("ITEM_ID")
	  REFERENCES "LKB_ITEMS" ("ITEM_ID") ENABLE;
  ALTER TABLE "RTN_ITEMS_UNITS" ADD CONSTRAINT "RTN_ITEMS_UNITS_R02" FOREIGN KEY ("UNIT_ID")
	  REFERENCES "LKB_UNITS" ("UNIT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RTN_REPS_CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "RTN_REPS_CUSTOMERS" ADD CONSTRAINT "RTN_REPS_CUSTOMERS_R01" FOREIGN KEY ("REP_ID")
	  REFERENCES "LKB_REPS" ("REP_ID") ENABLE;
  ALTER TABLE "RTN_REPS_CUSTOMERS" ADD CONSTRAINT "RTN_REPS_CUSTOMERS_R02" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "LKB_CUSTOMERS" ("CUSTOMER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RTN_REPS_ITEMS
--------------------------------------------------------

  ALTER TABLE "RTN_REPS_ITEMS" ADD CONSTRAINT "RTN_REPS_ITEMS_R01" FOREIGN KEY ("REP_ID")
	  REFERENCES "LKB_REPS" ("REP_ID") ENABLE;
  ALTER TABLE "RTN_REPS_ITEMS" ADD CONSTRAINT "RTN_REPS_ITEMS_R02" FOREIGN KEY ("ITEM_ID")
	  REFERENCES "LKB_ITEMS" ("ITEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRX_DAILY_SALES
--------------------------------------------------------

  ALTER TABLE "TRX_DAILY_SALES" ADD CONSTRAINT "TRX_DAILY_SALES_R01" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "LKB_CUSTOMERS" ("CUSTOMER_ID") ENABLE;
  ALTER TABLE "TRX_DAILY_SALES" ADD CONSTRAINT "TRX_DAILY_SALES_R02" FOREIGN KEY ("ITEM_ID")
	  REFERENCES "LKB_ITEMS" ("ITEM_ID") ENABLE;
  ALTER TABLE "TRX_DAILY_SALES" ADD CONSTRAINT "TRX_DAILY_SALES_R03" FOREIGN KEY ("UNIT_ID")
	  REFERENCES "LKB_UNITS" ("UNIT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRX_INVENTORIES
--------------------------------------------------------

  ALTER TABLE "TRX_INVENTORIES" ADD CONSTRAINT "TRX_INVENTORIES_R01" FOREIGN KEY ("ITEM_ID")
	  REFERENCES "LKB_ITEMS" ("ITEM_ID") ENABLE;
  ALTER TABLE "TRX_INVENTORIES" ADD CONSTRAINT "TRX_INVENTORIES_R02" FOREIGN KEY ("UNIT_ID")
	  REFERENCES "LKB_UNITS" ("UNIT_ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger CFG_TARGET_CUSTOMERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CFG_TARGET_CUSTOMERS_TRG" 
BEFORE INSERT
ON PHARMA.CFG_TARGET_CUSTOMERS
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
IF :new.TARGET_CUST_ID IS NULL THEN
-- For Toad:  Highlight column TARGET_CUST_ID
  :new.TARGET_CUST_ID := CFG_TARGET_CUSTOMERS_SEQ.nextval;
  END IF;
END CFG_TARGET_CUSTOMERS_TRG;
/
ALTER TRIGGER "CFG_TARGET_CUSTOMERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CFG_TARGET_SECTIONS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CFG_TARGET_SECTIONS_TRG" 
BEFORE INSERT
ON PHARMA.CFG_TARGET_SECTIONS
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
-- For Toad:  Highlight column TRG_SEC_ID

IF :new.TRG_SEC_ID IS NOT NULL THEN
  :new.TRG_SEC_ID := CFG_TARGET_SECTIONS_SEQ.nextval;
 END IF;
END CFG_TARGET_SECTIONS_TRG;
/
ALTER TRIGGER "CFG_TARGET_SECTIONS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LKB_CUSTOMERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LKB_CUSTOMERS_TRG" 
BEFORE INSERT
ON LKB_CUSTOMERS
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
-- For Toad:  Highlight column CUSTOMER_ID
IF :new.CUSTOMER_ID IS NULL THEN
  :new.CUSTOMER_ID := LKB_CUSTOMERS_SEQ.nextval;
  END IF;
END LKB_CUSTOMERS_TRG;
/
ALTER TRIGGER "LKB_CUSTOMERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LKB_CUST_SECTIONS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LKB_CUST_SECTIONS_TRG" 
BEFORE INSERT
ON LKB_CUST_SECTIONS
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
-- For Toad:  Highlight column SECTION_ID
IF :new.SECTION_ID IS NULL THEN
  :new.SECTION_ID := LKB_CUST_SECTIONS_SEQ.nextval;
  END IF;
END LKB_CUST_SECTIONS_TRG;
/
ALTER TRIGGER "LKB_CUST_SECTIONS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LKB_ITEMS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LKB_ITEMS_TRG" 
BEFORE INSERT
ON LKB_ITEMS
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN
-- For Toad:  Highlight column PRODUCT_ID
IF :new.ITEM_ID IS NULL THEN 
  :new.ITEM_ID := LKB_ITEMS_SEQ.nextval;
  END IF;
END LKB_ITEMS_TRG;
/
ALTER TRIGGER "LKB_ITEMS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LKB_ITEM_UNITS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LKB_ITEM_UNITS_TRG" BEFORE INSERT
ON LKB_UNITS
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN
-- For Toad:  Highlight column UNIT_ID
IF :new.UNIT_ID IS NULL THEN
  :new.UNIT_ID := LKB_ITEM_UNITS_SEQ.nextval;
  END IF;
END LKB_ITEM_UNITS_TRG;
/
ALTER TRIGGER "LKB_ITEM_UNITS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LKB_JOB_TITLES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LKB_JOB_TITLES_TRG" 
BEFORE INSERT
ON LKB_JOB_TITLES
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
IF :new.TITLE_ID IS NULL THEN
  :new.TITLE_ID := LKB_JOB_TITLES_SEQ.nextval;
  END IF;
END LKB_JOB_TITLES_TRG;
/
ALTER TRIGGER "LKB_JOB_TITLES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LKB_MANUFACTURERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LKB_MANUFACTURERS_TRG" 
BEFORE INSERT
ON LKB_MANUFACTURERS
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
-- For Toad:  Highlight column MNF_ID
IF :new.MNF_ID IS NULL THEN
  :new.MNF_ID := LKB_MANUFACTURERS_SEQ.nextval;
  END IF;
END LKB_MANUFACTURERS_TRG;
/
ALTER TRIGGER "LKB_MANUFACTURERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LKB_REPS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LKB_REPS_TRG" 
BEFORE INSERT
ON LKB_REPS
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN
IF  :new.REP_ID IS NULL THEN 
  :new.REP_ID := LKB_REPS_SEQ.nextval;
END IF;
END LKB_REPS_TRG;
/
ALTER TRIGGER "LKB_REPS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LKB_SUPPLIERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LKB_SUPPLIERS_TRG" 
BEFORE INSERT
ON LKB_SUPPLIERS
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
-- For Toad:  Highlight column SUPPLIER_ID
IF  :new.SUPPLIER_ID IS NULL THEN
  :new.SUPPLIER_ID := LKB_SUPPLIERS_SEQ.nextval;
  END IF;
END LKB_SUPPLIERS_TRG;
/
ALTER TRIGGER "LKB_SUPPLIERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRX_DAILY_SALES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRX_DAILY_SALES_TRG" 
BEFORE INSERT
ON TRX_DAILY_SALES
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
-- For Toad:  Highlight column TRX_ID
IF :new.TRX_ID IS NULL THEN
  :new.TRX_ID := TRX_DAILY_SALES_SEQ.nextval;
  END IF;
END TRX_DAILY_SALES_TRG;
/
ALTER TRIGGER "TRX_DAILY_SALES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRX_INVENTORIES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRX_INVENTORIES_TRG" 
BEFORE INSERT
ON TRX_INVENTORIES
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
-- For Toad:  Highlight column TRX_ID
IF :new.TRX_ID IS NULL THEN
  :new.TRX_ID := TRX_INVENTORIES_SEQ.nextval;
  END IF;
END TRX_INVENTORIES_TRG;
/
ALTER TRIGGER "TRX_INVENTORIES_TRG" ENABLE;
