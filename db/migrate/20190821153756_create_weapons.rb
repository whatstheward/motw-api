class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.belongs_to :inventory
      t.string :name
      t.string :description
      t.integer :harm
      t.string :string
      t.string :special
      t.timestamps
    end
  end
end
