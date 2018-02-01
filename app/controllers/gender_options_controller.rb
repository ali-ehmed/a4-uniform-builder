class GenderOptionsController < ApplicationController

  def create
    @gender_option = GenderOption.create gender_options_params
  end
  private
  def gender_options_params
    params.require(:gender_option).permit(:gender_id, :name)
  end
end
