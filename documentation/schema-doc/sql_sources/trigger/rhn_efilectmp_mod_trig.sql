-- created by Oraschemadoc Wed Aug 30 22:57:45 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_EFILECTMP_MOD_TRIG" 
before insert or update on rhnErrataFileChannelTmp
for each row
begin
	:new.modified := current_timestamp;
end rhn_efilectmp_mod_trig;
ALTER TRIGGER "SPACEUSER"."RHN_EFILECTMP_MOD_TRIG" ENABLE
/
