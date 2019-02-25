class DropFileItems < ActiveRecord::Migration[5.2]
  def up
    drop_table :file_items
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
