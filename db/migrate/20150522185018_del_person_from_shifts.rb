class DelPersonFromShifts < ActiveRecord::Migration
  def change
	  	remove_column :shifts, :person_id

  end
end
