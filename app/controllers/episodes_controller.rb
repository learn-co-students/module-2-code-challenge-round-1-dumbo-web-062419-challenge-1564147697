class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all

  end

  def show
    @guests = Guest.all
    @shows = Show.all
    @episode = Episode.find(params[:id])
end

end
