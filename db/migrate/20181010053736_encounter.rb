class Encounter < ActiveRecord::Migration[5.0]
  def up
    execute "create table encounter (empi varchar(255),local_member_id varchar(255),encounter_id varchar(255),place_of_service varchar(255),practice_name varchar(255),encounter_type varchar(255),referral_code varchar(255),admission_type varchar(255),servicing_provider varchar(255),admitting_provider varchar(255),chief_complaint varchar(1000),chief_complaint_code varchar(255),vip_indicator varchar(255),disposition_code varchar(255),discharge_to_location varchar(255),financial_class varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,author_date datetime,encounter_start_date datetime,encounter_end_date datetime,ingestion_datetime datetime,author_id integer,practice_npi varchar(20),servicing_provider_npi varchar(20),admitting_provider_npi varchar(20)) distkey(empi) sortkey(empi);"
  end
  def down
    execute "drop table encounter";
  end
end
