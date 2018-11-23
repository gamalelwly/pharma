--------------------------------------------------------
--  File created - الجمعة-نوفمبر-23-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type CUST_DUES_AGING_TABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "CUST_DUES_AGING_TABLE" 
AS TABLE OF CUST_DUES_AGING_TYPE

/
--------------------------------------------------------
--  DDL for Type CUST_DUES_AGING_TYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "CUST_DUES_AGING_TYPE" AS OBJECT
(
  CUSTOMER_ID NUMBER,
  CUSTOMER_NAME VARCHAR2(500),
  DUE_AGE VARCHAR2(100), -- EXAMPLE 0_30,30_60...etc
  DUE_AMOUNT NUMBER
)

/
--------------------------------------------------------
--  DDL for Type SUPP_DUES_AGING_TABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "SUPP_DUES_AGING_TABLE" 
AS TABLE OF SUPP_DUES_AGING_TYPE

/
--------------------------------------------------------
--  DDL for Type SUPP_DUES_AGING_TYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "SUPP_DUES_AGING_TYPE" AS OBJECT
(
  SUPPLIER_ID NUMBER,
  SUPPLIER_NAME VARCHAR2(500),
  DUE_AGE VARCHAR2(100), -- EXAMPLE 0_30,30_60...etc
  DUE_AMOUNT NUMBER
)

/
--------------------------------------------------------
--  DDL for Sequence CFG_DUES_AGING_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CFG_DUES_AGING_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CFG_TARGET_CUSTOMERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CFG_TARGET_CUSTOMERS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CFG_TARGET_MASTER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CFG_TARGET_MASTER_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CFG_TARGET_SECTIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CFG_TARGET_SECTIONS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CFG_TARGET_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CFG_TARGET_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LKB_CUSTOMERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_CUSTOMERS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LKB_CUST_SECTIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_CUST_SECTIONS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LKB_ITEMS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_ITEMS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LKB_ITEM_UNITS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_ITEM_UNITS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LKB_JOB_TITLES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_JOB_TITLES_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LKB_MANUFACTURERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_MANUFACTURERS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LKB_REPS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_REPS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LKB_SUPPLIERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LKB_SUPPLIERS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PS_TXN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PS_TXN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 50 START WITH 13251 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TRX_CUST_PAYMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TRX_CUST_PAYMENTS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TRX_DAILY_SALES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TRX_DAILY_SALES_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TRX_INVENTORIES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TRX_INVENTORIES_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CFG_DUES_AGING
--------------------------------------------------------

  CREATE TABLE "CFG_DUES_AGING" 
   (	"ID" NUMBER, 
	"FROM_DAYS_NO" NUMBER, 
	"TO_DAYS_NO" NUMBER
   ) ;
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
	"MODIFIED_BY" VARCHAR2(500), 
	"SALES_PRICE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CFG_TARGET
--------------------------------------------------------

  CREATE TABLE "CFG_TARGET" 
   (	"TRX_ID" NUMBER, 
	"ITEM_ID" NUMBER, 
	"UNIT_ID" NUMBER, 
	"REP_ID" NUMBER, 
	"TRG_QUANTITY" NUMBER, 
	"TRG_AMOUNT" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500), 
	"TRG_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CFG_TARGET_CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "CFG_TARGET_CUSTOMERS" 
   (	"TARGET_CUST_ID" NUMBER, 
	"TARGET_SEC_ID" NUMBER, 
	"CUSTOMER_ID" NUMBER, 
	"TRG_QUANTITY" NUMBER, 
	"TRG_AMOUNT" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500), 
	"NOTES" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table CFG_TARGET_MASTER
