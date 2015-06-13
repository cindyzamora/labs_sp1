class CreateTeams < ActiveRecord::Migration
  def change
    create_table :team do |t|
      t.string :name
      t.string :coach
      t.string :flag_image
      t.string :uniform_image
      t.text :description
 
      t.timestamps null: false
    end
  end
end
