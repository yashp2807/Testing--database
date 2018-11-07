class UpdateMemberAdd < ActiveRecord::Migration[5.0]
  def up
    execute "ALTER TABLE l2.member ADD COLUMN source_id1 varchar(500)"
    execute "UPDATE l2.member SET source_id1 = source_id"
    execute "ALTER TABLE l2.member DROP COLUMN source_id"
    execute "ALTER TABLE l2.member RENAME COLUMN source_id1 TO source_id"
  end
  def down
    execute "ALTER TABLE l2.member ADD COLUMN source_id1 varchar(10)"
    execute "UPDATE l2.member SET source_id1 = source_id"
    execute "ALTER TABLE l2.member DROP COLUMN source_id"
    execute "ALTER TABLE l2.member RENAME COLUMN source_id1 TO source_id"
  end
end
## Changing column length to 5v00