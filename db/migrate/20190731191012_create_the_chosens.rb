class CreateTheChosens < ActiveRecord::Migration[5.2]
  def change
    create_table :the_chosens do |t|
      t.belongs_to :character_sheet
      t.string :fate 
      t.string :heroic
      t.string :doom
      t.timestamps
    end
  end
end
