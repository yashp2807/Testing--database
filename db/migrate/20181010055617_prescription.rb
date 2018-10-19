class Prescription < ActiveRecord::Migration[5.0]
  def up
    execute "create table prescription (empi varchar(255),local_member_id varchar(255),encounter_id varchar(255),provider_name varchar(255),practice_name varchar(255),prescription_id varchar(255),notes varchar,ndc_code varchar(255),medication_code varchar(255),medication_name varchar(255),coding_system varchar(255),generic_flag varchar(5),dosage_strength varchar(255),dosage_unit varchar(255),usage_frequency varchar(255),days_of_prescription varchar(255),route_of_administration varchar(255),refills_remaining varchar(255),dispensed_amount decimal(18,2),no_of_refills varchar(255),date_recent_refill varchar(255),rx_form varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,prescription_date date,start_date date,end_date date,author_date datetime,ingestion_datetime datetime,author_id integer,provider_npi varchar(20),practice_npi varchar(20));"
  end
  def down
    execute "drop table prescription";
  end

end
