class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :performer_name
      t.string :email
      t.string :password_digest
      t.string :city
      t.integer :category_id
      t.string :performer_subcategory
      t.string :hourly_rate
      t.string :description
      t.string :instagram
      t.string :youtube

      t.timestamps null: false
    end
  end
end
