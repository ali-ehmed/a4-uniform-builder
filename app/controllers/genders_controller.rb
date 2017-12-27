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
    categories              = Sport.find_by(id: current_user.sport).try(:categories)
    @gender_categories      = categories.group_by(&:gender) if categories.present?
  end
  private
  def gender_params
    params.require(:genders).permit(:name)
  end
  def get_sport
    @request = params[:request] == "home"
    @request && update_data(params[:sport]) || (params[:sport] && update_data(params[:sport][:id]))
  end
  def update_data sport_id
    @sport    = Sport.find_by_id(sport_id)
    @request ||  @sport.update_attribute(:is_selected, true)
    current_user.update_attribute(:sport, sport_id)
  end
end
