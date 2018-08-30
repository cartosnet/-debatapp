class Comment < ApplicationRecord

	belongs_to :vote
	belongs_to :user

	validates :description, presence: true

end
