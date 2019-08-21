class CreateCharacterSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :character_sheets do |t|
      t.belongs_to :user
      t.string :character_name
      t.text :description
      t.text :backstory
      t.integer :harm
      t.integer :luck
      t.integer :experience
      t.timestamps
    end
  end
end
