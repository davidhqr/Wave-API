class AddWaveIdReference < ActiveRecord::Migration[5.2]
  def change
    add_reference :file_items, :wave
  end
end
