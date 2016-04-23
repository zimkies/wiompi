class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :lie
      t.references :player, index: true, foreign_key: true
      t.references :turn, index: true, foreign_key: true
      t.boolean :win

      t.timestamps null: false
    end
  end
end
