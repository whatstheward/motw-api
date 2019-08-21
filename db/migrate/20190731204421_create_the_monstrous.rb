class CreateTheMonstrous < ActiveRecord::Migration[5.2]
  def change
    create_table :the_monstrous do |t|
      t.belongs_to :character_sheet
      t.string :curse
      t.string :natural_attack1
      t.string :natural_attack2
      t.timestamps
    end
  end
end
