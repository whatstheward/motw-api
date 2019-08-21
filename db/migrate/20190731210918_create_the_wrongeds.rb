class CreateTheWrongeds < ActiveRecord::Migration[5.2]
  def change
    create_table :the_wrongeds do |t|
      t.belongs_to :character_sheet
      t.string :lost
      t.string :prey
      t.string :failed
      t.timestamps
    end
  end
end
