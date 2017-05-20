class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :name
      t.string :file
      t.references :doc, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
