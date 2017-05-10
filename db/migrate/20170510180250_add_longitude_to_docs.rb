class AddLongitudeToDocs < ActiveRecord::Migration
  def change
    add_column :docs, :longitude, :float
  end
end
