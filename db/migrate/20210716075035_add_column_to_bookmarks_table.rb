class AddColumnToBookmarksTable < ActiveRecord::Migration[6.0]
  def change
    add_column :bookmarks, :rating, :float
  end
end
