class PharmacyClaim < ActiveRecord::Migration[5.0]
  def up
    execute "create table pharmacy_claim (empi varchar(255),local_member_id varchar(255),claim_id varchar(255),payer_name varchar(255),plan_name varchar(255),medication_code varchar(255),medication_name varchar(255),days_of_supply varchar(255),unit_quantity varchar(255),dosage_per_unit varchar(255),refill_no varchar(255),route_of_administration varchar(255),pharmacy_id varchar(255),pharmacy_name varchar(255),pharmacy_street_add1 varchar(510),pharmacy_street_add2 varchar(510),pharmacy_city varchar(255),pharmacy_zip varchar(18),pharmacy_state varchar(255),pharmacy_country varchar(255),pharmacy_fax varchar(255),pharmacy_phone varchar(255),formulary_id varchar(255),formulary_name varchar(255),author_name varchar(255),source_id varchar(255),source_name varchar(255),source_type varchar(255),workflow_id varchar(255),author varchar(255),vendor_version varchar(55),vendor_name varchar(255),aco_id varchar(55),aco_name varchar(255),source_file_name varchar(510),Workspace_id varchar(255),birth_date date,start_date date,end_date date,author_date datetime,ingestion_datetime datetime,author_id integer,payer_id integer,plan_id integer,allowed_amount decimal(18,2),total_claim_amount decimal(18,2),total_insurance_paid_amount decimal(18,2),eligible_amount decimal(18,2),pharmacy_npi varchar(20)) distkey(empi) sortkey(empi);"
  end
  def down
    execute "drop table pharmacy_claim";
  end
end
