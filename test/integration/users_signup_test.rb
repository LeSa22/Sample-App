require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
	get signup_path
	assert_no_difference 'User.count', 1 do
      post users_path, user: { name:  "tranlesa",
                               email: "tranlesa22@gmail.com",
                               password:              "1234567",
                               password_confirmation: "1234567" }
    end
    assert_template 'users/new'  	
    assert is_logged_in?
  end
end
