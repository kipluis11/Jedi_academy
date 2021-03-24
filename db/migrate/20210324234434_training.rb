class Training < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.string :training_name
      t.string :power_learned
      t.belongs_to :master, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
