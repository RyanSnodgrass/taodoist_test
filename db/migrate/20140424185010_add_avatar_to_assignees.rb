class AddAvatarToAssignees < ActiveRecord::Migration
  def change
  	add_column :assignees, :avatar, :string 
  end
end
