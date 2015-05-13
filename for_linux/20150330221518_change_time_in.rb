class ChangeTimeIn < ActiveRecord::Migration
  	def change
		change_column :shifts, :time, :text 
	end
end
