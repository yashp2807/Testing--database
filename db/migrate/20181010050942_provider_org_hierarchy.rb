class ProviderOrgHierarchy < ActiveRecord::Migration[5.0]
  def up
    execute "create table provider_org_hierarchy (provider_name varchar(255),provider_speciality varchar(255),provider_type varchar(255),practice_name varchar(255),practice_type varchar(255),preferred_practice_flag varchar(5),org_id varchar(55),org_ccn varchar(255),org_name varchar(255),region_id varchar(55),region_name varchar(255),city_id varchar(55),city_name varchar(255),county_id varchar(55),county_name varchar(255),state_id varchar(55),state_name varchar(255),cin_id varchar(255),cin_name varchar(255),pcp_flag varchar(255),custom_level1_name varchar(255),custom_level2_name varchar(255),custom_level3_name varchar(255),custom_level4_name varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,provider_start_date date,provider_end_date date,author_date datetime,ingestion_datetime datetime,author_id integer, hierarchy_id integer,custom_level1_id integer,custom_level2_id integer,custom_level3_id integer,custom_level4_id integer,provider_npi varchar(20),practice_npi varchar(20),org_tax_id varchar(20);"
  end
  def down
    execute "drop table provider_org_hierarchy";
  end

end
