require 'test_helper'

class CommentTest < ActiveSupport::TestCase
#    test "the truth" do
#      assert false
#    end

  test "humanized_rating" do
   	user = FactoryGirl.create(:user)
   	comment = FactoryGirl.create(:comment, :rating => '4_stars')
   
	expected = '4 stars' 
 	actual = comment.rating.humanized_rating

	assert_equal expected, actual
   	assert_redirected_to place_path
   end
   
end
