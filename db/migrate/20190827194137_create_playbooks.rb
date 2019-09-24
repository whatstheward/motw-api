class CreatePlaybooks < ActiveRecord::Migration[5.2]
  def change
    create_table :playbooks do |t|
      t.string :name
      t.string :description
      t.string :fascimile
      t.timestamps
    end
  end
end
