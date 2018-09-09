require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(name: "dr farts", email: "farts@fart.com")
	end

	test "should be vaild" do
		assert @user.valid?
	end

	test "name should be present" do
		@user.name = "          "
		assert_not @user.valid?
	end

	test "name should not be too long" do
		@user.name = "a"* 51
		assert_not @user.valid?
	end

	test "email should be present" do
		@user.email = "       "
		assert_not @user.valid?
	end

	test "email should not be too long" do
		@user.email = "a" * 244 + "@example.com"
		assert_not @user.valid?
	end

	test "email should be unique" do
		duplicate_user = @user.dup
		duplicate_user.email = @user.email.upcase
		@user.save
		assert_not duplicate_user.valid?
	end
end