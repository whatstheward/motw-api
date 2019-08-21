class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.belongs_to :mystery
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
