class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comments
      t.string :rating
      t.belongs_to :field, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :fields
    add_foreign_key :reviews, :users
  end
end
