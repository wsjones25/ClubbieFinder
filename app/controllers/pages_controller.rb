class PagesController < ApplicationController
  def home
  	@pros = Pro.all
  end

  def about
  end

  def contact
  end
end
