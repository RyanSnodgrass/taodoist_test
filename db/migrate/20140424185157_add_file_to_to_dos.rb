class AddFileToToDos < ActiveRecord::Migration
  def change
  	add_column :to_dos, :file, :deadline, :boolean, default: false
  end
end
