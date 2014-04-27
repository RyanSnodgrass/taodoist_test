class CreateAssignees < ActiveRecord::Migration
  def change
    create_table :assignees do |t|
      t.string :name
      t.string :department
    end
  end
end
