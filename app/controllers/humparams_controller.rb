class HumparamsController < ApplicationController

	http_basic_authenticate_with name: "master", password: "pasta", except: [:index,:show] 

	def index
		@shift = Shift.find(params[:shift_id])
		@humparams=Humparam.all
	end

	def show
		@shift = Shift.find(params[:shift_id])
		@humparam = @shift.humparams.find(params[:id])
	end
	
	def new
		@shift = Shift.find(params[:shift_id])
		@humparam = Humparam.new
	end

	def create
		@shift = Shift.find(params[:shift_id])
		@humparam = @shift.humparams.create(hum_params)
		redirect_to shift_path(@shift)
	end

	def edit
		@shift = Shift.find(params[:shift_id])
		@humparam = @shift.humparams.find(params[:id])
	end

	def update
		@shift = Shift.find(params[:shift_id])
		@humparam = @shift.humparams.find(params[:id])
		if @humparam.update(hum_params)
			redirect_to @humparam
		else
			render 'edit'
		end
	end

	def destroy

		@shift = Shift.find(params[:shift_id])
		@humparam = @shift.humparams.find(params[:id])
		@humparam.destroy

		redirect_to shift_path(@shift)
	end

	private
	
	def hum_params
		params.require(:humparam).permit(:htime,:tr90,:tr51,:tr56_1,:tr56_2,:tr56_3,:tr56_4,:tr56_5)
	end


end
