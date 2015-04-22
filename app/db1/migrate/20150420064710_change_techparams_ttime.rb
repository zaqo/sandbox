class ChangeTechparamsTtime < ActiveRecord::Migration
  def change
	change_table :techparams do |t|
  	t.remove :ttime
	t.time :ttime 
  end
  end	  
end
