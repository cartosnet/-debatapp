class VotesController < ApplicationController

  def create
    @debat = Debat.find(params[:debat_id])
    @vote = Vote.new(vote_params)
    @vote.debat = @debat
    if @vote.save
      redirect_to debat_path(@debat)
    else
      render 'debats/show'
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:value, :description)
  end
end
