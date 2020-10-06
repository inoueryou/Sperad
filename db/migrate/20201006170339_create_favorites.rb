class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :influenser_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
