class GendersController < ApplicationController
  before_action :get_sport, only: [:index, :update]

  def create
    @gender = Gender.create gender_options_params
  end
  def update
    @sport.update_attribute :is_selected, true
    redirect_to :genders
  end  
  def index
    @genders  = Gender.all
  end
  private
  def gender_params
    params.require(:genders).permit(:name)
  end
  def get_sport
    if params[:sport]
      @sport    = Sport.find_by_id(params[:sport][:id])
      @sport.update_attribute :is_selected, true
      current_user.update_attribute(:sport, params[:sport][:id])
    end
  end  
end
