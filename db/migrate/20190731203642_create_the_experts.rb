class CreateTheExperts < ActiveRecord::Migration[5.2]
  def change
    create_table :the_experts do |t|
      t.belongs_to :character_sheet
      t.belongs_to :haven
      t.timestamps
    end
  end
end
