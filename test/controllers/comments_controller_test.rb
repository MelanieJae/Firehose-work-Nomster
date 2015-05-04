require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
 	
 	test "comment create" do
  		user = FactoryGirl.create(:user)
  		sign_in user
  		place = FactoryGirl.create(:place)

	 	assert_difference 'Comment.count' do
       		post :create, {:place, :comment => {:message => 'great food', :rating => '4_stars'}}		
       	end
       	
       	assert_redirected_to place_path
	 	assert_equal 1, place.comments.count
	end	

	
end
