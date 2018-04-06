class RemoveNameFromComment < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :name
    add_column :comments, :user_id, :integer
  end
end
