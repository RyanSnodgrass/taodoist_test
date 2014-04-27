class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :task
      t.date :deadline
      t.string :department
      t.integer :assignee_id
      t.boolean :completed
    end
  end
end
