class EditCommentColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :user_id, :employee_id
  end
end
