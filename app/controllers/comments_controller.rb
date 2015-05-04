class CommentsController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@place = Place.find(params[:place_id])
		@place.comments.create(comment_params.merge(:user => current_user))
		redirect_to place_path(@place)
		if @place.comment.invalid?
			flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    	end
    	if @place.comment.blank?
    		render :text => "Not Found", :status => :not_found
    	redirect_to root_path
		end
	end

	

	private

	#pulls data out of comments form

	def comment_params
		params.require(:comment).permit(:message, :rating)
	end	
end
