class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:privacy, :about, :blog]
  def privacy
  end

  def about
  end

  def blog
  end
end
