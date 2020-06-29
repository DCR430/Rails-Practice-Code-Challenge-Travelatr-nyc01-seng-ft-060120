class Destination < ApplicationRecord
	has_many :posts
	has_many :bloggers, through: :posts

	def all_posts
		self.posts.each do |post|
			post.title
		end
	end

end
