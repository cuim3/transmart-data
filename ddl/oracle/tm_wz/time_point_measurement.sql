--
-- Type: TABLE; Owner: TM_WZ; Name: TIME_POINT_MEASUREMENT
--
 CREATE TABLE "TM_WZ"."TIME_POINT_MEASUREMENT" 
  (	"STUDY_ID" VARCHAR2(25 BYTE), 
"SITE_ID" VARCHAR2(100 BYTE), 
"SUBJECT_ID" VARCHAR2(200 BYTE), 
"SITE_SUBJ" VARCHAR2(20 BYTE), 
"VISIT_DATE" DATE, 
"VISIT_NAME" VARCHAR2(100 BYTE), 
"DATASET_NAME" VARCHAR2(200 BYTE), 
"ENDPOINT_FLAG" CHAR(1 BYTE), 
"SAMPLE_TYPE" VARCHAR2(100 BYTE), 
"DATA_LABEL" VARCHAR2(500 BYTE), 
"DATA_VALUE" VARCHAR2(500 BYTE), 
"CATEGORY_CD" VARCHAR2(200 BYTE), 
"UPDATED_VALUE" VARCHAR2(500 BYTE), 
"SUPPRESS_FLAG" CHAR(1 BYTE), 
"OPERATOR_FLAG" CHAR(1 BYTE), 
"VALUEFLAG_CD" CHAR(1 BYTE), 
"UNIT_CD" VARCHAR2(50 BYTE), 
"ETL_ID" VARCHAR2(50 BYTE), 
"DATA_TYPE" CHAR(1 BYTE), 
"USUBJID" VARCHAR2(50 BYTE), 
"PD_MARKER" VARCHAR2(200 BYTE), 
"PERIOD" VARCHAR2(100 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;
--
-- Type: INDEX; Owner: TM_WZ; Name: IDX_TPM_DATA_LABEL
--
CREATE INDEX "TM_WZ"."IDX_TPM_DATA_LABEL" ON "TM_WZ"."TIME_POINT_MEASUREMENT" ("DATA_LABEL")
TABLESPACE "USERS" ;
--
-- Type: INDEX; Owner: TM_WZ; Name: IDX_TPM_USUBJID
--
CREATE INDEX "TM_WZ"."IDX_TPM_USUBJID" ON "TM_WZ"."TIME_POINT_MEASUREMENT" ("USUBJID")
TABLESPACE "USERS" ;
--
-- Type: INDEX; Owner: TM_WZ; Name: IDX_TPM_CATEGORY_CD
--
CREATE INDEX "TM_WZ"."IDX_TPM_CATEGORY_CD" ON "TM_WZ"."TIME_POINT_MEASUREMENT" ("CATEGORY_CD")
TABLESPACE "USERS" ;