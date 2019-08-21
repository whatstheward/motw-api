class CreateTheDivines < ActiveRecord::Migration[5.2]
  def change
    create_table :the_divines do |t|
      t.belongs_to :character_sheet
      t.string :mission
      t.timestamps
    end
  end
end
