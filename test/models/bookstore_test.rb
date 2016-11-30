require 'test_helper'

class BookstoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

 test "bookstore attribute must not be empty" do 
  	bookstore = Bookstore.new
  	assert bookstore.invalid?
  	assert bookstore.errors[:name].any?
  end
end
