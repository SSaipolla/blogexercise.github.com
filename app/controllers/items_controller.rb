class ItemsController < ApplicationController

def index

end

def new 
	@item = Item.new
end

def create
	@item = Item.new(items_params)
	if @item.save
		redirect_to root_path
	else
		render "new"
	end
end

private
	def items_params
		params.require(:item).permit(:title, :description)
	end

end
