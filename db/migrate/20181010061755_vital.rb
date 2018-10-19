class Vital < ActiveRecord::Migration[5.0]
  def up
    execute "create table vital (empi varchar(255),local_member_id varchar(255),encounter_id varchar(255),provider_name varchar(255),practice_name varchar(255),vital_code varchar(255),vital_name varchar(2000),coding_system varchar(255),record_location varchar(255),value varchar(255),unit varchar(255),reference_range varchar(255),normalcy_flag varchar(5),body_site varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,author_date datetime,ingestion_datetime datetime,vital_date datetime,numeric_value decimal(18,2),reference_low decimal(18,2),reference_high decimal(18,2),author_id integer,provider_npi varchar(20),practice_npi varchar(20));"
  end
  def down
    execute "drop table vital";
  end

end
