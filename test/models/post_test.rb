require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

   test "post attribute must not be empty" do 
  	post = Post.new
  	assert post.invalid?
  	assert post.errors[:book_id].any?
  	assert post.errors[:contant].any?
  end
end
