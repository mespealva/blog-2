class AddOwnerToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :owner, polymorphic: true, null: false
  end
end
