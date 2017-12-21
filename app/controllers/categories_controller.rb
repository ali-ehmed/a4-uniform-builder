class CategoriesController < ApplicationController
  def create
    Category.create category_params
  end

  def index
    @categories = Category.all
  end
  private
  def category_params
    params.require(:category).permit(:garment_category, :acs_garment_category_description, :acs_garment_category_code, :gender_id)
  end
end
