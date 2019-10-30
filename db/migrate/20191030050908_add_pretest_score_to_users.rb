class AddPretestScoreToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pretest_score, :integer
  end
end
