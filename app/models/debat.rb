class Debat < ApplicationRecord

	has_many :votes
	has_many :users, through: :votes
	has_many :comments, through: :comments

end
