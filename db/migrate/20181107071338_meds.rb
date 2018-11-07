class Meds < ActiveRecord::Migration[5.0]
  def up
    execute "create table l2.meds (empi varchar(255),local_member_id varchar(255),med_id varchar(255))";
  end
  def down
    execute "drop table l2.meds";
  end
end
## Addition of new table