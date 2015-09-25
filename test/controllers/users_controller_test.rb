require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(first_name: "anshita", last_name: "sayal", email: "anshita@email.com", password: "Mateo11", password_confirmation: "Mateo11")
  end
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end


  test "should redirect edit when not logged in" do
    get :edit, id: @user
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect update when not logged in" do
    patch :update, id: @user, user: { name: @user.first_name, email: @user.email }
    assert_not flash.empty?
    assert_redirected_to login_url
  end
end
