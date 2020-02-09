class AddPosttest3ToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :posttest3_answers, :text
    add_column :users, :posttest3_score, :integer
  end
end
