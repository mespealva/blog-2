class RemoveAuthorAuthorEmailFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :author, :string
    remove_column :comments, :author_email, :string
  end
end
