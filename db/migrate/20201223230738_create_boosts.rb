class CreateBoosts < ActiveRecord::Migration[6.1]
  def change
    create_table :boosts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :boostable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
