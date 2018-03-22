class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :lot
      t.boolean :completed
      t.boolean :reoccuring

      t.timestamps
    end
  end
end
