class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :family_name
      t.string :given_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.date :birthday
      t.timestamps
    end
  end
end
