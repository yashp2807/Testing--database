# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181107071338) do

  create_table "attribution", id: false, force: :cascade do |t|
    t.string   "empi",                         limit: 500
    t.string   "local_member_id",              limit: 255
    t.string   "attribution_method",           limit: 255
    t.string   "payer_name",                   limit: 255
    t.string   "plan_name",                    limit: 255
    t.string   "rx_coverage",                  limit: 5
    t.string   "dental_coverage",              limit: 5
    t.string   "hospice_benefit",              limit: 5
    t.string   "mh_inpatient_benefit",         limit: 5
    t.string   "mh_intensive_op_benefit",      limit: 5
    t.string   "mh_outpatient_ed_benefit",     limit: 5
    t.string   "cd_inpatient_benefit",         limit: 5
    t.string   "cd_outpatient_ed_benefit",     limit: 5
    t.string   "lti_benefit",                  limit: 5
    t.string   "cd_intensive_op_benefit",      limit: 5
    t.string   "hospice_benefit_flag",         limit: 5
    t.string   "subscriber_name",              limit: 255
    t.string   "subscriber_relationship_code", limit: 255
    t.string   "subscriber_relationship",      limit: 255
    t.string   "insurance_class",              limit: 255
    t.string   "eligibility_type",             limit: 255
    t.string   "author_name",                  limit: 255
    t.string   "source_id",                    limit: 255
    t.string   "source_name",                  limit: 255
    t.string   "source_type",                  limit: 255
    t.string   "workflow_id",                  limit: 255
    t.string   "author",                       limit: 255
    t.string   "vendor_version",               limit: 55
    t.string   "vendor_name",                  limit: 255
    t.string   "aco_id",                       limit: 55
    t.string   "aco_name",                     limit: 255
    t.string   "source_file_name",             limit: 510
    t.string   "workspace_id",                 limit: 255
    t.date     "birth_date"
    t.date     "attribution_start_date"
    t.date     "attribution_end_date"
    t.datetime "author_date"
    t.datetime "ingestion_datetime"
    t.integer  "author_id"
    t.integer  "month_year"
    t.integer  "attribution_logic_stage"
    t.integer  "payer_id"
    t.integer  "plan_id"
    t.integer  "hierarchy_id"
  end

  create_table "claim_header", id: false, force: :cascade do |t|
    t.string   "empi",                        limit: 255
    t.string   "local_member_id",             limit: 255
    t.string   "claim_charge_flag",           limit: 255
    t.string   "claim_id",                    limit: 255
    t.string   "payer_name",                  limit: 255
    t.string   "plan_name",                   limit: 255
    t.string   "drg",                         limit: 255
    t.string   "drg_code",                    limit: 255
    t.string   "discharge_disposition_code",  limit: 255
    t.string   "primary_diagnosis_code",      limit: 255
    t.string   "diagnosis_coding_system",     limit: 255
    t.string   "admission_type",              limit: 255
    t.string   "present_at_admission",        limit: 255
    t.string   "claim_type",                  limit: 255
    t.string   "facility_type",               limit: 255
    t.string   "service_type",                limit: 255
    t.string   "frequency_type",              limit: 255
    t.string   "type_of_bill",                limit: 255
    t.string   "place_of_service",            limit: 255
    t.string   "servicing_provider",          limit: 255
    t.string   "other_provider",              limit: 255
    t.string   "attending_provider",          limit: 255
    t.string   "practice_npi",                limit: 255
    t.string   "practice_name",               limit: 255
    t.string   "claim_nch_code",              limit: 255
    t.string   "claim_query_code",            limit: 255
    t.string   "ccn",                         limit: 255
    t.string   "servicing_tax_org_name",      limit: 255
    t.string   "file_no",                     limit: 255
    t.string   "adjustment_status",           limit: 255
    t.string   "adjustment_reason",           limit: 255
    t.string   "referral_source_code",        limit: 255
    t.string   "out_network_flag",            limit: 5
    t.string   "denial_reason",               limit: 255
    t.string   "author_name",                 limit: 255
    t.string   "source_id",                   limit: 255
    t.string   "source_name",                 limit: 255
    t.string   "source_type",                 limit: 255
    t.string   "workflow_id",                 limit: 255
    t.string   "author",                      limit: 255
    t.string   "vendor_version",              limit: 55
    t.string   "vendor_name",                 limit: 255
    t.string   "aco_id",                      limit: 55
    t.string   "aco_name",                    limit: 255
    t.string   "source_file_name",            limit: 510
    t.string   "workspace_id",                limit: 255
    t.date     "birth_date"
    t.date     "first_date_of_service"
    t.date     "last_date_of_service"
    t.date     "claim_subsmission_date"
    t.date     "claim_adjudication_date"
    t.date     "claim_approval_date"
    t.date     "claim_processing_date"
    t.datetime "author_date"
    t.datetime "ingestion_datetime"
    t.integer  "author_id"
    t.integer  "payer_id"
    t.integer  "plan_id"
    t.decimal  "allowed_amount",                          precision: 18, scale: 2
    t.decimal  "total_claim_amount",                      precision: 18, scale: 2
    t.decimal  "total_insurance_paid_amount",             precision: 18, scale: 2
    t.decimal  "co_pay",                                  precision: 18, scale: 2
    t.decimal  "deductible",                              precision: 18, scale: 2
    t.decimal  "eligible_amount",                         precision: 18, scale: 2
    t.string   "servicing_provider_npi",      limit: 20
    t.string   "attending_provider_npi",      limit: 20
    t.string   "other_provider_npi",          limit: 20
    t.string   "tax_id",                      limit: 20
  end

  create_table "claim_line", id: false, force: :cascade do |t|
    t.string   "empi",                       limit: 255
    t.string   "local_member_id",            limit: 255
    t.string   "claim_id",                   limit: 255
    t.string   "claim_line_id",              limit: 255
    t.string   "procedure_code",             limit: 255
    t.string   "procedure_coding_system",    limit: 255
    t.string   "modifier_code_1",            limit: 255
    t.string   "modifier_code_2",            limit: 255
    t.string   "modifier_code_3",            limit: 255
    t.string   "modifier_code_4",            limit: 255
    t.string   "modifier_code_5",            limit: 255
    t.string   "service_unit_quantity",      limit: 255
    t.string   "revenue_center_code",        limit: 255
    t.string   "servicing_provider",         limit: 255
    t.string   "attending_provider",         limit: 255
    t.string   "other_provider",             limit: 255
    t.decimal  "line_claim_amount",                      precision: 18, scale: 2
    t.decimal  "line_insurance_paid_amount",             precision: 18, scale: 2
    t.string   "adjustment_status",          limit: 255
    t.string   "out_network_flag",           limit: 5
    t.string   "author_name",                limit: 255
    t.string   "source_id",                  limit: 255
    t.string   "source_name",                limit: 255
    t.string   "source_type",                limit: 255
    t.string   "workflow_id",                limit: 255
    t.string   "author",                     limit: 255
    t.string   "vendor_version",             limit: 55
    t.string   "vendor_name",                limit: 255
    t.string   "aco_id",                     limit: 55
    t.string   "aco_name",                   limit: 255
    t.string   "source_file_name",           limit: 510
    t.string   "workspace_id",               limit: 255
    t.date     "birth_date"
    t.date     "first_date_of_service"
    t.date     "last_date_of_service"
    t.datetime "author_date"
    t.datetime "ingestion_datetime"
    t.integer  "author_id"
    t.string   "servicing_provider_npi",     limit: 20
    t.string   "attending_provider_npi",     limit: 20
    t.string   "other_provider_npi",         limit: 20
  end

  create_table "diagnosis", id: false, force: :cascade do |t|
    t.string   "empi",                  limit: 255
    t.string   "local_member_id",       limit: 255
    t.string   "encounter_id",          limit: 255
    t.string   "provider_name",         limit: 255
    t.string   "practice_name",         limit: 255
    t.string   "claim_id",              limit: 255
    t.string   "claim_line_id",         limit: 2000
    t.string   "diagnosis_code",        limit: 255
    t.string   "diagnosis_type",        limit: 255
    t.string   "diagnosis_name",        limit: 255
    t.string   "coding_system",         limit: 255
    t.string   "description",           limit: 510
    t.string   "author_name",           limit: 255
    t.string   "source_id",             limit: 255
    t.string   "source_name",           limit: 255
    t.string   "source_type",           limit: 255
    t.string   "workflow_id",           limit: 255
    t.string   "author",                limit: 255
    t.string   "vendor_version",        limit: 55
    t.string   "vendor_name",           limit: 255
    t.string   "aco_id",                limit: 55
    t.string   "aco_name",              limit: 255
    t.string   "source_file_name",      limit: 510
    t.string   "workspace_id",          limit: 255
    t.date     "birth_date"
    t.date     "date_of_diagnosis"
    t.datetime "author_date"
    t.datetime "ingestion_datetime"
    t.integer  "author_id"
    t.integer  "diagnosis_sequence_no"
    t.string   "provider_npi",          limit: 20
    t.string   "practice_npi",          limit: 20
  end

  create_table "encounter", id: false, force: :cascade do |t|
    t.string   "empi",                   limit: 255
    t.string   "local_member_id",        limit: 255
    t.string   "encounter_id",           limit: 255
    t.string   "place_of_service",       limit: 255
    t.string   "practice_name",          limit: 255
    t.string   "encounter_type",         limit: 255
    t.string   "referral_code",          limit: 255
    t.string   "admission_type",         limit: 255
    t.string   "servicing_provider",     limit: 255
    t.string   "admitting_provider",     limit: 255
    t.string   "chief_complaint",        limit: 1000
    t.string   "chief_complaint_code",   limit: 255
    t.string   "vip_indicator",          limit: 255
    t.string   "disposition_code",       limit: 255
    t.string   "discharge_to_location",  limit: 255
    t.string   "financial_class",        limit: 255
    t.string   "author_name",            limit: 255
    t.string   "source_id",              limit: 255
    t.string   "source_name",            limit: 255
    t.string   "source_type",            limit: 255
    t.string   "workflow_id",            limit: 255
    t.string   "author",                 limit: 255
    t.string   "vendor_version",         limit: 55
    t.string   "vendor_name",            limit: 255
    t.string   "aco_id",                 limit: 55
    t.string   "aco_name",               limit: 255
    t.string   "source_file_name",       limit: 510
    t.string   "workspace_id",           limit: 255
    t.date     "birth_date"
    t.datetime "author_date"
    t.datetime "encounter_start_date"
    t.datetime "encounter_end_date"
    t.datetime "ingestion_datetime"
    t.integer  "author_id"
    t.string   "practice_npi",           limit: 20
    t.string   "servicing_provider_npi", limit: 20
    t.string   "admitting_provider_npi", limit: 20
  end

  create_table "lab_result", id: false, force: :cascade do |t|
    t.string   "empi",                  limit: 255
    t.string   "local_member_id",       limit: 255
    t.string   "encounter_id",          limit: 255
    t.string   "claim_id",              limit: 255
    t.string   "claim_line_id",         limit: 255
    t.string   "order_id",              limit: 255
    t.string   "order_code",            limit: 255
    t.string   "order_name",            limit: 255
    t.string   "order_status",          limit: 255
    t.string   "result_id",             limit: 255
    t.string   "result_code",           limit: 255
    t.string   "lab_test_name",         limit: 255
    t.string   "coding_system",         limit: 255
    t.string   "value",                 limit: 255
    t.string   "normalcy_flag",         limit: 5
    t.string   "reference_range_high",  limit: 255
    t.string   "reference_range_low",   limit: 255
    t.string   "observation_unit",      limit: 255
    t.string   "provider_name",         limit: 255
    t.string   "place_of_service",      limit: 255
    t.string   "practice_name",         limit: 255
    t.string   "author_name",           limit: 255
    t.string   "source_id",             limit: 255
    t.string   "source_name",           limit: 255
    t.string   "source_type",           limit: 255
    t.string   "workflow_id",           limit: 255
    t.string   "author",                limit: 255
    t.string   "vendor_version",        limit: 55
    t.string   "vendor_name",           limit: 255
    t.string   "aco_id",                limit: 55
    t.string   "aco_name",              limit: 255
    t.string   "source_file_name",      limit: 510
    t.string   "workspace_id",          limit: 255
    t.date     "birth_date"
    t.date     "order_date"
    t.datetime "author_date"
    t.datetime "collection_datetime"
    t.datetime "result_datetime"
    t.datetime "ingestion_datetime"
    t.integer  "author_id"
    t.integer  "procedure_sequence_no"
    t.decimal  "numeric_value",                     precision: 18, scale: 2
    t.string   "provider_npi",          limit: 20
    t.string   "practice_npi",          limit: 20
  end

  create_table "pharmacy_claim", id: false, force: :cascade do |t|
    t.string   "empi",                        limit: 255
    t.string   "local_member_id",             limit: 255
    t.string   "claim_id",                    limit: 255
    t.string   "payer_name",                  limit: 255
    t.string   "plan_name",                   limit: 255
    t.string   "medication_code",             limit: 255
    t.string   "medication_name",             limit: 255
    t.string   "days_of_supply",              limit: 255
    t.string   "unit_quantity",               limit: 255
    t.string   "dosage_per_unit",             limit: 255
    t.string   "refill_no",                   limit: 255
    t.string   "route_of_administration",     limit: 255
    t.string   "pharmacy_id",                 limit: 255
    t.string   "pharmacy_name",               limit: 255
    t.string   "pharmacy_street_add1",        limit: 510
    t.string   "pharmacy_street_add2",        limit: 510
    t.string   "pharmacy_city",               limit: 255
    t.string   "pharmacy_zip",                limit: 18
    t.string   "pharmacy_state",              limit: 255
    t.string   "pharmacy_country",            limit: 255
    t.string   "pharmacy_fax",                limit: 255
    t.string   "pharmacy_phone",              limit: 255
    t.string   "formulary_id",                limit: 255
    t.string   "formulary_name",              limit: 255
    t.string   "author_name",                 limit: 255
    t.string   "source_id",                   limit: 255
    t.string   "source_name",                 limit: 255
    t.string   "source_type",                 limit: 255
    t.string   "workflow_id",                 limit: 255
    t.string   "author",                      limit: 255
    t.string   "vendor_version",              limit: 55
    t.string   "vendor_name",                 limit: 255
    t.string   "aco_id",                      limit: 55
    t.string   "aco_name",                    limit: 255
    t.string   "source_file_name",            limit: 510
    t.string   "workspace_id",                limit: 255
    t.date     "birth_date"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "author_date"
    t.datetime "ingestion_datetime"
    t.integer  "author_id"
    t.integer  "payer_id"
    t.integer  "plan_id"
    t.decimal  "allowed_amount",                          precision: 18, scale: 2
    t.decimal  "total_claim_amount",                      precision: 18, scale: 2
    t.decimal  "total_insurance_paid_amount",             precision: 18, scale: 2
    t.decimal  "eligible_amount",                         precision: 18, scale: 2
    t.string   "pharmacy_npi",                limit: 20
  end

  create_table "prescription", id: false, force: :cascade do |t|
    t.string   "empi",                    limit: 255
    t.string   "local_member_id",         limit: 255
    t.string   "encounter_id",            limit: 255
    t.string   "provider_name",           limit: 255
    t.string   "practice_name",           limit: 255
    t.string   "prescription_id",         limit: 255
    t.string   "notes",                   limit: 256
    t.string   "ndc_code",                limit: 255
    t.string   "medication_code",         limit: 255
    t.string   "medication_name",         limit: 255
    t.string   "coding_system",           limit: 255
    t.string   "generic_flag",            limit: 5
    t.string   "dosage_strength",         limit: 255
    t.string   "dosage_unit",             limit: 255
    t.string   "usage_frequency",         limit: 255
    t.string   "days_of_prescription",    limit: 255
    t.string   "route_of_administration", limit: 255
    t.string   "refills_remaining",       limit: 255
    t.decimal  "dispensed_amount",                    precision: 18, scale: 2
    t.string   "no_of_refills",           limit: 255
    t.string   "date_recent_refill",      limit: 255
    t.string   "rx_form",                 limit: 255
    t.string   "author_name",             limit: 255
    t.string   "source_id",               limit: 255
    t.string   "source_name",             limit: 255
    t.string   "source_type",             limit: 255
    t.string   "workflow_id",             limit: 255
    t.string   "author",                  limit: 255
    t.string   "vendor_version",          limit: 55
    t.string   "vendor_name",             limit: 255
    t.string   "aco_id",                  limit: 55
    t.string   "aco_name",                limit: 255
    t.string   "source_file_name",        limit: 510
    t.string   "workspace_id",            limit: 255
    t.date     "birth_date"
    t.date     "prescription_date"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "author_date"
    t.datetime "ingestion_datetime"
    t.integer  "author_id"
    t.string   "provider_npi",            limit: 20
    t.string   "practice_npi",            limit: 20
  end

  create_table "procedure", id: false, force: :cascade do |t|
    t.string   "empi",                  limit: 255
    t.string   "local_member_id",       limit: 255
    t.string   "encounter_id",          limit: 255
    t.string   "procedure_id",          limit: 255
    t.string   "claim_id",              limit: 255
    t.string   "claim_line_id",         limit: 255
    t.string   "code",                  limit: 255
    t.string   "coding_system",         limit: 255
    t.string   "procedure_name",        limit: 255
    t.string   "procedure_type",        limit: 255
    t.string   "modifier_code_1",       limit: 255
    t.string   "modifier_code_2",       limit: 255
    t.string   "modifier_code_3",       limit: 255
    t.string   "modifier_code_4",       limit: 255
    t.string   "modifier_code_5",       limit: 255
    t.string   "provider_name",         limit: 255
    t.string   "practice_name",         limit: 255
    t.string   "author_name",           limit: 255
    t.string   "source_id",             limit: 255
    t.string   "source_name",           limit: 255
    t.string   "source_type",           limit: 255
    t.string   "workflow_id",           limit: 255
    t.string   "author",                limit: 255
    t.string   "vendor_version",        limit: 55
    t.string   "vendor_name",           limit: 255
    t.string   "aco_id",                limit: 55
    t.string   "aco_name",              limit: 255
    t.string   "source_file_name",      limit: 510
    t.string   "workspace_id",          limit: 255
    t.date     "birth_date"
    t.datetime "author_date"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.datetime "ingestion_datetime"
    t.integer  "author_id"
    t.integer  "procedure_sequence_no"
    t.string   "provider_npi",          limit: 20
    t.string   "practice_npi",          limit: 20
  end

  create_table "provider_org_hierarchy", id: false, force: :cascade do |t|
    t.string   "provider_name",           limit: 255
    t.string   "provider_speciality",     limit: 255
    t.string   "provider_type",           limit: 255
    t.string   "practice_name",           limit: 255
    t.string   "practice_type",           limit: 255
    t.string   "preferred_practice_flag", limit: 5
    t.string   "org_id",                  limit: 55
    t.string   "org_ccn",                 limit: 255
    t.string   "org_name",                limit: 255
    t.string   "region_id",               limit: 55
    t.string   "region_name",             limit: 255
    t.string   "city_id",                 limit: 55
    t.string   "city_name",               limit: 255
    t.string   "county_id",               limit: 55
    t.string   "county_name",             limit: 255
    t.string   "state_id",                limit: 55
    t.string   "state_name",              limit: 255
    t.string   "cin_id",                  limit: 255
    t.string   "cin_name",                limit: 255
    t.string   "pcp_flag",                limit: 255
    t.string   "custom_level1_name",      limit: 255
    t.string   "custom_level2_name",      limit: 255
    t.string   "custom_level3_name",      limit: 255
    t.string   "custom_level4_name",      limit: 255
    t.string   "author_name",             limit: 255
    t.string   "source_id",               limit: 255
    t.string   "source_name",             limit: 255
    t.string   "source_type",             limit: 255
    t.string   "workflow_id",             limit: 255
    t.string   "author",                  limit: 255
    t.string   "vendor_version",          limit: 55
    t.string   "vendor_name",             limit: 255
    t.string   "aco_id",                  limit: 55
    t.string   "aco_name",                limit: 255
    t.string   "source_file_name",        limit: 510
    t.string   "workspace_id",            limit: 255
    t.date     "birth_date"
    t.date     "provider_start_date"
    t.date     "provider_end_date"
    t.datetime "author_date"
    t.datetime "ingestion_datetime"
    t.integer  "author_id"
    t.integer  "hierarchy_id"
    t.integer  "custom_level1_id"
    t.integer  "custom_level2_id"
    t.integer  "custom_level3_id"
    t.integer  "custom_level4_id"
    t.string   "provider_npi",            limit: 20
    t.string   "practice_npi",            limit: 20
    t.string   "org_tax_id",              limit: 20
  end

  create_table "social_history", id: false, force: :cascade do |t|
    t.string   "empi",               limit: 255
    t.string   "local_member_id",    limit: 255
    t.string   "encounter_id",       limit: 255
    t.string   "provider_name",      limit: 255
    t.string   "practice_name",      limit: 255
    t.string   "social_factor_code", limit: 255
    t.string   "social_factor_name", limit: 255
    t.string   "status",             limit: 255
    t.string   "description",        limit: 510
    t.string   "frequency",          limit: 255
    t.string   "frequency_units",    limit: 255
    t.string   "author_name",        limit: 255
    t.string   "source_id",          limit: 255
    t.string   "source_name",        limit: 255
    t.string   "source_type",        limit: 255
    t.string   "workflow_id",        limit: 255
    t.string   "author",             limit: 255
    t.string   "vendor_version",     limit: 55
    t.string   "vendor_name",        limit: 255
    t.string   "aco_id",             limit: 55
    t.string   "aco_name",           limit: 255
    t.string   "source_file_name",   limit: 510
    t.string   "workspace_id",       limit: 255
    t.date     "birth_date"
    t.date     "onset_date"
    t.date     "offset_date"
    t.date     "record_date"
    t.datetime "author_date"
    t.datetime "ingestion_datetime"
    t.integer  "author_id"
    t.integer  "onset_year"
    t.integer  "onset_month"
    t.integer  "offset_year"
    t.integer  "offset_month"
    t.string   "provider_npi",       limit: 20
    t.string   "practice_npi",       limit: 20
  end

  create_table "vital", id: false, force: :cascade do |t|
    t.string   "empi",               limit: 255
    t.string   "local_member_id",    limit: 255
    t.string   "encounter_id",       limit: 255
    t.string   "provider_name",      limit: 255
    t.string   "practice_name",      limit: 255
    t.string   "vital_code",         limit: 255
    t.string   "vital_name",         limit: 2000
    t.string   "coding_system",      limit: 255
    t.string   "record_location",    limit: 255
    t.string   "value",              limit: 255
    t.string   "unit",               limit: 255
    t.string   "reference_range",    limit: 255
    t.string   "normalcy_flag",      limit: 5
    t.string   "body_site",          limit: 255
    t.string   "author_name",        limit: 255
    t.string   "source_id",          limit: 255
    t.string   "source_name",        limit: 255
    t.string   "source_type",        limit: 255
    t.string   "workflow_id",        limit: 255
    t.string   "author",             limit: 255
    t.string   "vendor_version",     limit: 55
    t.string   "vendor_name",        limit: 255
    t.string   "aco_id",             limit: 55
    t.string   "aco_name",           limit: 255
    t.string   "source_file_name",   limit: 510
    t.string   "workspace_id",       limit: 255
    t.date     "birth_date"
    t.datetime "author_date"
    t.datetime "ingestion_datetime"
    t.datetime "vital_date"
    t.decimal  "numeric_value",                   precision: 18, scale: 2
    t.decimal  "reference_low",                   precision: 18, scale: 2
    t.decimal  "reference_high",                  precision: 18, scale: 2
    t.integer  "author_id"
    t.string   "provider_npi",       limit: 20
    t.string   "practice_npi",       limit: 20
  end

end
