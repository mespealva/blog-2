class AddColumnsFromPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :published, :boolean, default: false
    add_column :posts, :published_date, :date
  end
end
