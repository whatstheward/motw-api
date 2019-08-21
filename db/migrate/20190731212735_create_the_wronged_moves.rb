class CreateTheWrongedMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :the_wronged_moves do |t|

      t.timestamps
    end
  end
end
