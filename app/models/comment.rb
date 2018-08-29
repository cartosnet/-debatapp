class Comment < ApplicationRecord

	belongs_to :votes
	belongs_to :users

end
