class CreateHavens < ActiveRecord::Migration[5.2]
  def change
    create_table :havens do |t|
      t.string :name
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.string :tag4
      t.string :tag5
      t.timestamps
    end
  end
end
