class AddColumnMember < ActiveRecord::Migration[5.0]
  def up
    execute "alter table l2.member add column test1 varchar(200)"
  end
  def down
    execute "alter table l2.member drop column test1";
  end
end
## addition of new column