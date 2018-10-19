class MedicalEquipment < ActiveRecord::Migration[5.0]
  def up
    execute "create table l2.medical_equipment (empi varchar(255),local_member_id varchar(255),encounter_id varchar(255),provider_name varchar(255),practice_name varchar(255),equipment_code varchar(255),coding_system varchar(255),equipment_name varchar(255),body_part varchar(510),route_of_installation varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,installation_date date,author_date datetime,ingestion_datetime datetime,author_id integer,provider_npi varchar(20),practice_npi varchar(20)) distkey(empi) sortkey(empi);"
  end
  def down
    execute "drop table l2.medical_equipment";
  end
end
