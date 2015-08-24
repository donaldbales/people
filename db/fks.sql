
alter table  identifiers add 
constraint   identifier_fk1 
foreign key (identifier_type_id)
references   identifier_types(id);

create index identifier_i1 
on           identifiers 
            (identifier_type_id);


alter table  industrial_hygiene_jobs add 
constraint   industrial_hygiene_job_fk1 
foreign key (industrial_hygiene_job_type_id)
references   industrial_hygiene_job_types(id);

create index industrial_hygiene_job_i1 
on           industrial_hygiene_jobs 
            (industrial_hygiene_job_type_id);


alter table  locations add 
constraint   location_fk1 
foreign key (location_type_id)
references   location_types(id);

create index location_i1 
on           locations 
            (location_type_id);


alter table  organizations add 
constraint   organization_fk1 
foreign key (organization_type_id)
references   organization_types(id);

create index organization_i1 
on           organizations 
            (organization_type_id);


alter table  positions add 
constraint   position_fk1 
foreign key (position_type_id)
references   position_types(id);

create index position_i1 
on           positions 
            (position_type_id);


alter table  people add 
constraint   person_fk1 
foreign key (person_type_id)
references   person_types(id);

create index person_i1 
on           people 
            (person_type_id);


alter table  people add 
constraint   person_fk2 
foreign key (gender_type_id)
references   gender_types(id);

create index person_i2 
on           people 
            (gender_type_id);


alter table  person_identifiers add 
constraint   person_identifier_fk1 
foreign key (person_id)
references   people(id);

create index person_identifier_i1 
on           person_identifiers 
            (person_id);

alter table  person_identifiers add 
constraint   person_identifier_fk2 
foreign key (identifier_id)
references   identifiers(id);

create index person_identifier_i2 
on           person_identifiers 
            (identifier_id);
            

alter table  person_industrial_hygiene_jobs add 
constraint   person_industrial_hygiene__fk1 
foreign key (person_id)
references   people(id);

create index person_industrial_hygie_job_i1 
on           person_industrial_hygiene_jobs 
            (person_id);
            
alter table  person_industrial_hygiene_jobs add 
constraint   person_industrial_hygiene__fk2 
foreign key (industrial_hygiene_job_id)
references   industrial_hygiene_jobs(id);

create index person_industrial_hygiene_j_i2 
on           person_industrial_hygiene_jobs 
            (industrial_hygiene_job_id);
            
            
alter table  person_locations add 
constraint   person_location_fk1 
foreign key (person_id)
references   people(id);

create index person_location_i1 
on           person_locations 
            (person_id);
            
alter table  person_locations add 
constraint   person_location_fk2 
foreign key (location_id)
references   locations(id);

create index person_location_i2 
on           person_locations 
            (location_id);


alter table  person_organizations add 
constraint   person_organization_fk1 
foreign key (person_id)
references   people(id);

create index person_organization_i1 
on           person_organizations 
            (person_id);
            
alter table  person_organizations add 
constraint   person_organization_fk2 
foreign key (organization_id)
references   organizations(id);

create index person_organization_i2 
on           person_organizations 
            (organization_id);
            
            
alter table  person_positions add 
constraint   person_position_fk1 
foreign key (person_id)
references   people(id);

create index person_position_i1 
on           person_positions 
            (person_id);
            
alter table  person_positions add 
constraint   person_position_fk2 
foreign key (position_id)
references   positions(id);

create index person_position_i2 
on           person_positions 
            (position_id);
            
            
