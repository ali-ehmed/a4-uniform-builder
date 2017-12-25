class HomeController < ApplicationController
  def index
  	@featured_image	= Sport.where(is_featured: true)
  end
end
