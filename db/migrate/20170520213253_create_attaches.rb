class CreateAttaches < ActiveRecord::Migration
  def change
    create_table :attaches do |t|
      t.string :name
      t.string :file

      t.timestamps null: false
    end
  end
end
