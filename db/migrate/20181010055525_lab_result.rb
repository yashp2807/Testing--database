class LabResult < ActiveRecord::Migration[5.0]
  def up
    execute "create table lab_result (empi varchar(255),local_member_id varchar(255),encounter_id varchar(255),claim_id varchar(255),claim_line_id varchar(255),order_id varchar(255),order_code varchar(255),order_name varchar(255),order_status varchar(255),result_id varchar(255),result_code varchar(255),lab_test_name varchar(255),coding_system varchar(255),value varchar(255),normalcy_flag varchar(5),reference_range_high varchar(255),reference_range_low varchar(255),observation_unit varchar(255),provider_name varchar(255),place_of_service varchar(255),practice_name varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,order_date date,author_date datetime,collection_datetime datetime,result_datetime datetime,ingestion_datetime datetime,author_id integer,procedure_sequence_no integer,numeric_value decimal(18,2),provider_npi varchar(20),practice_npi varchar(20));"
  end
  def down
    execute "drop table lab_result";
  end
end
