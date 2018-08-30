class DebatsController < ApplicationController
	 skip_before_action :authenticate_user!, only: :show
  def show
  	@debat = Debat.last
  	@votes = @debat.votes
  	# @comments = @debat.comments
  end
end
