class DebatsController < ApplicationController
	 skip_before_action :authenticate_user!, only: [:index, :show]
  
  def index
  	@debats = Debat.all
  end

  def show
  	@debat = Debat.find(params[:id])
    @vote = Vote.new 
    @votes = @debat.votes
  end
end
