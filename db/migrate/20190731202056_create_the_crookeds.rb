class CreateTheCrookeds < ActiveRecord::Migration[5.2]
  def change
    create_table :the_crookeds do |t|
      t.belongs_to :character_sheet
      t.string :background
      t.string :heat
      t.string :underworld
      t.timestamps
    end
  end
end
