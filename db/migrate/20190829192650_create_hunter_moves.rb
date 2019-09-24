class CreateHunterMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :hunter_moves do |t|
        t.string :name
        t.string :rating
        t.string :description
        t.string :partial_success
        t.string :total_success
        t.string :advanced_success
        
      t.timestamps
    end
  end
end
