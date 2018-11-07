class Patients < ActiveRecord::Migration[5.0]
  def up
    execute "create table l2.patients (patient varchar(255),name varchar(255));"
  end
  def down
    execute "drop table l2.patients";
  end
end
