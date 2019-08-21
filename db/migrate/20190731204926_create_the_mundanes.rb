class CreateTheMundanes < ActiveRecord::Migration[5.2]
  def change
    create_table :the_mundanes do |t|
      t.belongs_to :character_sheet
      t.timestamps
    end
  end
end
