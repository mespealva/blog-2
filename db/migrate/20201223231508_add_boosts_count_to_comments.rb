class AddBoostsCountToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :boosts_count, :integer
  end
end
