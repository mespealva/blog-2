class AddBoostsCountToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :boosts_count, :integer
  end
end
