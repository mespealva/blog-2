class AddNameProviderToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :provider, :string, null: false
  end
end
