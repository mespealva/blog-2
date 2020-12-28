class AddPublishAndDateToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :publish, :boolean
    add_column :posts, :publish_date, :date
  end
end
