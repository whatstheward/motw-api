class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.belongs_to :charactersheet
      t.timestamps
    end
  end
end
