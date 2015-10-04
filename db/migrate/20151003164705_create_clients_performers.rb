class CreateClientsPerformers < ActiveRecord::Migration
  def change
    create_table :clients_performers do |t|
      t.string :client_id
      t.string :string
      t.string :performer_id

      t.timestamps null: false
    end
  end
end
