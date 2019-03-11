class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :jersey_number
      t.string :name
      t.string :height
      t.float :weight
      t.string :position
      t.string :class
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end