require 'test_helper'

class PostTest < ActiveSupport::TestCase
	def setup 
		
		@post = Post.new(title: "my first post", content: "my first content")
	end

	test "should have title" do
		@post.title = "       "
		assert_not @post.valid?
	end

	test "title shouldn't be to long" do
		@post.title = "a" * 21
		assert_not @post.valid?
	end

	test "should have content" do 
		@post.content = "      "
		assert_not @post.valid?
	end

	test "content shouldn't be too long" do
		@post.content = "a" * 251
		assert_not @post.valid?
	end
end
