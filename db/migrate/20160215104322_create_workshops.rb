class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :title
      t.text :desctiprtion

      t.timestamps null: false
    end
  end
end