--------------------------------------------------------

  CREATE TABLE "CFG_TARGET_MASTER" 
   (	"TRG_ID" NUMBER, 
	"TRX_DATE" DATE DEFAULT SYSDATE, 
	"TRG_YEAR" NUMBER, 
	"TRG_MONTH" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CFG_TARGET_SECTIONS
--------------------------------------------------------

  CREATE TABLE "CFG_TARGET_SECTIONS" 
   (	"TRG_SEC_ID" NUMBER, 
	"TARGET_ID" NUMBER, 
	"SECTION_ID" NUMBER, 
	"TRG_PERCENT" NUMBER, 
	"TRG_QUANTITY" NUMBER, 
	"TRG_AMOUNT" NUMBER, 
	"CREATE_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" VARCHAR2(500) DEFAULT USER, 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(500), 
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
--  DDL for Table PS_TXN
--------------------------------------------------------

  CREATE TABLE "PS_TXN" 
   (	"ID" NUMBER(20,0), 
	"PARENTID" NUMBER(20,0), 
	"COLLID" NUMBER(10,0), 
	"CONTENT" BLOB, 
	"CREATION_DATE" DATE DEFAULT sysdate
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
--  DDL for Table TRX_CUST_PAYMENTS
--------------------------------------------------------

  CREATE TABLE "TRX_CUST_PAYMENTS" 
   (	"TRX_ID" NUMBER, 
	"TRX_DATE" DATE DEFAULT SYSDATE, 
	"PAYMENT_TYPE" VARCHAR2(500 CHAR), 
	"PAYMANT_DESCRIPTION" VARCHAR2(1000 CHAR), 
	"CUSTOMER_ID" NUMBER, 
	"PAYMENT_AMOUNT" NUMBER
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
--  DDL for View CUSTOMER_TOTAL_DUES_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CUSTOMER_TOTAL_DUES_V" ("CUSTOMER_ID", "CUSTOMER_NAME", "TOTAL_DUE") AS 
  SELECT CUSTOMER_ID, CUSTOMER_NAME, NVL(SALES,0) - NVL(PAYMENT,0) TOTAL_DUE
     FROM (SELECT CUST.CUSTOMER_ID,
                  CUST.CUSTOMER_NAME,
                  (SELECT SUM (NVL (SALES.AMOUNT, 0))
                     FROM TRX_DAILY_SALES SALES
                    WHERE SALES.CUSTOMER_ID = CUST.CUSTOMER_ID)
                     SALES,
                  (SELECT SUM (NVL (PAYMENT.PAYMENT_AMOUNT, 0))
                     FROM TRX_CUST_PAYMENTS PAYMENT
                    WHERE PAYMENT.CUSTOMER_ID = CUST.CUSTOMER_ID)
                     PAYMENT
             FROM LKB_CUSTOMERS CUST);
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
--------------------------------------------------------
--  DDL for View MONTHS_NAMES_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "MONTHS_NAMES_V" ("ID", "MONTH_NAME", "LOCALE") AS 
  SELECT 1 ID, 'January' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION 
SELECT 2  ID, 'February' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION
SELECT 3 ID, 'March' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION
SELECT 4 ID, 'April' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION
SELECT 5 ID, 'May' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION
SELECT 6 ID, 'June ' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION
SELECT 7 ID, 'July   ' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION
SELECT 8 ID, 'August   ' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION
SELECT 9 ID, 'September' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION
SELECT 10 ID, 'October  ' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION
SELECT 11 ID, 'November ' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION
SELECT 12 ID, 'December ' MONTH_NAME , 'OTHERS' LOCALE FROM DUAL
UNION
SELECT 1 ID, '?????' MONTH_NAME , 'AR' LOCALE FROM DUAL
UNION 
SELECT 2  ID, '??????' MONTH_NAME , 'AR' LOCALE FROM DUAL
UNION
SELECT 3 ID, '????' MONTH_NAME , 'AR' LOCALE FROM DUAL
UNION
SELECT 4 ID, '?????' MONTH_NAME , 'AR' LOCALE FROM DUAL
UNION
SELECT 5 ID, '????' MONTH_NAME , 'AR' LOCALE FROM DUAL
UNION
SELECT 6 ID, '????? ' MONTH_NAME , 'AR' LOCALE FROM DUAL
UNION
SELECT 7 ID, '?????   ' MONTH_NAME , 'AR' LOCALE FROM DUAL
UNION
SELECT 8 ID, '?????   ' MONTH_NAME , 'AR' LOCALE FROM DUAL
UNION
SELECT 9 ID, '??????' MONTH_NAME , 'AR' LOCALE FROM DUAL
UNION
SELECT 10 ID, '??????  ' MONTH_NAME , 'AR' LOCALE FROM DUAL
UNION
SELECT 11 ID, '?????? ' MONTH_NAME , 'AR' LOCALE FROM DUAL
UNION
SELECT 12 ID, '?????? ' , 'AR' LOCALE FROM DUAL
ORDER BY ID;
--------------------------------------------------------
--  DDL for View REPS_CUSTOMERS_AND_SECTIONS_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "REPS_CUSTOMERS_AND_SECTIONS_V" ("REP_ID", "REP_NAME", "CUSTOMER_ID", "CUSTOMER_CODE", "CUSTOMER_NAME", "SECTION_ID", "SECTION_CODE", "SECTION_NAME") AS 
  SELECT REPS.REP_ID,
       REPS.REP_NAME,
       CUSTS.CUSTOMER_ID,
       CUSTS.CUSTOMER_CODE,
       CUSTS.CUSTOMER_NAME,
       SEC.SECTION_ID,
       SEC.SECTION_CODE,
       SEC.SECTION_NAME
  FROM LKB_REPS REPS,RTN_REPS_CUSTOMERS REPS_CUST, LKB_CUSTOMERS CUSTS, LKB_CUST_SECTIONS SEC
  WHERE REPS.REP_ID = REPS_CUST.REP_ID
  AND REPS_CUST.CUSTOMER_ID = CUSTS.CUSTOMER_ID
  AND CUSTS.SECTION_ID = SEC.SECTION_ID;
--------------------------------------------------------
--  DDL for View REPS_ITEMS_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "REPS_ITEMS_V" ("REP_ID", "REP_NAME", "ITEM_ID", "ITEM_NAME", "ITEM_CODE", "MANUFACTURE_ID") AS 
  SELECT REPS.REP_ID,
       REPS.REP_NAME,
       ITEMS.ITEM_ID,
       ITEMS.ITEM_NAME,
       ITEMS.ITEM_CODE,    
       ITEMS.MANUFACTURE_ID
  FROM LKB_REPS REPS,RTN_REPS_ITEMS REPS_ITEMS,  LKB_ITEMS ITEMS
  WHERE REPS.REP_ID = REPS_ITEMS.REP_ID
  AND REPS_ITEMS.ITEM_ID = ITEMS.ITEM_ID;
--------------------------------------------------------
--  DDL for View TRX_DAILY_SALES_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "TRX_DAILY_SALES_V" ("TRX_ID", "TRX_CODE", "TRX_DATE", "DAYS", "TRX_TYPE", "CUSTOMER_ID", "AMOUNT") AS 
  SELECT TRX_ID,
          TRX_CODE,
          TRX_DATE,
          TRUNC(SYSDATE - TRX_DATE) DAYS,
          TRX_TYPE,
          CUSTOMER_ID,
          AMOUNT
     FROM TRX_DAILY_SALES;
REM INSERTING into CFG_DUES_AGING
SET DEFINE OFF;
Insert into CFG_DUES_AGING (ID,FROM_DAYS_NO,TO_DAYS_NO) values (61,30,60);
Insert into CFG_DUES_AGING (ID,FROM_DAYS_NO,TO_DAYS_NO) values (62,60,90);
Insert into CFG_DUES_AGING (ID,FROM_DAYS_NO,TO_DAYS_NO) values (63,90,120);
Insert into CFG_DUES_AGING (ID,FROM_DAYS_NO,TO_DAYS_NO) values (64,120,150);
Insert into CFG_DUES_AGING (ID,FROM_DAYS_NO,TO_DAYS_NO) values (65,150,180);
REM INSERTING into CFG_ITEM_UNITS_MIN
SET DEFINE OFF;
Insert into CFG_ITEM_UNITS_MIN (ITEM_ID,UNIT_ID,MIN_QUANT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY,SALES_PRICE) values (21,21,100,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null,10);
Insert into CFG_ITEM_UNITS_MIN (ITEM_ID,UNIT_ID,MIN_QUANT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY,SALES_PRICE) values (22,21,50,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null,20);
Insert into CFG_ITEM_UNITS_MIN (ITEM_ID,UNIT_ID,MIN_QUANT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY,SALES_PRICE) values (23,22,200,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null,null);
REM INSERTING into CFG_TARGET
SET DEFINE OFF;
Insert into CFG_TARGET (TRX_ID,ITEM_ID,UNIT_ID,REP_ID,TRG_QUANTITY,TRG_AMOUNT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY,TRG_ID) values (81,23,22,43,1000,10000,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null,21);
Insert into CFG_TARGET (TRX_ID,ITEM_ID,UNIT_ID,REP_ID,TRG_QUANTITY,TRG_AMOUNT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY,TRG_ID) values (82,21,21,44,500,5000,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null,21);
Insert into CFG_TARGET (TRX_ID,ITEM_ID,UNIT_ID,REP_ID,TRG_QUANTITY,TRG_AMOUNT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY,TRG_ID) values (83,22,21,44,2000,40000,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null,21);
REM INSERTING into CFG_TARGET_CUSTOMERS
SET DEFINE OFF;
REM INSERTING into CFG_TARGET_MASTER
SET DEFINE OFF;
Insert into CFG_TARGET_MASTER (TRG_ID,TRX_DATE,TRG_YEAR,TRG_MONTH) values (21,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),2018,11);
REM INSERTING into CFG_TARGET_SECTIONS
SET DEFINE OFF;
Insert into CFG_TARGET_SECTIONS (TRG_SEC_ID,TARGET_ID,SECTION_ID,TRG_PERCENT,TRG_QUANTITY,TRG_AMOUNT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY,NOTES) values (21,81,103,60,600,6000,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null,null);
Insert into CFG_TARGET_SECTIONS (TRG_SEC_ID,TARGET_ID,SECTION_ID,TRG_PERCENT,TRG_QUANTITY,TRG_AMOUNT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY,NOTES) values (22,81,102,40,400,4000,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null,null);
Insert into CFG_TARGET_SECTIONS (TRG_SEC_ID,TARGET_ID,SECTION_ID,TRG_PERCENT,TRG_QUANTITY,TRG_AMOUNT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY,NOTES) values (23,82,101,100,500,5000,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null,null);
Insert into CFG_TARGET_SECTIONS (TRG_SEC_ID,TARGET_ID,SECTION_ID,TRG_PERCENT,TRG_QUANTITY,TRG_AMOUNT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY,NOTES) values (24,83,101,100,2000,40000,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null,null);
REM INSERTING into LKB_CUSTOMERS
SET DEFINE OFF;
Insert into LKB_CUSTOMERS (CUSTOMER_ID,CUSTOMER_CODE,CUSTOMER_NAME,SECTION_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (101,'CUST001','19011',101,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_CUSTOMERS (CUSTOMER_ID,CUSTOMER_CODE,CUSTOMER_NAME,SECTION_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (102,'CUST002','El Naggar Pharmacies',101,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_CUSTOMERS (CUSTOMER_ID,CUSTOMER_CODE,CUSTOMER_NAME,SECTION_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (103,'CUST003','Sherif Mansour',103,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_CUSTOMERS (CUSTOMER_ID,CUSTOMER_CODE,CUSTOMER_NAME,SECTION_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (104,'CUST004','Sallem Ahmed',102,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into LKB_CUST_SECTIONS
SET DEFINE OFF;
Insert into LKB_CUST_SECTIONS (SECTION_ID,SECTION_CODE,SECTION_NAME,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (101,'SEC001','Pharmacies',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_CUST_SECTIONS (SECTION_ID,SECTION_CODE,SECTION_NAME,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (102,'SEC002','Animals',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_CUST_SECTIONS (SECTION_ID,SECTION_CODE,SECTION_NAME,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (103,'SEC003','Farms',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into LKB_ITEMS
SET DEFINE OFF;
Insert into LKB_ITEMS (ITEM_ID,ITEM_CODE,ITEM_NAME,MANUFACTURE_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (21,'ITM001','Panadol',41,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_ITEMS (ITEM_ID,ITEM_CODE,ITEM_NAME,MANUFACTURE_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (22,'ITM002','Alphintern ',42,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_ITEMS (ITEM_ID,ITEM_CODE,ITEM_NAME,MANUFACTURE_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (23,'ITM003','Aspirin',41,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into LKB_JOB_TITLES
SET DEFINE OFF;
Insert into LKB_JOB_TITLES (TITLE_ID,TITLE_CODE,TITLE_NAME,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (81,'JOB001','Manager',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_JOB_TITLES (TITLE_ID,TITLE_CODE,TITLE_NAME,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (82,'JOB002','Rep',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into LKB_MANUFACTURERS
SET DEFINE OFF;
Insert into LKB_MANUFACTURERS (MNF_ID,MNF_CODE,MNF_NAME,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (41,'MNF001','Manufacture-1',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_MANUFACTURERS (MNF_ID,MNF_CODE,MNF_NAME,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (42,'MNF002','Manufacture-2',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into LKB_REPS
SET DEFINE OFF;
Insert into LKB_REPS (REP_ID,REP_CODE,REP_NAME,REP_TITLE_ID,MANAGER_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (41,'EMP001','Gamal Abdelhamid',81,null,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'هناء سليمان الخلفTEST');
Insert into LKB_REPS (REP_ID,REP_CODE,REP_NAME,REP_TITLE_ID,MANAGER_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (42,'Emp002','Heba Ahmed',81,null,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_REPS (REP_ID,REP_CODE,REP_NAME,REP_TITLE_ID,MANAGER_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (43,'Emp003','Ahmed Hatem',82,41,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'هناء سليمان الخلفTEST');
Insert into LKB_REPS (REP_ID,REP_CODE,REP_NAME,REP_TITLE_ID,MANAGER_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (44,'EMP004','Mona Atef',82,42,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into LKB_SUPPLIERS
SET DEFINE OFF;
Insert into LKB_SUPPLIERS (SUPPLIER_ID,SUPPLIER_CODE,SUPPLIER_NAME,MANUFACTURE_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (21,'SPP001','Supplier-1',41,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_SUPPLIERS (SUPPLIER_ID,SUPPLIER_CODE,SUPPLIER_NAME,MANUFACTURE_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (22,'SPP002','Supplier-2',42,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into LKB_UNITS
SET DEFINE OFF;
Insert into LKB_UNITS (UNIT_ID,UNIT_CODE,UNIT_NAME,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (21,'UNT001','Pack',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into LKB_UNITS (UNIT_ID,UNIT_CODE,UNIT_NAME,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (22,'UNT002','Strip',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into PS_TXN
SET DEFINE OFF;
Insert into PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,12161,to_timestamp('22-NOV-18','DD-MON-RR HH.MI.SSXFF AM'));
Insert into PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,12160,to_timestamp('22-NOV-18','DD-MON-RR HH.MI.SSXFF AM'));
Insert into PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,12162,to_timestamp('22-NOV-18','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into RTN_ITEMS_SUPPLIERS
SET DEFINE OFF;
Insert into RTN_ITEMS_SUPPLIERS (ITEM_ID,SUPPLIER_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (21,21,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into RTN_ITEMS_SUPPLIERS (ITEM_ID,SUPPLIER_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (22,21,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into RTN_ITEMS_SUPPLIERS (ITEM_ID,SUPPLIER_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (23,22,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into RTN_REPS_CUSTOMERS
SET DEFINE OFF;
Insert into RTN_REPS_CUSTOMERS (REP_ID,CUSTOMER_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (44,101,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into RTN_REPS_CUSTOMERS (REP_ID,CUSTOMER_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (44,102,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into RTN_REPS_CUSTOMERS (REP_ID,CUSTOMER_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (43,103,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into RTN_REPS_CUSTOMERS (REP_ID,CUSTOMER_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (43,104,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into RTN_REPS_ITEMS
SET DEFINE OFF;
Insert into RTN_REPS_ITEMS (REP_ID,ITEM_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (44,21,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into RTN_REPS_ITEMS (REP_ID,ITEM_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (44,22,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into RTN_REPS_ITEMS (REP_ID,ITEM_ID,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (43,23,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into TRX_CUST_PAYMENTS
SET DEFINE OFF;
REM INSERTING into TRX_DAILY_SALES
SET DEFINE OFF;
Insert into TRX_DAILY_SALES (TRX_ID,TRX_CODE,TRX_DATE,TRX_TYPE,CUSTOMER_ID,ITEM_ID,UNIT_ID,PRICE,QUANTITY,AMOUNT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (61,'SLS003',to_timestamp('01-OCT-18','DD-MON-RR HH.MI.SSXFF AM'),2,101,21,22,10,50,500,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into TRX_DAILY_SALES (TRX_ID,TRX_CODE,TRX_DATE,TRX_TYPE,CUSTOMER_ID,ITEM_ID,UNIT_ID,PRICE,QUANTITY,AMOUNT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (62,'4',to_timestamp('23-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),2,101,21,21,11,555,2323,to_timestamp('23-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into TRX_DAILY_SALES (TRX_ID,TRX_CODE,TRX_DATE,TRX_TYPE,CUSTOMER_ID,ITEM_ID,UNIT_ID,PRICE,QUANTITY,AMOUNT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (42,'SLS001',to_timestamp('01-AUG-18','DD-MON-RR HH.MI.SSXFF AM'),2,101,21,21,10,100,1000,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into TRX_DAILY_SALES (TRX_ID,TRX_CODE,TRX_DATE,TRX_TYPE,CUSTOMER_ID,ITEM_ID,UNIT_ID,PRICE,QUANTITY,AMOUNT,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (43,'SLS002',to_timestamp('01-OCT-18','DD-MON-RR HH.MI.SSXFF AM'),2,101,21,21,10,50,500,to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
REM INSERTING into TRX_INVENTORIES
SET DEFINE OFF;
Insert into TRX_INVENTORIES (TRX_ID,TRX_CODE,TRX_DATE,TRX_TYPE,ITEM_ID,UNIT_ID,QUANTITY_IN,QUANTITY_OUT,SALES_ID,INVENTORY_NOTES,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (4,'4',to_timestamp('23-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),2,21,21,0,555,62,'GENERATED AUTOMATICALLY FROM INVOICE',to_timestamp('23-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',to_timestamp('23-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA');
Insert into TRX_INVENTORIES (TRX_ID,TRX_CODE,TRX_DATE,TRX_TYPE,ITEM_ID,UNIT_ID,QUANTITY_IN,QUANTITY_OUT,SALES_ID,INVENTORY_NOTES,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (1,'INV001',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),1,21,21,20000,0,null,'Opeing Balance',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'هناء سليمان الخلفTEST');
Insert into TRX_INVENTORIES (TRX_ID,TRX_CODE,TRX_DATE,TRX_TYPE,ITEM_ID,UNIT_ID,QUANTITY_IN,QUANTITY_OUT,SALES_ID,INVENTORY_NOTES,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (2,'INV001',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),1,22,21,20000,0,null,'Opeing Balance',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
Insert into TRX_INVENTORIES (TRX_ID,TRX_CODE,TRX_DATE,TRX_TYPE,ITEM_ID,UNIT_ID,QUANTITY_IN,QUANTITY_OUT,SALES_ID,INVENTORY_NOTES,CREATE_DATE,CREATED_BY,MODIFY_DATE,MODIFIED_BY) values (3,'INV001',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),1,23,22,20000,0,null,'Opeing Balance',to_timestamp('21-NOV-18','DD-MON-RR HH.MI.SSXFF AM'),'PHARMA',null,null);
--------------------------------------------------------
--  DDL for Index CFG_DUES_AGING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_DUES_AGING_PK" ON "CFG_DUES_AGING" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_DUES_AGING_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_DUES_AGING_U01" ON "CFG_DUES_AGING" ("FROM_DAYS_NO", "TO_DAYS_NO") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_ITEM_UNITS_MIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_ITEM_UNITS_MIN_PK" ON "CFG_ITEM_UNITS_MIN" ("ITEM_ID", "UNIT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_TARGET_CUSTOMERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_TARGET_CUSTOMERS_PK" ON "CFG_TARGET_CUSTOMERS" ("TARGET_CUST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_TARGET_CUSTOMERS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_TARGET_CUSTOMERS_U01" ON "CFG_TARGET_CUSTOMERS" ("TARGET_SEC_ID", "CUSTOMER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_TARGET_MASTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_TARGET_MASTER_PK" ON "CFG_TARGET_MASTER" ("TRG_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_TARGET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_TARGET_PK" ON "CFG_TARGET" ("TRX_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_TARGET_SECTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_TARGET_SECTIONS_PK" ON "CFG_TARGET_SECTIONS" ("TRG_SEC_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_TARGET_SECTIONS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "CFG_TARGET_SECTIONS_U01" ON "CFG_TARGET_SECTIONS" ("TARGET_ID", "SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_CUSTOMERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_CUSTOMERS_PK" ON "LKB_CUSTOMERS" ("CUSTOMER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_CUSTOMERS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_CUSTOMERS_U01" ON "LKB_CUSTOMERS" ("CUSTOMER_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_CUST_SECTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_CUST_SECTIONS_PK" ON "LKB_CUST_SECTIONS" ("SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_CUST_SECTIONS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_CUST_SECTIONS_U01" ON "LKB_CUST_SECTIONS" ("SECTION_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_ITEMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_ITEMS_PK" ON "LKB_ITEMS" ("ITEM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_ITEMS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_ITEMS_U01" ON "LKB_ITEMS" ("ITEM_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_JOB_TITLES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_JOB_TITLES_PK" ON "LKB_JOB_TITLES" ("TITLE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_MANUFACTURERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_MANUFACTURERS_PK" ON "LKB_MANUFACTURERS" ("MNF_ID") 
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
--  DDL for Index LKB_REPS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_REPS_PK" ON "LKB_REPS" ("REP_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_REPS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_REPS_U01" ON "LKB_REPS" ("REP_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_SUPPLIERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_SUPPLIERS_PK" ON "LKB_SUPPLIERS" ("SUPPLIER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LKB_SUPPLIERS_U01
--------------------------------------------------------

  CREATE UNIQUE INDEX "LKB_SUPPLIERS_U01" ON "LKB_SUPPLIERS" ("SUPPLIER_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index PS_TXN_IDX
--------------------------------------------------------

  CREATE INDEX "PS_TXN_IDX" ON "PS_TXN" ("COLLID", "ID") REVERSE 
  ;
--------------------------------------------------------
--  DDL for Index RTN_ITEM_SUPPLIERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RTN_ITEM_SUPPLIERS_PK" ON "RTN_ITEMS_SUPPLIERS" ("ITEM_ID", "SUPPLIER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RTN_REPS_CUSTOMERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RTN_REPS_CUSTOMERS_PK" ON "RTN_REPS_CUSTOMERS" ("REP_ID", "CUSTOMER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RTN_REPS_ITEMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RTN_REPS_ITEMS_PK" ON "RTN_REPS_ITEMS" ("REP_ID", "ITEM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TRX_CUST_PAYMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TRX_CUST_PAYMENTS_PK" ON "TRX_CUST_PAYMENTS" ("TRX_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TRX_DAILY_SALES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TRX_DAILY_SALES_PK" ON "TRX_DAILY_SALES" ("TRX_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TRX_INVENTORIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TRX_INVENTORIES_PK" ON "TRX_INVENTORIES" ("TRX_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table LKB_MANUFACTURERS
--------------------------------------------------------

  ALTER TABLE "LKB_MANUFACTURERS" ADD CONSTRAINT "LKB_MANUFACTURERS_PK" PRIMARY KEY ("MNF_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_TARGET_SECTIONS
--------------------------------------------------------

  ALTER TABLE "CFG_TARGET_SECTIONS" ADD CONSTRAINT "CFG_TARGET_SECTIONS_PK" PRIMARY KEY ("TRG_SEC_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "CFG_TARGET_SECTIONS" ADD CONSTRAINT "CFG_TARGET_SECTIONS_U01" UNIQUE ("TARGET_ID", "SECTION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_ITEMS
--------------------------------------------------------

  ALTER TABLE "LKB_ITEMS" ADD CONSTRAINT "LKB_ITEMS_PK" PRIMARY KEY ("ITEM_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_ITEMS" ADD CONSTRAINT "LKB_ITEMS_U01" UNIQUE ("ITEM_NAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRX_CUST_PAYMENTS
--------------------------------------------------------

  ALTER TABLE "TRX_CUST_PAYMENTS" MODIFY ("CUSTOMER_ID" CONSTRAINT "TRX_CUST_PAYMENTS_C01" NOT NULL ENABLE);
  ALTER TABLE "TRX_CUST_PAYMENTS" MODIFY ("PAYMENT_AMOUNT" CONSTRAINT "TRX_CUST_PAYMENTS_C02" NOT NULL ENABLE);
  ALTER TABLE "TRX_CUST_PAYMENTS" ADD CONSTRAINT "TRX_CUST_PAYMENTS_PK" PRIMARY KEY ("TRX_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "LKB_CUSTOMERS" ADD CONSTRAINT "LKB_CUSTOMERS_PK" PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_CUSTOMERS" ADD CONSTRAINT "LKB_CUSTOMERS_U01" UNIQUE ("CUSTOMER_NAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_DUES_AGING
--------------------------------------------------------

  ALTER TABLE "CFG_DUES_AGING" ADD CONSTRAINT "CFG_DUES_AGING_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
  ALTER TABLE "CFG_DUES_AGING" ADD CONSTRAINT "CFG_DUES_AGING_U01" UNIQUE ("FROM_DAYS_NO", "TO_DAYS_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_ITEM_UNITS_MIN
--------------------------------------------------------

  ALTER TABLE "CFG_ITEM_UNITS_MIN" ADD CONSTRAINT "CFG_ITEM_UNITS_MIN_PK" PRIMARY KEY ("ITEM_ID", "UNIT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_SUPPLIERS
--------------------------------------------------------

  ALTER TABLE "LKB_SUPPLIERS" ADD CONSTRAINT "LKB_SUPPLIERS_PK" PRIMARY KEY ("SUPPLIER_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_SUPPLIERS" ADD CONSTRAINT "LKB_SUPPLIERS_U01" UNIQUE ("SUPPLIER_NAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RTN_REPS_CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "RTN_REPS_CUSTOMERS" ADD CONSTRAINT "RTN_REPS_CUSTOMERS_PK" PRIMARY KEY ("REP_ID", "CUSTOMER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_JOB_TITLES
--------------------------------------------------------

  ALTER TABLE "LKB_JOB_TITLES" ADD CONSTRAINT "LKB_JOB_TITLES_PK" PRIMARY KEY ("TITLE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PS_TXN
--------------------------------------------------------

  ALTER TABLE "PS_TXN" ADD CONSTRAINT "PS_TXN_PK" PRIMARY KEY ("COLLID", "ID")
  USING INDEX (CREATE INDEX "PS_TXN_IDX" ON "PS_TXN" ("COLLID", "ID") REVERSE 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table RTN_REPS_ITEMS
--------------------------------------------------------

  ALTER TABLE "RTN_REPS_ITEMS" ADD CONSTRAINT "RTN_REPS_ITEMS_PK" PRIMARY KEY ("REP_ID", "ITEM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_TARGET_MASTER
--------------------------------------------------------

  ALTER TABLE "CFG_TARGET_MASTER" ADD CONSTRAINT "CFG_TARGET_MASTER_PK" PRIMARY KEY ("TRG_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_REPS
--------------------------------------------------------

  ALTER TABLE "LKB_REPS" ADD CONSTRAINT "LKB_REPS_PK" PRIMARY KEY ("REP_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_REPS" ADD CONSTRAINT "LKB_REPS_U01" UNIQUE ("REP_NAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_UNITS
--------------------------------------------------------

  ALTER TABLE "LKB_UNITS" ADD CONSTRAINT "LKB_PROD_UNITS_PK" PRIMARY KEY ("UNIT_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_UNITS" ADD CONSTRAINT "LKB_PROD_UNITS_U01" UNIQUE ("UNIT_NAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_TARGET
--------------------------------------------------------

  ALTER TABLE "CFG_TARGET" MODIFY ("TRX_ID" NOT NULL ENABLE);
  ALTER TABLE "CFG_TARGET" MODIFY ("ITEM_ID" CONSTRAINT "CFG_TARGET_C01" NOT NULL ENABLE);
  ALTER TABLE "CFG_TARGET" MODIFY ("REP_ID" CONSTRAINT "CFG_TARGET_C02" NOT NULL ENABLE);
  ALTER TABLE "CFG_TARGET" ADD CONSTRAINT "CFG_TARGET_PK" PRIMARY KEY ("TRX_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LKB_CUST_SECTIONS
--------------------------------------------------------

  ALTER TABLE "LKB_CUST_SECTIONS" ADD CONSTRAINT "LKB_CUST_SECTIONS_PK" PRIMARY KEY ("SECTION_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "LKB_CUST_SECTIONS" ADD CONSTRAINT "LKB_CUST_SECTIONS_U01" UNIQUE ("SECTION_NAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RTN_ITEMS_SUPPLIERS
--------------------------------------------------------

  ALTER TABLE "RTN_ITEMS_SUPPLIERS" ADD CONSTRAINT "RTN_ITEM_SUPPLIERS_PK" PRIMARY KEY ("ITEM_ID", "SUPPLIER_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRX_DAILY_SALES
--------------------------------------------------------

  ALTER TABLE "TRX_DAILY_SALES" ADD CONSTRAINT "TRX_DAILY_SALES_PK" PRIMARY KEY ("TRX_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRX_INVENTORIES
--------------------------------------------------------

  ALTER TABLE "TRX_INVENTORIES" ADD CONSTRAINT "TRX_INVENTORIES_PK" PRIMARY KEY ("TRX_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_TARGET_CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "CFG_TARGET_CUSTOMERS" ADD CONSTRAINT "CFG_TARGET_CUSTOMERS_PK" PRIMARY KEY ("TARGET_CUST_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "CFG_TARGET_CUSTOMERS" ADD CONSTRAINT "CFG_TARGET_CUSTOMERS_U01" UNIQUE ("TARGET_SEC_ID", "CUSTOMER_ID")
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
  ALTER TABLE "CFG_TARGET" ADD CONSTRAINT "CFG_TARGET_R04" FOREIGN KEY ("TRG_ID")
	  REFERENCES "CFG_TARGET_MASTER" ("TRG_ID") ENABLE;
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
--  Ref Constraints for Table TRX_CUST_PAYMENTS
--------------------------------------------------------

  ALTER TABLE "TRX_CUST_PAYMENTS" ADD CONSTRAINT "TRX_CUST_PAYMENTS_R01" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "LKB_CUSTOMERS" ("CUSTOMER_ID") ENABLE;
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
  ALTER TABLE "TRX_INVENTORIES" ADD CONSTRAINT "TRX_INVENTORIES_R03" FOREIGN KEY ("SALES_ID")
	  REFERENCES "TRX_DAILY_SALES" ("TRX_ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger CFG_DUES_AGING_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CFG_DUES_AGING_TRG" 
BEFORE INSERT
ON PHARMA.CFG_DUES_AGING
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
IF  :new.ID IS NULL THEN
-- For Toad:  Highlight column ID
  :new.ID := CFG_DUES_AGING_SEQ.nextval;
  END IF;
END CFG_DUES_AGING_TRG;
/
ALTER TRIGGER "CFG_DUES_AGING_TRG" ENABLE;
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
--  DDL for Trigger CFG_TARGET_MASTER_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CFG_TARGET_MASTER_TRG" 
BEFORE INSERT
ON PHARMA.CFG_TARGET_MASTER
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
IF :new.TRG_ID IS NULL THEN
-- For Toad:  Highlight column TRG_ID
  :new.TRG_ID := CFG_TARGET_MASTER_SEQ.nextval;
  END IF;
END CFG_TARGET_MASTER_TRG;
/
ALTER TRIGGER "CFG_TARGET_MASTER_TRG" ENABLE;
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

IF :new.TRG_SEC_ID IS NULL THEN
  :new.TRG_SEC_ID := CFG_TARGET_SECTIONS_SEQ.nextval;
 END IF;
END CFG_TARGET_SECTIONS_TRG;
/
ALTER TRIGGER "CFG_TARGET_SECTIONS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CFG_TARGET_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CFG_TARGET_TRG" 
BEFORE INSERT
ON PHARMA.CFG_TARGET
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
IF :new.TRX_ID IS NULL THEN
-- For Toad:  Highlight column TRX_ID
  :new.TRX_ID := CFG_TARGET_SEQ.nextval;
  END IF;
END CFG_TARGET_TRG;
/
ALTER TRIGGER "CFG_TARGET_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LKB_CUSTOMERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LKB_CUSTOMERS_TRG" 
BEFORE INSERT
ON PHARMA.LKB_CUSTOMERS
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
ON PHARMA.LKB_CUST_SECTIONS
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
ON PHARMA.LKB_ITEMS
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN
-- For Toad:  Highlight column ITEM_ID
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
ON PHARMA.LKB_UNITS
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
ON PHARMA.LKB_JOB_TITLES
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
ON PHARMA.LKB_MANUFACTURERS
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
ON PHARMA.LKB_REPS
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
ON PHARMA.LKB_SUPPLIERS
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
--  DDL for Trigger TRX_CUST_PAYMENTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRX_CUST_PAYMENTS_TRG" 
BEFORE INSERT
ON PHARMA.TRX_CUST_PAYMENTS
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
IF :new.TRX_ID IS NULL THEN
-- For Toad:  Highlight column TRX_ID
  :new.TRX_ID := TRX_CUST_PAYMENTS_SEQ.nextval;
  END IF;
END TRX_CUST_PAYMENTS_TRG;
/
ALTER TRIGGER "TRX_CUST_PAYMENTS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRX_DAILY_SALES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRX_DAILY_SALES_TRG" 
BEFORE INSERT
ON PHARMA.TRX_DAILY_SALES
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
ON PHARMA.TRX_INVENTORIES
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
--------------------------------------------------------
--  DDL for Trigger TRX_SALES_INVENT_PROCESS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRX_SALES_INVENT_PROCESS_TRG" 
   AFTER INSERT OR UPDATE
   ON TRX_DAILY_SALES
   REFERENCING NEW AS New OLD AS Old
   FOR EACH ROW

DECLARE
   I_SALES_ID   NUMBER;
/******************************************************************************
   NAME:       TRX_SALES_INVENT_PROCESS_TRG
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        23/11/2018      ali_alwaly       1. Created this trigger.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     TRX_SALES_INVENT_PROCESS_TRG
      Sysdate:         23/11/2018
      Date and Time:   23/11/2018, 08:02:52 �, and 23/11/2018 08:02:52 �
      Username:        ali_alwaly (set in TOAD Options, Proc Templates)
      Table Name:      TRX_DAILY_SALES (set in the "New PL/SQL Object" dialog)
      Trigger Options:  (set in the "New PL/SQL Object" dialog)
******************************************************************************/

BEGIN
   I_SALES_ID := :NEW.TRX_ID;

   IF INSERTING
   THEN
      INSERT INTO TRX_INVENTORIES (TRX_CODE,
                                   TRX_DATE,
                                   TRX_TYPE,
                                   ITEM_ID,
                                   UNIT_ID,
                                   QUANTITY_IN,
                                   QUANTITY_OUT,
                                   SALES_ID,
                                   INVENTORY_NOTES,
                                   CREATE_DATE,
                                   CREATED_BY)
           VALUES (:NEW.TRX_CODE,
                   :NEW.TRX_DATE,
                   2,
                   :NEW.ITEM_ID,
                   :NEW.UNIT_ID,
                   0,
                   :NEW.QUANTITY,
                   I_SALES_ID,
                   'GENERATED AUTOMATICALLY FROM INVOICE',
                   SYSDATE,
                   USER);
   ELSIF UPDATING
   THEN
      UPDATE TRX_INVENTORIES
         SET TRX_CODE = :NEW.TRX_CODE,
             TRX_DATE = :NEW.TRX_DATE,
             ITEM_ID = :NEW.ITEM_ID,
             UNIT_ID = :NEW.UNIT_ID,
             QUANTITY_OUT = :NEW.QUANTITY,
             MODIFY_DATE = SYSDATE,
             MODIFIED_BY = USER
       WHERE SALES_ID = I_SALES_ID;
   END IF;
EXCEPTION
   WHEN OTHERS
   THEN
      RAISE;
END TRX_SALES_INVENT_PROCESS_TRG;
/
ALTER TRIGGER "TRX_SALES_INVENT_PROCESS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Package DUES_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "DUES_PKG" 
AS
   /******************************************************************************
      NAME:       DUES_PKG
      PURPOSE:

      REVISIONS:
      Ver        Date        Author           Description
      ---------  ----------  ---------------  ------------------------------------
      1.0        30/09/2018      Administrator       1. Created this package.
   ******************************************************************************/



   FUNCTION CUST_AGING_PERIODICALLY
      RETURN CUST_DUES_AGING_TABLE
      PIPELINED;

   FUNCTION CUST_AGING_MONTHLY
      RETURN CUST_DUES_AGING_TABLE
      PIPELINED;

   FUNCTION SUPP_AGING_PERIODICALLY
      RETURN SUPP_DUES_AGING_TABLE
      PIPELINED;

   FUNCTION SUPP_AGING_MONTHLY
      RETURN SUPP_DUES_AGING_TABLE
      PIPELINED;
END DUES_PKG;

/
--------------------------------------------------------
--  DDL for Package Body DUES_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "DUES_PKG" 
AS
   /******************************************************************************
      NAME:       DUES_PKG
      PURPOSE:

      REVISIONS:
      Ver        Date        Author           Description
      ---------  ----------  ---------------  ------------------------------------
      1.0        30/09/2018      Administrator       1. Created this package.
   ******************************************************************************/
   TYPE CUST_AGE_RECORD IS RECORD
   (
      CUSTOMER_ID     NUMBER,
      CUSTOMER_NAME   VARCHAR2 (500),
      DUE_AGE         VARCHAR2 (100),              -- EXAMPLE 0_30,30_60...etc
      DUE_AMOUNT      NUMBER
   );

   TYPE CUST_AGE_TABLE IS TABLE OF CUST_AGE_RECORD
      INDEX BY PLS_INTEGER;

   TYPE SUPP_AGE_RECORD IS RECORD
   (
      SUPPLIER_ID     NUMBER,
      SUPPLIER_NAME   VARCHAR2 (500),
      DUE_AGE         VARCHAR2 (100),              -- EXAMPLE 0_30,30_60...etc
      DUE_AMOUNT      NUMBER
   );

   TYPE SUPP_AGE_TABLE IS TABLE OF SUPP_AGE_RECORD
      INDEX BY PLS_INTEGER;

   FUNCTION CUST_AGING_PERIODICALLY
      RETURN CUST_DUES_AGING_TABLE
      PIPELINED
   IS
      /*AGING_TABLE   CUST_AGE_TABLE;
      DUES_QUERY    CLOB := EMPTY_CLOB ();*/
      TOT_DUE  NUMBER;
      AGE_DUE NUMBER;
      
      CURSOR DUES_AGING_CURSOR IS
      SELECT FROM_DAYS_NO FROM_DAY,
             TO_DAYS_NO TO_DAY,
             FROM_DAYS_NO ||'  - '||   TO_DAYS_NO || ' Days' PERIOD_NAME
      FROM CFG_DUES_AGING;
      
      CURSOR CUST_TOT_DUES_CURSOR IS
      SELECT CUSTOMER_ID,
                   CUSTOMER_NAME,
                   TOTAL_DUE
       FROM CUSTOMER_TOTAL_DUES_V;
       
   BEGIN
      FOR CUST_TOT_DUE_RECORD IN CUST_TOT_DUES_CURSOR LOOP
            FOR CUST_INVOICES_RECORD IN (
                    SELECT SALES.CUSTOMER_ID, 
                              TRUNC(SYSDATE - SALES.TRX_DATE) TRX_DAYS, 
                              SALES.AMOUNT
                    FROM TRX_DAILY_SALES SALES
                    WHERE CUSTOMER_ID = CUST_TOT_DUE_RECORD.CUSTOMER_ID
                    ORDER BY SALES.TRX_DATE DESC) 
                LOOP  
                 IF TOT_DUE IS NULL OR TOT_DUE = 0 THEN 
                 TOT_DUE := CUST_TOT_DUE_RECORD.TOTAL_DUE;
                 END IF;
                       FOR DUES_AGING_RECORD IN DUES_AGING_CURSOR LOOP
                          AGE_DUE := 0;
                          IF CUST_INVOICES_RECORD.TRX_DAYS > DUES_AGING_RECORD.FROM_DAY 
                                            AND CUST_INVOICES_RECORD.TRX_DAYS <= DUES_AGING_RECORD.TO_DAY THEN
                                                DBMS_OUTPUT.PUT_LINE('TOT_DUE = '||TOT_DUE||' AND CUST_INVOICES_RECORD.AMOUNT = '||CUST_INVOICES_RECORD.AMOUNT);                                            
                                                IF TOT_DUE >= CUST_INVOICES_RECORD.AMOUNT THEN            
                                                    AGE_DUE:=AGE_DUE+CUST_INVOICES_RECORD.AMOUNT;
                                                    TOT_DUE:= TOT_DUE - CUST_INVOICES_RECORD.AMOUNT;       
                                                 ELSE
                                                    AGE_DUE:=AGE_DUE+TOT_DUE;
                                                    TOT_DUE:=0;
                                                END IF;
                                                     
                                                PIPE ROW (CUST_DUES_AGING_TYPE (CUST_TOT_DUE_RECORD.CUSTOMER_ID,
                                                             CUST_TOT_DUE_RECORD.CUSTOMER_NAME,
                                                             DUES_AGING_RECORD.PERIOD_NAME,
                                                             AGE_DUE));
                                                                                      
                                         END IF;
                                         EXIT WHEN CUST_INVOICES_RECORD.TRX_DAYS > DUES_AGING_RECORD.FROM_DAY 
                                            AND CUST_INVOICES_RECORD.TRX_DAYS <= DUES_AGING_RECORD.TO_DAY;
                    END LOOP;     
                    EXIT WHEN TOT_DUE = 0; 
                END LOOP;
      END LOOP;
      /*DUES_QUERY := 'SELECT NULL , NULL , NULL,NULL FROM DUAL WHERE 1 = 2 ';
      EXECUTE IMMEDIATE DUES_QUERY BULK COLLECT INTO AGING_TABLE;
      FOR i IN 1 .. AGING_TABLE.COUNT
      LOOP
         PIPE ROW (CUST_DUES_AGING_TYPE (AGING_TABLE (i).CUSTOMER_ID,
                                         AGING_TABLE (i).CUSTOMER_NAME,
                                         AGING_TABLE (i).DUE_AGE,
                                         AGING_TABLE (i).DUE_AMOUNT));
      END LOOP;
      AGING_TABLE.DELETE;*/
      RETURN;
   EXCEPTION
      WHEN OTHERS
      THEN
         RETURN;
   END;
FUNCTION CUST_AGING_MONTHLY
      RETURN CUST_DUES_AGING_TABLE
      PIPELINED
   IS
      TOT_DUE  NUMBER;
      AGE_DUE NUMBER;
      
      CURSOR DUES_AGING_CURSOR IS
      SELECT TO_CHAR(SALES.TRX_DATE,'MM-YYYY') TRX_DATE
      FROM TRX_DAILY_SALES SALES
      ORDER BY SALES.TRX_DATE;
      
      CURSOR CUST_TOT_DUES_CURSOR IS
      SELECT CUSTOMER_ID,
                   CUSTOMER_NAME,
                   TOTAL_DUE
       FROM CUSTOMER_TOTAL_DUES_V;
       
   BEGIN
      FOR CUST_TOT_DUE_RECORD IN CUST_TOT_DUES_CURSOR LOOP
            FOR CUST_INVOICES_RECORD IN (
                    SELECT SALES.CUSTOMER_ID, 
                              TO_CHAR(SALES.TRX_DATE,'MM-YYYY') TRX_DAYS, 
                              SALES.AMOUNT
                    FROM TRX_DAILY_SALES SALES
                    WHERE CUSTOMER_ID = CUST_TOT_DUE_RECORD.CUSTOMER_ID
                    ORDER BY SALES.TRX_DATE DESC) 
                LOOP  
                 IF TOT_DUE IS NULL OR TOT_DUE = 0 THEN 
                 TOT_DUE := CUST_TOT_DUE_RECORD.TOTAL_DUE;
                 END IF;
                       FOR DUES_AGING_RECORD IN DUES_AGING_CURSOR LOOP
                          AGE_DUE := 0;
                          IF CUST_INVOICES_RECORD.TRX_DAYS = DUES_AGING_RECORD.TRX_DATE  THEN
                                                DBMS_OUTPUT.PUT_LINE('TOT_DUE = '||TOT_DUE||' AND CUST_INVOICES_RECORD.AMOUNT = '||CUST_INVOICES_RECORD.AMOUNT);                                            
                                                IF TOT_DUE >= CUST_INVOICES_RECORD.AMOUNT THEN            
                                                    AGE_DUE:=AGE_DUE+CUST_INVOICES_RECORD.AMOUNT;
                                                    TOT_DUE:= TOT_DUE - CUST_INVOICES_RECORD.AMOUNT;       
                                                 ELSE
                                                    AGE_DUE:=AGE_DUE+TOT_DUE;
                                                    TOT_DUE:=0;
                                                END IF;
                                                     
                                                PIPE ROW (CUST_DUES_AGING_TYPE (CUST_TOT_DUE_RECORD.CUSTOMER_ID,
                                                             CUST_TOT_DUE_RECORD.CUSTOMER_NAME,
                                                             DUES_AGING_RECORD.TRX_DATE,
                                                             AGE_DUE));
                                                                                      
                                         END IF;
                                         EXIT WHEN CUST_INVOICES_RECORD.TRX_DAYS = DUES_AGING_RECORD.TRX_DATE;
                    END LOOP;     
                    EXIT WHEN TOT_DUE = 0; 
                END LOOP;
      END LOOP;
      RETURN;
   EXCEPTION
      WHEN OTHERS
      THEN
         RETURN;
   END;

   FUNCTION SUPP_AGING_PERIODICALLY
      RETURN SUPP_DUES_AGING_TABLE
      PIPELINED
   IS
      AGING_TABLE   SUPP_AGE_TABLE;
      DUES_QUERY    CLOB := EMPTY_CLOB ();
   BEGIN
      DUES_QUERY := 'SELECT NULL , NULL , NULL,NULL FROM DUAL WHERE 1 = 1 ';

      EXECUTE IMMEDIATE DUES_QUERY BULK COLLECT INTO AGING_TABLE;

      FOR i IN 1 .. AGING_TABLE.COUNT
      LOOP
         PIPE ROW (SUPP_DUES_AGING_TYPE (AGING_TABLE (i).SUPPLIER_ID,
                                         AGING_TABLE (i).SUPPLIER_NAME,
                                         AGING_TABLE (i).DUE_AGE,
                                         AGING_TABLE (i).DUE_AMOUNT));
      END LOOP;

      AGING_TABLE.DELETE;
      RETURN;
   EXCEPTION
      WHEN OTHERS
      THEN
         NULL;
   END;
   FUNCTION SUPP_AGING_MONTHLY
      RETURN SUPP_DUES_AGING_TABLE
      PIPELINED
   IS
      AGING_TABLE   SUPP_AGE_TABLE;
      DUES_QUERY    CLOB := EMPTY_CLOB ();
   BEGIN
      DUES_QUERY := 'SELECT NULL , NULL , NULL,NULL FROM DUAL WHERE 1 = 1 ';

      EXECUTE IMMEDIATE DUES_QUERY BULK COLLECT INTO AGING_TABLE;

      FOR i IN 1 .. AGING_TABLE.COUNT
      LOOP
         PIPE ROW (SUPP_DUES_AGING_TYPE (AGING_TABLE (i).SUPPLIER_ID,
                                         AGING_TABLE (i).SUPPLIER_NAME,
                                         AGING_TABLE (i).DUE_AGE,
                                         AGING_TABLE (i).DUE_AMOUNT));
      END LOOP;

      AGING_TABLE.DELETE;
      RETURN;
   EXCEPTION
      WHEN OTHERS
      THEN
         NULL;
   END;
END DUES_PKG;

/
--------------------------------------------------------
--  DDL for Procedure ALI_DEBUG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "ALI_DEBUG" 
IS
  XXX CUST_DUES_AGING_TABLE;
BEGIN
SELECT DUES_PKG.CUST_AGING_PERIODICALLY INTO XXX FROM DUAL;
END;

/
