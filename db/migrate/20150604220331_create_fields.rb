class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.string :team
      t.string :league
      t.string :address

      t.timestamps null: false
    end
  end
end
