class VisitsController < ApplicationController

  def index
    @visits = Visit.all
  end

  def new
    @visit = Visit.new
    @episodes = Episode.all
    @guests = Guest.all
  end

  def create
    @visit = Visit.create(params.require(:visit).permit(:guest_id, :episode_id, :rating))
    byebug

    # Error: Couldn't find Episode with 'id'=
    @episode = Episode.find(params[:episode_id])
    @guest = Guest.find(params[:guest_id])
    redirect_to episode_path(@episode)
  end
end
