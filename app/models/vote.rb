class Vote < ApplicationRecord

	belongs_to :debates
	belongs_to :users
	has_many :comments

end
