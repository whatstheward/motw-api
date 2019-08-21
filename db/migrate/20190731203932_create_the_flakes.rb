class CreateTheFlakes < ActiveRecord::Migration[5.2]
  def change
    create_table :the_flakes do |t|
      t.belongs_to :character_sheet
      t.timestamps
    end
  end
end
