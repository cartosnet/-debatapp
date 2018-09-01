class VotesController < ApplicationController

  def create
    @debat = Debat.find(params[:debat_id])
    @user = current_user
    @vote = Vote.new(vote_params)
    @vote.debat = @debat
    @vote.user = @user
    @votes = @debat.votes

    if @vote.save
      redirect_to debat_path(@debat)
    else
      render "debats/show"
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:value, :description)
  end
end
