class Blogger < ApplicationRecord
	has_many :posts 
	has_many :destinations, through: :posts

	validates :name, uniqueness: true
	validates :bio, length: {minimum: 30}
	validates :age, numericality: {greater_than: 0}


end

 	# - Bloggers should have unique names and ages above 0, and their bio should be over 30 characters long.
