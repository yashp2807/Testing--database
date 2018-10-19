class ClaimHeader < ActiveRecord::Migration[5.0]
  def up
    execute "create table claim_header (empi varchar(255),local_member_id varchar(255),claim_charge_flag varchar(255),claim_id varchar(255),payer_name varchar(255),plan_name varchar(255),drg varchar(255),drg_code varchar(255),discharge_disposition_code varchar(255),primary_diagnosis_code varchar(255),diagnosis_coding_system varchar(255),admission_type varchar(255),present_at_admission varchar(255),claim_type varchar(255),facility_type varchar(255),service_type varchar(255),frequency_type varchar(255),type_of_bill varchar(255),place_of_service varchar(255),servicing_provider varchar(255),other_provider varchar(255),attending_provider varchar(255),practice_npi varchar(255),practice_name varchar(255),claim_nch_code varchar(255),claim_query_code varchar(255),ccn varchar(255),servicing_tax_org_name varchar(255),file_no varchar(255),adjustment_status varchar(255),adjustment_reason varchar(255),referral_source_code varchar(255),out_network_flag varchar(5),denial_reason varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,first_date_of_service date,last_date_of_service date,claim_subsmission_date date,claim_adjudication_date date,claim_approval_date date,claim_processing_date date,author_date datetime,ingestion_datetime datetime,author_id integer,payer_id integer,plan_id integer,allowed_amount decimal(18,2),total_claim_amount decimal(18,2),total_insurance_paid_amount decimal(18,2),co_pay decimal(18,2),deductible decimal(18,2),eligible_amount decimal(18,2),servicing_provider_npi varchar(20),attending_provider_npi varchar(20),other_provider_npi varchar(20),tax_id varchar(20)) distkey(empi) sortkey(empi);"
  end
  def down
    execute "drop table claim_header";
  end
end
