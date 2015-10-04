class AddFavoritesToClients < ActiveRecord::Migration
  def change
    add_column :clients, :favorites, :string
  end
end
