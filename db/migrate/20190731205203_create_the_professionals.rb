class CreateTheProfessionals < ActiveRecord::Migration[5.2]
  def change
    create_table :the_professionals do |t|
      t.belongs_to :character_sheet
      t.belongs_to :agency
      t.timestamps
    end
  end
end
