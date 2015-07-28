class DropReviewTable < ActiveRecord::Migration
  def change
    drop_table :reviews do |t|
      t.string :comment
      t.string :rating
      t.timestamps null: false
  	end
  end
end
