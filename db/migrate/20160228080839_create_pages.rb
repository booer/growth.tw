class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :info_description
      t.string :cta_sup

      t.timestamps null: false
    end
  end
end
