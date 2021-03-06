--
-- Type: VIEW; Owner: BIOMART; Name: BIO_MARKER_EXP_ANALYSIS_MV
--
CREATE OR REPLACE FORCE VIEW "BIOMART"."BIO_MARKER_EXP_ANALYSIS_MV" ("BIO_MARKER_ID", "BIO_EXPERIMENT_ID", "BIO_ASSAY_ANALYSIS_ID", "MV_ID") AS 
SELECT DISTINCT t3.bio_marker_id,
  t1.bio_experiment_id,
  t1.bio_assay_analysis_id,
  t1.bio_assay_analysis_id*100+t3.bio_marker_id
FROM BIO_ASSAY_ANALYSIS_DATA t1,
  BIO_EXPERIMENT t2,
  BIO_MARKER t3,
  BIO_ASSAY_DATA_ANNOTATION t4
WHERE t1.bio_experiment_id       = t2.bio_experiment_id
AND t2.bio_experiment_type       ='Experiment'
AND t3.bio_marker_id             =t4.bio_marker_id
AND t1.bio_assay_feature_group_id=t4.bio_assay_feature_group_id;

