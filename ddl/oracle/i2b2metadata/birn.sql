--
-- Type: TABLE; Owner: I2B2METADATA; Name: BIRN
--
 CREATE TABLE "I2B2METADATA"."BIRN" 
  (	"C_HLEVEL" NUMBER(22,0), 
"C_FULLNAME" VARCHAR2(700 BYTE) NOT NULL ENABLE, 
"C_NAME" VARCHAR2(2000 BYTE), 
"C_SYNONYM_CD" CHAR(1 BYTE), 
"C_VISUALATTRIBUTES" CHAR(3 BYTE), 
"C_TOTALNUM" NUMBER(22,0), 
"C_BASECODE" VARCHAR2(50 BYTE), 
"C_METADATAXML" CLOB, 
"C_FACTTABLECOLUMN" VARCHAR2(50 BYTE), 
"C_TABLENAME" VARCHAR2(50 BYTE), 
"C_COLUMNNAME" VARCHAR2(50 BYTE), 
"C_COLUMNDATATYPE" VARCHAR2(50 BYTE), 
"C_OPERATOR" VARCHAR2(10 BYTE), 
"C_DIMCODE" VARCHAR2(700 BYTE), 
"C_COMMENT" CLOB, 
"C_TOOLTIP" VARCHAR2(900 BYTE), 
"M_APPLIED_PATH" VARCHAR2(700 BYTE),
"UPDATE_DATE" DATE NOT NULL ENABLE, 
"DOWNLOAD_DATE" DATE, 
"IMPORT_DATE" DATE, 
"SOURCESYSTEM_CD" VARCHAR2(50 BYTE), 
"VALUETYPE_CD" VARCHAR2(50 BYTE), 
"M_EXCLUSION_CD" VARCHAR2(25 BYTE), 
"C_PATH" VARCHAR2(700 BYTE), 
"C_SYMBOL" VARCHAR2(50 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" 
LOB ("C_METADATAXML") STORE AS BASICFILE (
 TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
 NOCACHE NOLOGGING ) 
LOB ("C_COMMENT") STORE AS BASICFILE (
 TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
 NOCACHE NOLOGGING ) ;
--
-- Type: INDEX; Owner: I2B2METADATA; Name: IDX_I2B2_B
--
CREATE INDEX "I2B2METADATA"."IDX_BIRN_B" ON "I2B2METADATA"."BIRN" ("C_BASECODE")
TABLESPACE "USERS" ;

--
-- Type: INDEX; Owner: I2B2METADATA; Name: IDX_I2B2_FULLNAME_BASECODE
--
CREATE INDEX "I2B2METADATA"."IDX_BIRN_FULLNAME_BASECODE" ON "I2B2METADATA"."BIRN" ("C_FULLNAME", "C_BASECODE")
TABLESPACE "USERS" ;
--
-- Type: INDEX; Owner: I2B2METADATA; Name: I2B2_IDX1
--
CREATE INDEX "I2B2METADATA"."BIRN_IDX1" ON "I2B2METADATA"."BIRN" ("C_FULLNAME")
TABLESPACE "USERS" ;
--
-- Type: INDEX; Owner: I2B2METADATA; Name: META_APPLIED_PATH_I2B2_IDX
--
CREATE INDEX "I2B2METADATA"."META_APPLIED_PATH_BIRN_IDX" ON "I2B2METADATA"."BIRN" ("M_APPLIED_PATH")
TABLESPACE "USERS" ;