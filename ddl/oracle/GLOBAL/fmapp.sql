--
-- Type: USER; Name: FMAPP
--
CREATE USER "FMAPP" IDENTIFIED BY VALUES 'S:2AFD1E3EB1A960DE3051FCAEEF5E3AEB06302157ADD0D3240063327453F3;D684DB54467F1F56'
   DEFAULT TABLESPACE "TRANSMART"
   TEMPORARY TABLESPACE "TEMP";
--
-- Type: ROLE_GRANT; Name: FMAPP
--
--
-- Type: SYSTEM_GRANT; Name: FMAPP
--
--
-- Type: TABLESPACE_QUOTA; Name: FMAPP
--
  DECLARE 
  TEMP_COUNT NUMBER; 
  SQLSTR VARCHAR2(200); 
BEGIN 
  SQLSTR := 'ALTER USER "FMAPP" QUOTA UNLIMITED ON "TRANSMART"';
  EXECUTE IMMEDIATE SQLSTR;
EXCEPTION 
  WHEN OTHERS THEN
    IF SQLCODE = -30041 THEN 
      SQLSTR := 'SELECT COUNT(*) FROM USER_TABLESPACES 
              WHERE TABLESPACE_NAME = ''TRANSMART'' AND CONTENTS = ''TEMPORARY''';
      EXECUTE IMMEDIATE SQLSTR INTO TEMP_COUNT;
      IF TEMP_COUNT = 1 THEN RETURN; 
      ELSE RAISE; 
      END IF;
    ELSE
      RAISE;
    END IF;
END;
/
