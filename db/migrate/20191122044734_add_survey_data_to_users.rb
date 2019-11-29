class AddSurveyDataToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :text
    add_column :users, :age, :integer
    add_column :users, :gender, :integer
    add_column :users, :endoscopies, :integer
    add_column :users, :iee, :integer
  end
end
