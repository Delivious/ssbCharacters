class CreateAccounts < ActiveRecord::Migration[8.1]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
