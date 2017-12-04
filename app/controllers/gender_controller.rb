class GenderController < ApplicationController
  def create
    @gender = Gender.create gender_options_params
  end
  private
  def gender_params
    params.require(:gender).permit(:name)
  end
end
