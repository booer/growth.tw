class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :uname
      t.string :description
      
			t.belongs_to :page, index: true
      t.timestamps null: false
    end
  end
end
