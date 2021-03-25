class AddMasterTo < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :masters, :belongs_to
  end
end
