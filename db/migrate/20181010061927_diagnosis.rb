class Diagnosis < ActiveRecord::Migration[5.0]
  def up
    execute "create table diagnosis (empi varchar(255),local_member_id varchar(255),encounter_id varchar(255),provider_name varchar(255),practice_name varchar(255),claim_id varchar(255),claim_line_id varchar(2000),diagnosis_code varchar(255),diagnosis_type varchar(255),diagnosis_name varchar(255),coding_system varchar(255),description varchar(510),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,date_of_diagnosis date,author_date datetime,ingestion_datetime datetime,author_id integer,diagnosis_sequence_no integer,provider_npi varchar(20),practice_npi varchar(20));"
  end
  def down
    execute "drop table diagnosis";
  end
end
