class CreateSects < ActiveRecord::Migration[5.2]
  def change
    create_table :sects do |t|
      t.string :name
      t.string :description
      t.string :good_tradition_1
      t.string :good_tradition_2
      t.string :bad_tradition
      t.timestamps
    end
  end
end
