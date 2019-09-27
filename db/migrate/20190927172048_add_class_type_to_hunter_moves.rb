class AddClassTypeToHunterMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :hunter_moves, :playbook_id, :integer
  end
end
