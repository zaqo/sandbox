class ChangeGenparamsTr90tinteger < ActiveRecord::Migration
  def change

	change_table :genparams do |t|
  	
	  t.remove :tr90tinteger
	
	  t.integer :tr90t
	
	end

  end
end
