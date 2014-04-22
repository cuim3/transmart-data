--
-- Type: TABLE; Owner: DEAPP; Name: ANNOTATION
--
 CREATE TABLE "DEAPP"."ANNOTATION" 
  (	"SNP_ID" VARCHAR2(200 BYTE), 
"RS_ID" VARCHAR2(200 BYTE), 
"CHROM" VARCHAR2(10 BYTE), 
"POS" NUMBER
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;