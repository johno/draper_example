class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :username
      t.text :bio
      t.string :first_name
      t.string :last_name
      t.string :website
      t.boolean :public_email

      t.timestamps
    end
  end
end
