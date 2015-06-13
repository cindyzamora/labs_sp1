class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :name
      t.integer :matches
      t.text :description

      t.timestamps null: false
    end
  end
end
