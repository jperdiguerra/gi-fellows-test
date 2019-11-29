class AddProgressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :progress, :integer, default: 1
  end
end
