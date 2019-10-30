class CreateChoice < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :text
      t.integer :question_id
    end
  end
end
