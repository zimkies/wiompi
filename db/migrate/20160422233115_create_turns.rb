class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.string :name
      t.references :game, index: true, foreign_key: true
      t.references :player, index: true, foreign_key: true
      t.string :image
      t.boolean :lie

      t.timestamps null: false
    end
  end
end
