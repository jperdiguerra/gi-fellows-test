class AddImageToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :image, :text
  end
end
