class TechparamsController < ApplicationController

	http_basic_authenticate_with name: "master", password: "pasta", except: [:index,:show] 

	def index
		@shift = Shift.find(params[:shift_id])
		@techparams=Techparam.all
	end

	def show
		@shift = Shift.find(params[:shift_id])
		@techparam = @shift.techparams.find(params[:id])
	end
	
	def new
		@techparam = Techparam.new
	end

	def create
		@shift = Shift.find(params[:shift_id])
		@techparam = @shift.techparams.create(tech_params)
		redirect_to shift_path(@shift)
	end

	def edit
		@shift = Shift.find(params[:shift_id])
		@techparam = @shift.techparams.find(params[:id])
	end

	def update
		@shift = Shift.find(params[:shift_id])
		@techparam = @shift.techparams.find(params[:id])
		if @techparam.update(tech_params)
			redirect_to @techparam
		else
			render 'edit'
		end
	end

	def destroy

		@shift = Shift.find(params[:shift_id])
		@techparam = @shift.techparams.find(params[:id])
		@techparam.destroy

		redirect_to shift_path(@shift)
	end

	private
	
	def tech_params
		params.require(:techparam).permit(:ttime,:waterpc,:waterl,:flour,:tempz,:temph1,:temph2,:tempcyl1,:tempcyl2,:rotate1,:rotate2,:press1,:press2,:temp90,:temp51,:hum51,:temp56_1,:hum56_1,:temp56_2,:hum56_2,:temp56_3,:hum56_3,:temp56_4,:hum56_4,:temp56_5,:hum56_5)
	end


end
