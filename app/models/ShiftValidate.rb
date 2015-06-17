class ShiftValidate < ActiveModel::Validator
	def validate (record)
	   same=Shift.where(:date => record.date)
		if same.size

			i=0 while i<same.size do
				if same[i].time==record.time
					record.errors.[:base] << " Смена уже существует в системе!"
				end
			end
	    	end		
	end
end
	
