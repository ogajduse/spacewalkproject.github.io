-- created by Oraschemadoc Wed Aug 30 22:57:48 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_VIRTINST_MOD_TRIG" 
before insert or update on rhnVirtualInstance
for each row
begin
        :new.modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."RHN_VIRTINST_MOD_TRIG" ENABLE
/
