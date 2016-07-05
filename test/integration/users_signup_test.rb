require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "signup info - invalid" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "",
                                         email: "user@invalid",
                                         password:              "123",
                                         password_confirmation: "abc" } }
    end
    assert_template 'users/new'
    assert_select 'div#<CSS id for error explanation>'
    assert_select 'div.<CSS class for field with error>'
  end

  test "signup info - valid" do
      get signup_path
      assert_difference 'User.count', 1 do
        post users_path, params: { user: { name:  "User",
                                           email: "user@example.com",
                                           password:              "useruser",
                                           password_confirmation: "useruser" } }
      end
      follow_redirect!
      assert_template 'users/show'
    end


end