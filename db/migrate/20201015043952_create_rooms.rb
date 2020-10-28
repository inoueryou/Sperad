class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :influencer_id, foreign_key: true
      t.integer :owner_id, foreign_key: true
      t.timestamps
    end
  end
end
