class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :influencer_id, foreign_key: true
      t.integer :owner_id, foreign_key: true
      t.integer :room_id, foreign_key: true
      t.text :content
      t.timestamps
    end
  end
end
