class AddPosttest2ToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :posttest2_answers, :text
    add_column :users, :posttest2_score, :integer
  end
end
