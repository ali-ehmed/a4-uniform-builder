class OptionsController < ApplicationController
  before_action :update_user, only: [:index]
  def create

  end
  def index
    # @options = Option.all
  end
  private
  def update_user
    current_user.update_attribute :style, params[:style]
  end
end
