class CreateFileItems < ActiveRecord::Migration[5.2]
  def change
    create_table :file_items do |t|
      t.string :name
      t.string :format
      t.decimal :size
      t.string :path

      t.timestamps
    end
  end
end
