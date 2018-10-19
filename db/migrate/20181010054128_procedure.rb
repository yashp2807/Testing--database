class Procedure < ActiveRecord::Migration[5.0]
  def up
    execute "create table procedure (empi varchar(255),local_member_id varchar(255),encounter_id varchar(255),procedure_id varchar(255),claim_id varchar(255),claim_line_id varchar(255),code varchar(255),coding_system varchar(255),procedure_name varchar(255),procedure_type varchar(255),modifier_code_1 varchar(255),modifier_code_2 varchar(255),modifier_code_3 varchar(255),modifier_code_4 varchar(255),modifier_code_5 varchar(255),provider_name varchar(255),practice_name varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,author_date datetime,start_datetime datetime,end_datetime datetime,ingestion_datetime datetime,author_id integer,procedure_sequence_no integer,provider_npi varchar(20),practice_npi varchar(20));"
  end
  def down
    execute "drop table procedure";
  end
end
