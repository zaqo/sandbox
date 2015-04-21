class ChangeFansInGenparams < ActiveRecord::Migration
  def change
	change_table :genparams do |t|
  	t.remove :fan261,:fan262,:fan263,:fan264,:fan265,:fan266
	t.string :fan261,:fan262,:fan263,:fan264,:fan265,:fan266
  end

  end
end
