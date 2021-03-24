class Master < ActiveRecord::Migration[6.1]
  def change
    create_table :masters do |t|
      t.string :master_name
      t.string :preferred_sabre_style

      t.timestamps
    end
  end
end
