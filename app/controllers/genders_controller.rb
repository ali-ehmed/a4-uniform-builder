class GendersController < ApplicationController
  def create
    @gender = Gender.create gender_options_params
  end
  def index
    @genders  = Gender.all
  end
  private
  def gender_params
    params.require(:genders).permit(:name)
  end
end
