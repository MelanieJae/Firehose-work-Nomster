class PlacesController < ApplicationController
	def index
		@places = Place.all.paginate(:page => params[:page], per_page: 3)
	end

	#def create
	#	@places = Place.create(place_params)	
	#end
	
	#def place_params	
	#	params.require(:place).permit(:name, :address, :description)								  
	#end

	def new
		@place = Place.new
	end

end
