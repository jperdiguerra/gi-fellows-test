class AddTrainingToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :training, :integer
  end
end
