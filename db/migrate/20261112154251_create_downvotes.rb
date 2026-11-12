class CreateDownvotes < ActiveRecord::Migration[8.1]
  def change
    create_table :downvotes do |t|
      t.references :character, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
