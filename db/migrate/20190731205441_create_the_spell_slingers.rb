class CreateTheSpellSlingers < ActiveRecord::Migration[5.2]
  def change
    create_table :the_spell_slingers do |t|
      t.belongs_to :character_sheet
      t.belongs_to :combat_magic
      t.timestamps
    end
  end
end
