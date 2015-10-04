class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :email

      t.string :password
      t.string :firstname
      t.string :lastname

      t.string :password_digest


      t.timestamps null: false
    end
  end
end