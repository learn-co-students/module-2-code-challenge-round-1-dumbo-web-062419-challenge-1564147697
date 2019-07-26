class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @appearance = Appearance.new
    @episodes = Episode.all
  end


end
