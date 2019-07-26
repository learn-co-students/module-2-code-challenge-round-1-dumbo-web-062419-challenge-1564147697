class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @guests = @episode.visit.find(params([:id])).guests
  end
end
