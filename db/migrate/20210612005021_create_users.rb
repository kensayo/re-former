class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username, null: false, uniqueness: true
      t.string :password, null: false
      t.string :email, null: false, uniqueness: true

      t.timestamps
    end
  end
end
