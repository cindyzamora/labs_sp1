class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :date
      t.references :phase, foreign_key: true
      t.string :state
      t.references :local_team, foreign_key: true
      t.references :visitor_team, foreign_key: true
      t.integer :local_score
      t.integer :visitor_score
      t.references :winner, foreign_key: true
      t.references :loser, foreign_key: true
      t.boolean :tie
      t.references :group, foreign_key: true
      t.references :stadium, foreign_key: true

      t.timestamps null: false
    end
  end
end
