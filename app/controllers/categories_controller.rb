class CategoriesController < ApplicationController
  before_action :update_user
  def create
    Category.create category_params
  end

  def index
    @categories = Category.all
  end
  private
  def category_params
    params.require(:category).permit(:garment_category, :acs_garment_category_description, :acs_garment_category_code, :gender_id, sport_ids: [])
  end
  def update_user
    params[:category_id] && current_user.update_attribute(:category_id, params[:category_id])
  end  
end
