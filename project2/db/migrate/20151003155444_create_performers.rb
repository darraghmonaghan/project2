class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :city
      t.string :firstname
      t.string :lastname
      t.string :group
      t.integer :category_id
      t.string :rate
      t.string :performer_subcategory
      t.string :description
      t.string :instagram
      t.string :youtube

      t.timestamps null: false
    end
  end
end
