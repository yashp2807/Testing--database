class Allergy < ActiveRecord::Migration[5.0]
  def up
    execute "create table l2.allergy (empi varchar(255),local_member_id varchar(255),encounter_id varchar(255),provider_name varchar(255),practice_name varchar(255),allergen_type varchar(255),allergen_code varchar(255),coding_system varchar(255),allergen varchar(510),status varchar(255),reaction varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,onset_date date,offset_date date,record_date date,author_date datetime,ingestion_datetime datetime,author_id integer,onset_year integer,onset_month integer,offset_year integer,offset_month integer,provider_npi bigint,practice_npi bigint) distkey(empi) sortkey(empi);"
  end
  def down
    execute "drop table l2.allergy";
  end
end
