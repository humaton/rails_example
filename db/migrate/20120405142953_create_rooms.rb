class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :area_size
      t.integer :beds
      t.integer :flat_id

      t.timestamps
    end
  end
end
