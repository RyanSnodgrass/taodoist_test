class UpdateBoolean < ActiveRecord::Migration
  def change
  	change_column :to_dos, :completed, :boolean, :default => false
  end
end
