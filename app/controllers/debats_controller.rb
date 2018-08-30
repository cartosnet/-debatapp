class DebatsController < ApplicationController
	 skip_before_action :authenticate_user!, only: :show
  def show
  	@debat = Debat.last
  	@votes = @debat.votes
    @vote = Vote.new 
  end
end
