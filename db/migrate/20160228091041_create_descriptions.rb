class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.integer :page_id
      t.string :description
      t.string :icon

      t.belongs_to :page, index: true
      t.timestamps null: false
    end
  end
end
