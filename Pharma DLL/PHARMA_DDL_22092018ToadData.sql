﻿SET DEFINE OFF;
Insert into LKB_CUST_SECTIONS
   (SECTION_ID, SECTION_CODE, SECTION_NAME, CREATE_DATE, CREATED_BY)
 Values
   (1, 'SEC-001', 'Pharmacies', TO_DATE('09/22/2018 00:11:01', 'MM/DD/YYYY HH24:MI:SS'), 'PHARMA');
Insert into LKB_CUST_SECTIONS
   (SECTION_ID, SECTION_CODE, SECTION_NAME, CREATE_DATE, CREATED_BY)
 Values
   (2, 'SEC-002', 'Large Animals', TO_DATE('09/22/2018 00:12:18', 'MM/DD/YYYY HH24:MI:SS'), 'PHARMA');
COMMIT;
