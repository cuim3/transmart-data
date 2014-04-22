--
-- Type: TABLE; Owner: DEAPP; Name: DE_SUBJECT_MICROARRAY_DATA_OLD
--
 CREATE TABLE "DEAPP"."DE_SUBJECT_MICROARRAY_DATA_OLD" 
  (	"TRIAL_SOURCE" VARCHAR2(200 BYTE), 
"TRIAL_NAME" VARCHAR2(50 BYTE), 
"PROBESET_ID" NUMBER(22,0), 
"ASSAY_ID" NUMBER(18,0), 
"PATIENT_ID" NUMBER(18,0), 
"RAW_INTENSITY" NUMBER(18,4), 
"LOG_INTENSITY" NUMBER(18,4), 
"ZSCORE" NUMBER(18,4)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;
--
-- Type: INDEX; Owner: DEAPP; Name: IDX_DE_MICROARRAY_DATA_2
--
CREATE INDEX "DEAPP"."IDX_DE_MICROARRAY_DATA_2" ON "DEAPP"."DE_SUBJECT_MICROARRAY_DATA_OLD" ("ASSAY_ID", "PROBESET_ID")
TABLESPACE "USERS" ;
--
-- Type: INDEX; Owner: DEAPP; Name: IDX_DE_MICROARRAY_DATA_1
--
CREATE INDEX "DEAPP"."IDX_DE_MICROARRAY_DATA_1" ON "DEAPP"."DE_SUBJECT_MICROARRAY_DATA_OLD" ("TRIAL_NAME", "ASSAY_ID", "PROBESET_ID")
TABLESPACE "USERS" ;