class Appointment < ActiveRecord::Migration[5.0]
  def up
    execute "create table l2.appointment (empi varchar(255),local_member_id varchar(255),appointment_id varchar(255),provider_name varchar(255),practice_name varchar(255),appointment_type varchar(255),appointment_reason varchar(510),resource_location_type varchar(255),resource_location_name varchar(510),creator_name varchar(255),last_update_author_name varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),appointment_status varchar(255),birth_date date,appointment_date date,creation_date date,last_update_date date,author_date datetime,ingestion_datetime datetime,appointment_start_time timestamp,appointment_end_time timestamp,author_id integer,duration integer,provider_npi varchar(20),practice_npi varchar(20)) distkey(empi) sortkey(empi);"
  end
  def down
    execute "drop table l2.appointment";
  end
end
