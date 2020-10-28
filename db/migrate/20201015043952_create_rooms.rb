class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.references :influencer_id, foreign_key: true
      t.references :owner_id, foreign_key: true
      t.timestamps
    end
  end
end
