class DecorationsController < ApplicationController
  def index
    @decorations = Decoration.all
  end
end
