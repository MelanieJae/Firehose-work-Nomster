class PlacesController < ApplicationController
	#adding a before filter so that only authenticated users can create new places"
		before_action :authenticate_user!, :only => [:new, :create, :edit, :update]
	def index
		@places = Place.all.paginate(:page => params[:page], per_page: 3)
	end

	def create
		current_user.places.create(place_params)
		redirect_to root_path	
	end

	def new
		@place = Place.new
	end

	def show
		@place = Place.find(params[:id])
	end

	def edit
		@place = Place.find(params[:id])
		#secure the edit page so others can't shortcut into
		#the edit form without signing up or in
		if @place.user != current_user
			return render :text => 'Not Allowed', :status => :forbidden
		end
	end

	def update
		@place = Place.find(params[:id])
		if @place.user != current_user
			return render :text => 'Not Allowed', :status => :forbidden
		end
		@place.update_attributes(place_params)
		redirect_to root_path
	end

	def destroy
		@place = Place.find(params[:id])
		@place.destroy
		redirect_to root_path
	end

	private
	
	def place_params	
		params.require(:place).permit(:name, :address, :description)								  
	end
end
	

