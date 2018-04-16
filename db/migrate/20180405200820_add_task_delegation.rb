class AddTaskDelegation < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :employee_id, :integer
  end
end
