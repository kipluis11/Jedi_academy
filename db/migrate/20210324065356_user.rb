class User < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.belongs_to :master, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
