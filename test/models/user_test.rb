require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(first_name: "anshita", last_name: "sayal", email: "anshita@email.com", password: "Mateo11", password_confirmation: "Mateo11")
  end

  test "email validation should not accept invalid email addresses" do
    invalid_addresses = %w[anshita@email,com anshita_at_sayal.org anshita.sayal@email.
                           anshita@sayal_rohit.com anshita@sayal+anush.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  test "email addresses uniqueness" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  test "password minimum length" do
    @user.password = @user.password_confirmation = "a" * 7
    assert_not @user.valid?
  end

  test "email presence true" do
    @user.email= "      "
    assert_not @user.valid?
  end
  test "first name length" do
    @user.first_name= "a" * 51
    assert_not @user.valid?
  end
  test "last name length" do
    @user.last_name= "a" * 51
    assert_not @user.valid?
  end
end
