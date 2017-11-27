class CreatePhrases < ActiveRecord::Migration[5.0]
  def change
    create_table :phrases do |t|
      t.string :words
      t.string :state
      t.integer :sequence, default: 0
      t.timestamps
    end
  end
end
