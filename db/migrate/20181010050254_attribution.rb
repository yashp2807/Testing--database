class Attribution < ActiveRecord::Migration[5.0]
  def up
    execute "create table attribution (empi varchar(500),local_member_id varchar(255),attribution_method varchar(255),payer_name varchar(255),plan_name varchar(255),rx_coverage varchar(5),dental_coverage varchar(5),hospice_benefit varchar(5),mh_inpatient_benefit varchar(5),mh_intensive_op_benefit varchar(5),mh_outpatient_ed_benefit varchar(5),cd_inpatient_benefit varchar(5),cd_outpatient_ed_benefit varchar(5),lti_benefit varchar(5),cd_intensive_op_benefit varchar(5),hospice_benefit_flag varchar(5),subscriber_name varchar(255),subscriber_relationship_code varchar(255),subscriber_relationship varchar(255),insurance_class varchar(255),eligibility_type varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,attribution_start_date date,attribution_end_date date,author_date datetime,ingestion_datetime datetime,author_id integer,month_year integer,attribution_logic_stage integer,payer_id integer,plan_id integer,hierarchy_id integer) distkey(empi) sortkey(empi);"
  end
  def down
    execute "drop table attribution";
  end
end
