class CreateTheSpookyMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :the_spooky_moves do |t|
      t.belongs_to :the_spooky 
      t.string :name
      t.string :description
      t.string :stat
      t.integer :modifier
      t.integer :active
      t.timestamps
    end
  end
end
