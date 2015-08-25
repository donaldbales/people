-- set defaults and not null

alter table  identifiers                    alter column inactive_datetime set default '9999-12-31 23:59:59';

alter table  identifier_types               alter column inactive_datetime set default '9999-12-31 23:59:59';


alter table  industrial_hygiene_jobs        alter column inactive_datetime set default '9999-12-31 23:59:59';

alter table  industrial_hygiene_job_types   alter column inactive_datetime set default '9999-12-31 23:59:59';


alter table  locations                      alter column inactive_datetime set default '9999-12-31 23:59:59';

alter table  location_types                 alter column inactive_datetime set default '9999-12-31 23:59:59';


alter table  organizations                  alter column inactive_datetime set default '9999-12-31 23:59:59';

alter table  organization_types             alter column inactive_datetime set default '9999-12-31 23:59:59';


alter table  person_identifiers             alter column inactive_datetime set default '9999-12-31 23:59:59';

alter table  person_industrial_hygiene_jobs alter column inactive_datetime set default '9999-12-31 23:59:59';
            
alter table  person_locations               alter column inactive_datetime set default '9999-12-31 23:59:59';

alter table  person_organizations           alter column inactive_datetime set default '9999-12-31 23:59:59';

alter table  person_positions               alter column inactive_datetime set default '9999-12-31 23:59:59';


alter table  positions                      alter column inactive_datetime set default '9999-12-31 23:59:59';

alter table  position_types                 alter column inactive_datetime set default '9999-12-31 23:59:59';



alter table  identifiers                    alter column inactive_datetime set not null;

alter table  identifier_types               alter column inactive_datetime set not null;


alter table  industrial_hygiene_jobs        alter column inactive_datetime set not null;

alter table  industrial_hygiene_job_types   alter column inactive_datetime set not null;


alter table  locations                      alter column inactive_datetime set not null;

alter table  location_types                 alter column inactive_datetime set not null;


alter table  organizations                  alter column inactive_datetime set not null;

alter table  organization_types             alter column inactive_datetime set not null;


alter table  person_identifiers             alter column inactive_datetime set not null;

alter table  person_industrial_hygiene_jobs alter column inactive_datetime set not null;
            
alter table  person_locations               alter column inactive_datetime set not null;

alter table  person_organizations           alter column inactive_datetime set not null;

alter table  person_positions               alter column inactive_datetime set not null;


alter table  positions                      alter column inactive_datetime set not null;

alter table  position_types                 alter column inactive_datetime set not null;


alter table  identifiers                    alter column inactive_datetime set not null;

alter table  identifier_types               alter column inactive_datetime set not null;


alter table  industrial_hygiene_jobs        alter column inactive_datetime set not null;

alter table  industrial_hygiene_job_types   alter column inactive_datetime set not null;


alter table  locations                      alter column active_datetime set not null;

alter table  location_types                 alter column active_datetime set not null;


alter table  organizations                  alter column active_datetime set not null;

alter table  organization_types             alter column active_datetime set not null;


alter table  person_identifiers             alter column active_datetime set not null;

alter table  person_industrial_hygiene_jobs alter column active_datetime set not null;
            
alter table  person_locations               alter column active_datetime set not null;

alter table  person_organizations           alter column active_datetime set not null;

alter table  person_positions               alter column active_datetime set not null;


alter table  positions                      alter column active_datetime set not null;

alter table  position_types                 alter column active_datetime set not null;



            
