class User < ApplicationRecord
	validates :name,  presence: true, length: { maximum: 50 }
	validates :email, presence: true, uniqueness: { case_sensitive: false}, 
						length: { maximum: 255 }
	has_many :posts
end
