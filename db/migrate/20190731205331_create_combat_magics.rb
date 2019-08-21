class CreateCombatMagics < ActiveRecord::Migration[5.2]
  def change
    create_table :combat_magics do |t|
      t.string :base
      t.string :effect1
      t.string :effect2
      t.timestamps
    end
  end
end
