class Comment < ApplicationRecord
	validates :user_id, presence: true
	validates :post_id, presence: true
	validates :content, presence: true, length: { maximum: 250 }
	belongs_to :post
	belongs_to :user

end