class AddLatitudeToDocs < ActiveRecord::Migration
  def change
    add_column :docs, :latitude, :float
  end
end
