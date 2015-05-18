class ChangeHumparamsToDecimal < ActiveRecord::Migration
  def change
	change_table :humparams do |h|
		h.remove  :tr90, :tr51, :tr56_1, :tr56_2,:tr56_3,:tr56_4,:tr56_5
		h.decimal :tr90, :tr51, :tr56_1, :tr56_2,:tr56_3,:tr56_4,:tr56_5, precision: 3, scale: 2
	end
  end
end
