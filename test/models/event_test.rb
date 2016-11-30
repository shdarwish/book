require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  test "event attribute must not be empty" do 
  	event = Event.new
  	assert event.invalid?
  	assert event.errors[:name].any?
  	assert event.errors[:when].any?

  end
end
