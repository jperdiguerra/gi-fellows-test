class AddPosttestScoreToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :posttest_score, :integer
  end
end
