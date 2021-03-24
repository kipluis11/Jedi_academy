class User < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |k|
      k.string :username
      k.string :password_digest
      k.integer :master_id
      k.integer :user_id

      k.timestamps
  end
end
