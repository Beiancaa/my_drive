class AddDocIdToAttaches < ActiveRecord::Migration
  def change
    add_column :attaches, :doc_id, :integer
  end
end
