require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "book attribute must not be empty" do 
  	book = Book.new
  	assert book.invalid?
  	assert book.errors[:isbn].any?
  	assert book.errors[:title].any?
  	assert book.errors[:author].any?
  	assert book.errors[:genre_id].any?
  end


end
