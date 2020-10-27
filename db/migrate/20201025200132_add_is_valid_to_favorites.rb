class AddIsValidToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :is_valid, :boolean, default: true, null: false
  end
end
