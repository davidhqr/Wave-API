class CreateWaves < ActiveRecord::Migration[5.2]
  def change
    create_table :waves do |t|
      t.string :code
      t.string :text

      t.timestamps
    end
  end
end
