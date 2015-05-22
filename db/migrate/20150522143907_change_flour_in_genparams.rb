class ChangeFlourInGenparams < ActiveRecord::Migration
  def change
	change_table :genparams do |g|
		g.remove  :flour
		g.decimal :flour, precision: 6, scale: 2
	end
  end
end
