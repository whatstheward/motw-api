class CreateTheInitiates < ActiveRecord::Migration[5.2]
  def change
    create_table :the_initiates do |t|
      t.belongs_to :character_sheet
      t.belongs_to :sect
      t.timestamps
    end
  end
end
