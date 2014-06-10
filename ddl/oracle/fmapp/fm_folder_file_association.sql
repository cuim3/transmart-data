--
-- Type: TABLE; Owner: FMAPP; Name: FM_FOLDER_FILE_ASSOCIATION
--
 CREATE TABLE "FMAPP"."FM_FOLDER_FILE_ASSOCIATION" 
  (	"FOLDER_ID" NUMBER(18,0) NOT NULL ENABLE, 
"FILE_ID" NUMBER(18,0) NOT NULL ENABLE, 
 CONSTRAINT "PK_FOLDER_FILE_ASSOC" PRIMARY KEY ("FOLDER_ID", "FILE_ID")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;
--
-- Type: REF_CONSTRAINT; Owner: FMAPP; Name: FK_FM_FOLDER_FM_FOLDER
--
ALTER TABLE "FMAPP"."FM_FOLDER_FILE_ASSOCIATION" ADD CONSTRAINT "FK_FM_FOLDER_FM_FOLDER" FOREIGN KEY ("FOLDER_ID")
 REFERENCES "FMAPP"."FM_FOLDER" ("FOLDER_ID") ENABLE;
--
-- Type: REF_CONSTRAINT; Owner: FMAPP; Name: FK_FOLDER_FILE_ASSOC_FILE
--
ALTER TABLE "FMAPP"."FM_FOLDER_FILE_ASSOCIATION" ADD CONSTRAINT "FK_FOLDER_FILE_ASSOC_FILE" FOREIGN KEY ("FILE_ID")
 REFERENCES "FMAPP"."FM_FILE" ("FILE_ID") ENABLE;