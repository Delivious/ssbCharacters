class CreateCharacters < ActiveRecord::Migration[8.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :desc
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps
    end
  end
end
