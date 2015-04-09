class CreateStadium < ActiveRecord::Migration
  def change
    create_table :stadium do |t|
      t.string :name
      t.string :city
      t.date :build_date
      t.integer :max_capacity
      t.string :photo

      t.timestamps null: false
    end
  end
end
