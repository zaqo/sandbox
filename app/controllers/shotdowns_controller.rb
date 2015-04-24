class ShotdownsController < ApplicationController


	def index
		@shift = Shift.find(params[:shift_id])
		@shotdowns = Shotdown.all
	end
	def show
		@shift = Shift.find(params[:shift_id])
		@shotdown= @shift.shotdowns.find(params[:id])
	end
	def create
		@shift=Shift.find(params[:shift_id])
		@shotdown= @shift.shotdowns.create(shotdown_params)
		redirect_to shift_path(@shift)
	end
	def edit
		@shift = Shift.find(params[:shift_id])
		@shotdown= @shift.shotdowns.find(params[:id])
	end

	def destroy
		@shift= Shift.find(params[:shift_id])
		@shotdown= @shift.shotdowns.find(params[:id])
		@shotdown.destroy
		redirect_to  shift_path(@shift)
	end
	def update
		@shift= Shift.find(params[:shift_id])
		@shotdown= @shift.shotdowns.find(params[:id])
		if @shotdown.update(shotdown_params)
			redirect_to @shift
		else	
			render 'edit' # changed and not checked out!
		end
	end
	private
	
	def shotdown_params
		params.require(:shotdown).permit(:start,:end,:reason)
	end


end
