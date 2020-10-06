class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :influencer_id
      t.integer :owner_id
      t.text :cotent
      t.integer :usertype

      t.timestamps
    end
  end
end
