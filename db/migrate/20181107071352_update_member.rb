class UpdateMember < ActiveRecord::Migration[5.0]
  def up
    execute "ALTER TABLE l2.member ADD COLUMN test2 Integer"
    execute "UPDATE l2.member SET test2 = cast(first_name as Integer)"
    execute "ALTER TABLE l2.member DROP COLUMN first_name"
    execute "ALTER TABLE l2.member RENAME COLUMN test2 TO first_name"
  end
  def down
    execute "ALTER TABLE l2.member ADD COLUMN test2 varchar(255)"
    execute "UPDATE l2.member SET test2 = first_name"
    execute "ALTER TABLE l2.member DROP COLUMN first_name"
    execute "ALTER TABLE l2.member RENAME COLUMN test2 TO first_name"
  end
end
## changing empi datatype from varchar to integer