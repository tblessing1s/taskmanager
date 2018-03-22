class AddFieldToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :due, :date
  end
end
