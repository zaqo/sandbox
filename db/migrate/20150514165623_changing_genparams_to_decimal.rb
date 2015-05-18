class ChangingGenparamsToDecimal < ActiveRecord::Migration
  def change
	change_table :genparams do |g|
		g.remove  :vel90, :vel51, :waterpc, :waterl, :flour, :watert,:headt1,:headt2,
			  :cylt1, :cylt2, :rot1, :rot2, :pressbar1, :pressbar2,
			  :tr51t, :tr51f,:tr561t,:tr561f,:tr562t,:tr562f,:tr563t,:tr563f,
			  :tr564t,:tr564f,:tr565t,:tr565f
		g.decimal :vel90, :vel51, :waterpc, :waterl, :flour, :watert,:headt1,:headt2,
			  :cylt1, :cylt2, :rot1, :rot2, :pressbar1, :pressbar2,
			  :tr51t, :tr51f,:tr561t,:tr561f,:tr562t,:tr562f,:tr563t,:tr563f,
			  :tr564t,:tr564f,:tr565t,:tr565f, 
			  precision: 5, scale: 2
	end
  end
end
