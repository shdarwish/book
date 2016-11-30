require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test "user attributes must not be empty" do 
  	user = User.new
  	assert user.invalid?
  	assert user.errors[:name].any?
  	assert user.errors[:username].any?
  	assert user.errors[:email].any?
  	assert user.errors[:password].any?

  end


  def setup
    @user = User.new(name: "hello", username: "cool", email: "sh@qatar.cmu.edu", password: "aacceedd", password_confirmation: "aacceedd")
  end


  test "user password should be bigger or equal to 8 charecters" do 

     @user.password = @user.password_confirmation = "aabbccdd"
     assert_not @user.valid?

     @user.password = @user.password_confirmation = "aabbccddee"
     assert_not @user.valid?
   end

    test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

  test "user is not valid without a unique username" do 
    u = User.new(username: "cool",
      name: "yxy",
      email: "s@qatar.cmu.edu", 
      password: "aacceedd", 
      password_confirmation: "aacceedd")
  assert u.invalid?
  assert_equal ["has already been taken"], u.errors[:username] 
end


  test "user is valid without a unique username" do 
    u = User.new(username: "Noor",
      name: "yky",
      email: "l@qatar.cmu.edu", 
      password: "aacceedd", 
      password_confirmation: "aacceedd")
  assert_not u.invalid?
end






end
