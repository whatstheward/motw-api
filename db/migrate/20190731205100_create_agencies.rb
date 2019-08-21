class CreateAgencies < ActiveRecord::Migration[5.2]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :description
      t.string :resource1
      t.string :resource2
      t.string :red_tape1
      t.string :red_tape2
      t.timestamps
    end
  end
end
