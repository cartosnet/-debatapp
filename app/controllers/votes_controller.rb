class VotesController < ApplicationController

  def create
    @debat = Debat.find(params[:debat_id])
    @votes = Vote.all
    @vote = Vote.new(vote_params)
    @vote.debat = @debat
    
      redirect_to root_path
   
  end

  private

  def vote_params
    params.require(:vote).permit(:value, :description)
  end
end
