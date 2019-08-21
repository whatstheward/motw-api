class CreateTheMundaneMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :the_mundane_moves do |t|
      t.belongs_to :the_mundane
      t.string :name
      t.string :description
      t.string :stat
      t.integer :modifier
      t.integer :active
      t.timestamps
    end
  end
end
#   thechosen_id integer
#   name string
#   description text
#   stat string
#   modifier integer
#   active integer
