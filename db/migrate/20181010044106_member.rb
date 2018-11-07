class Member < ActiveRecord::Migration[5.0]
  def up
    execute "create table l2.member (empi varchar(500),test1 varchar(200),local_member_id varchar(255),first_name varchar(255),middle_name varchar(255),last_name varchar(255),full_name varchar(510),prefix varchar(20),suffix varchar(20),gender varchar(35),ethnicity varchar(100),race varchar(100),marital_status varchar(50),primary_language varchar(255),cms_status varchar(255),reason_entitlement varchar(355),buy_in varchar(355),author_name varchar(255),source_id varchar(500),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),dual_status_code varchar(255),hospice_enrollment_date date,hospice_termination_date date,birth_date date,deceased_date date,author_date datetime,ingestion_datetime datetime,author_id integer) distkey(empi) sortkey(empi);"
  end
  def down
    execute "drop table l2.member";
  end
end
