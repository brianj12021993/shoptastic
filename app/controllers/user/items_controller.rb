class User::ItemsController < ApplicationController
	 before_action :authenticate_user!

	 def new
	 	@item = Item.new
	 end

	 def create
    	@item = current_user.items.create(item_params)
    	redirect_to user_item_path(@item)
  	end

  	def show
    	@item = Item.find(params[:id])
  	end

  	private

  	def item_params
    	params.require(:item).permit(:title, :cost)
  	end
end
