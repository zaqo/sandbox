class GenparamsController < ApplicationController


	http_basic_authenticate_with name: "master", password: "pasta", except: [:index,:show] 

	def index
		@shift = Shift.find(params[:shift_id])
		@genparams=Genparam.all
	end

	def show
		@shift = Shift.find(params[:shift_id])
		@genparam = @shift.genparams.find(params[:id])
	end
	
	def new
		@shift = Shift.find(params[:shift_id])
		@genparam = @shift.genparams.build
	end

	def create
		@shift = Shift.find(params[:shift_id])
		@genparam = @shift.genparams.create(gen_params)
		redirect_to shift_path(@shift)
	end

	def edit
		@shift = Shift.find(params[:shift_id])
		@genparam = @shift.genparams.find(params[:id])
	end

	def update
		@shift = Shift.find(params[:shift_id])
		@genparam = @shift.genparams.find(params[:id])
		if @genparam.update(gen_params)
			redirect_to @genparam
		else
			render 'edit'
		end
	end

	def destroy

		@shift = Shift.find(params[:shift_id])
		@genparam = @shift.genparams.find(params[:id])
		@genparam.destroy

		redirect_to shift_path(@shift)
	end

	private
	
	def gen_params
		params.require(:genparam).permit(:start,:end,:sortament,:vel90,:vel51,:fan261,:fan262,:fan263,:fan264,:fan265,:fan266,:waterpc,:waterl,:flour,:watert,:headt1,:headt2,:cylt1,:cylt2,:rot1,:rot2,:pressbar1,:pressbar2,:tr90t,:tr51t,:tr51f,:tr561t,:tr561f,:tr562t,:tr562f,:tr563t,:tr563f,:tr564t,:tr564f,:tr565t,:tr565f)
	end




end
