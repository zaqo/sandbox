class SuppliersController < ApplicationController


	http_basic_authenticate_with name: "master", password: "pasta", except: [:index,:show] 

	def index
		@suppliers=Supplier.all
	end

	def show
		@supplier = Supplier.find(params[:id])
	end
	
	def new
		@supplier = Supplier.new
	end

	def edit
		@supplier = Supplier.find(params[:id])
	end


	def create

		@supplier= Supplier.new(supplier_params)
		if @supplier.save
			redirect_to @supplier
		else
			render 'new'
		end
	end

	def update
		@supplier= Supplier.find(params[:id])

		if @supplier.update(supplier_params)
			redirect_to @supplier
		else
			render 'edit'
		end
	end

	def destroy

		@supplier = Supplier.find(params[:id])
		@supplier.destroy

		redirect_to supplier_path
	end

	private
	
	def supplier_params
		params.require(:supplier).permit(:name,:structure,:inn,:address,:phone)
	end

end
