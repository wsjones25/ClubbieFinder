class PagesController < ApplicationController
  def home
  	@pros = Pro.all
  	@clubs = Club.all
  end

  def about
  end

  def contact
  end

end
