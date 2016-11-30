require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "quiz attribute must not be empty" do 
  	quiz = Quiz.new
  	assert quiz.invalid?
  	assert quiz.errors[:q1].any?
  	assert quiz.errors[:q2].any?
  	assert quiz.errors[:q3].any?
  	assert quiz.errors[:q4].any?
  	assert quiz.errors[:q5].any?
  	assert quiz.errors[:q6].any?
  	assert quiz.errors[:q7].any?
  	assert quiz.errors[:results].any?
  end
end
