class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :title
      t.text :content
      t.string :city
      t.string :address

      t.timestamps null: false
    end
  end
end
