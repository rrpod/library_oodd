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
  test "should get show" do
    get :new
    assert_response :success
  end
  test "should get create" do
    get :new
    assert_response :success
  end
  test "should get destroy" do
    get :new
    assert_response :success
  end


end
