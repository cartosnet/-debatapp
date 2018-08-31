class Vote < ApplicationRecord

	belongs_to :debat
	belongs_to :user
	has_many :comments, dependent: :destroy

end
