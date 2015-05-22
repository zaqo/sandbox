class CleanTechparams < ActiveRecord::Migration
  def change
change_table :techparams do |t|
		t.remove  :vel90, :vel51,:watert,:headt1,:headt2,
			  :cylt1, :cylt2, :rot1, :rot2, :pressbar1, :pressbar2,
			  :tr51t, :tr51f,:tr561t,:tr561f,:tr562t,:tr562f,:tr563t,:tr563f,
			  :tr564t,:tr564f,:tr565t,:tr565f
		t.decimal :tempz,:temph1,:temph2,
			  :tempcyl1, :tempcyl2, :rotate1, :rotate2, :press1, :press2, :temp90,
			  :temp51, :hum51,:temp56_1,:hum56_1,:temp56_2,:hum56_2,:temp56_3,:hum56_3,
			  :temp56_4,:hum56_4,:temp56_5,:hum56_5, 
			  precision: 5, scale: 2
	
	end
  end
end
