class ClaimLine < ActiveRecord::Migration[5.0]
  def up
    execute "create table claim_line (empi varchar(255),local_member_id varchar(255),claim_id varchar(255),claim_line_id varchar(255),procedure_code varchar(255),procedure_coding_system varchar(255),modifier_code_1 varchar(255),modifier_code_2 varchar(255),modifier_code_3 varchar(255),modifier_code_4 varchar(255),modifier_code_5 varchar(255),service_unit_quantity varchar(255),revenue_center_code varchar(255),servicing_provider varchar(255),attending_provider varchar(255),other_provider varchar(255),line_claim_amount decimal(18,2),line_insurance_paid_amount decimal(18,2),adjustment_status varchar(255),out_network_flag varchar(5),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,first_date_of_service date,last_date_of_service date,author_date datetime,ingestion_datetime datetime,author_id integer,servicing_provider_npi varchar(20),attending_provider_npi varchar(20),other_provider_npi varchar(20)) distkey(empi) sortkey(empi);"
  end
  def down
    execute "drop table claim_line";
  end
end
