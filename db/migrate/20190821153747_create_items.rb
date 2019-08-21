class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.belongs_to :inventory
      t.string :name
      t.string :description
      t.string :tags
      t.string :special
      t.timestamps
    end
  end
end
