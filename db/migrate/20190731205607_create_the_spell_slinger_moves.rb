class CreateTheSpellSlingerMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :the_spell_slinger_moves do |t|
      t.belongs_to :the_spell_slinger 
      t.string :name
      t.string :description
      t.string :stat
      t.integer :modifier
      t.integer :active
      t.timestamps
    end
  end
end
