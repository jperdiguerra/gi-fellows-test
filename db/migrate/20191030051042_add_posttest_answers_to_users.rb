class AddPosttestAnswersToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :posttest_answers, :text
  end
end
