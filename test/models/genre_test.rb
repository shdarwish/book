require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "genre attribute must not be empty" do 
  	genre = Genre.new
  	assert genre.invalid?
  	assert genre.errors[:name].any?
  end

end
