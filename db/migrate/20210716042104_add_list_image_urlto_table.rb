class AddListImageUrltoTable < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :imageurl, :string
  end
end
