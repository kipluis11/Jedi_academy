class Power < ActiveRecord::Migration[6.1]
  def change
    create_table :powers do |t|
      t.string :power_name
      t.string :descritpion
      t.belongs_to :training, foreign_key: true
      

      t.timestamps
    end
  end
end
