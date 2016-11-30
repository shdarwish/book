require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "author attribute must not be empty" do 
  	author = Author.new
  	assert author.invalid?
  	assert author.errors[:name].any?
  end
end
