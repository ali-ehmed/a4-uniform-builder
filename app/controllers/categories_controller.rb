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
    params.require(:category).permit(:garment_category, :acs_garment_category_description, :acs_garment_category_code, :gender_id, sports: [])
  end
  def update_user
    current_user.update_attribute :category_id, params[:category_id]
  end  
end
