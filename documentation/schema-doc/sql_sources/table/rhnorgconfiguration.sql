-- created by Oraschemadoc Wed Aug 30 22:56:45 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNORGCONFIGURATION" 
   (	"ORG_ID" NUMBER NOT NULL ENABLE, 
	"STAGING_CONTENT_ENABLED" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"ERRATA_EMAILS_ENABLED" CHAR(1) DEFAULT ('Y') NOT NULL ENABLE, 
	"CRASH_REPORTING_ENABLED" CHAR(1) DEFAULT ('Y') NOT NULL ENABLE, 
	"CRASHFILE_UPLOAD_ENABLED" CHAR(1) DEFAULT ('Y') NOT NULL ENABLE, 
	"CRASH_FILE_SIZELIMIT" NUMBER DEFAULT (2048) NOT NULL ENABLE, 
	"SCAPFILE_UPLOAD_ENABLED" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"SCAP_FILE_SIZELIMIT" NUMBER DEFAULT (2097152) NOT NULL ENABLE, 
	"SCAP_RETENTION_PERIOD_DAYS" NUMBER DEFAULT (90), 
	"CREATE_DEFAULT_SG" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ORG_CONF_STAGE_CONTENT_CHK" CHECK (staging_content_enabled in ('Y', 'N')) ENABLE, 
	 CONSTRAINT "RHN_ORG_CONF_ERRATA_EMAILS_CHK" CHECK (errata_emails_enabled in ('Y', 'N')) ENABLE, 
	 CONSTRAINT "RHN_ORG_CONF_CRASH_REPORT_CHK" CHECK (crash_reporting_enabled in ('Y', 'N')) ENABLE, 
	 CONSTRAINT "RHN_ORG_CONF_CRASH_UPLOAD_CHK" CHECK (crashfile_upload_enabled in ('Y', 'N')) ENABLE, 
	 CONSTRAINT "RHN_ORG_CONF_SIZELIMIT_CHK" CHECK (crash_file_sizelimit >= 0) ENABLE, 
	 CONSTRAINT "RHN_ORG_CONF_SCAP_UPLOAD_CHK" CHECK (scapfile_upload_enabled in ('Y', 'N')) ENABLE, 
	 CONSTRAINT "RHN_ORG_CONF_SCAP_SZLMT_CHK" CHECK (scap_file_sizelimit >= 0) ENABLE, 
	 CONSTRAINT "RHN_ORG_CONF_SCAP_RETEN_CHK" CHECK (scap_retention_period_days >= 0) ENABLE, 
	 CONSTRAINT "RHN_ORG_CONG_DEFORG_CHK" CHECK (create_default_sg in ('Y', 'N')) ENABLE, 
	 CONSTRAINT "RHN_ORG_CONF_ORG_ID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/