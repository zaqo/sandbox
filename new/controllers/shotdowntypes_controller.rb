class ShotdowntypesController < ApplicationController
http_basic_authenticate_with name: "master", password: "pasta", except: [:index,:show] 

	def index
		@shotdowntypes=Shotdowntype.all
	end

	def show
		@shotdowntype = Shotdowntype.find(params[:id])
	end
	
	def new
		@shotdowntype = Shotdowntype.new
	end

	def edit
		@shotdowntype = Shotdowntype.find(params[:id])
	end


	def create

		@shotdowntype= Shotdowntype.new(sdtype_params)
		if @shotdowntype.save
			redirect_to @shotdowntype
		else
			render 'new'
		end
	end

	def update
		@shotdowntype= Shotdowntype.find(params[:id])

		if @shotdowntype.update(sdtype_params)
			redirect_to @shotdowntype
		else
			render 'edit'
		end
	end

	def destroy

		@shotdowntype = Shotdowntype.find(params[:id])
		@shotdowntype.destroy

		redirect_to shotdowntypes_path
	end

	private
	
	def sdtype_params
		params.require(:shotdowntype).permit(:description,:location)
	end

end
