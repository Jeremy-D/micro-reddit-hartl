require 'test_helper'

class CommentTest < ActiveSupport::TestCase
	def setup
		@comment = Comment.new(user_id: 1, post_id:1, content: "this post sucks")
	end

	test "should have user_id" do
		@comment.user_id = nil
		assert_not @comment.valid?
	end	

	test "should have post_id" do
		@comment.post_id = nil
		assert_not @comment.valid?
	end	

	test "should have content" do
		@comment.content = nil
		assert_not @comment.valid?
	end

	test "content shouldn't be too long" do
		@comment.content = "a" * 251
		assert_not @comment.valid?
	end





end
