class StoresController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@stores = Store.all
	end

	def new
		@store = Store.new
	end

	def show
		 @store = Store.find(params[:id])
	end

	def create
  		current_user.stores.create(store_params)
  		redirect_to root_path
	end

	private

	def store_params
  		params.require(:store).permit(:name, :description, :address)
	end

end
