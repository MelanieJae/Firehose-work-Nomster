require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test "humanized_rating" do
   	comment = FactoryGirl.create(:comment, :rating => '4_stars')

	expected = '4 stars' 
 	actual = comment.humanized_rating

	assert_equal expected, actual
   	
   end

end
