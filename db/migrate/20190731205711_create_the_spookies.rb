class CreateTheSpookies < ActiveRecord::Migration[5.2]
  def change
    create_table :the_spookies do |t|
      t.belongs_to :character_sheet
      t.string :dark_side
      t.timestamps
    end
  end
end
