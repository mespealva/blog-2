class RemoveColumnsFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :publish, :boolean
    remove_column :posts, :publish_date, :date
  end
end
