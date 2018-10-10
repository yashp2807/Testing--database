class MemberAltid < ActiveRecord::Migration[5.0]
  def up
    execute "create table l2.member_altid (empi varchar(255),local_member_id varchar(255),alternate_id_type varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,author_date datetime,ingestion_datetime datetime,author_id integer) distkey(empi) sortkey(empi);"
  end
  def down
    execute "drop table l2.member_altid";
  end

end
