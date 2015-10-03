class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.string :comments

      t.timestamps null: false
    end
  end
end
