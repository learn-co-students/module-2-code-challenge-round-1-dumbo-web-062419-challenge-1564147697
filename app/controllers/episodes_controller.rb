class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def new
    @episode = Episode.new

  end

  def create
    @episode = Episode.create(episode_params)
    redirect_to @episode

  end

def edit
  @episode = Episode.find(params[:id])
end

def update
  @episode = Episode.find(params[:id])
  @episode.update(episode_params)
  redirect_to @episode
end

def destroy
  @episode = Episode.find(params[:id])
  @episode.destroy
  redirect_to episodes_path
end

  private

  def episode_params
    params.require(:episode).permit(:date, :number)

  end
end
