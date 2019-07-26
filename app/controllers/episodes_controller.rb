class EpisodesController < ApplicationController
  before_action :find_episode, only: [:show, :edit, :update, :destroy]

  def index
    @episodes = Episode.all
  end

  def show
    find_episode
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.create(episode_params)
    redirect_to episodes_path
  end

  def edit
    find_episode
  end

  def update
    find_episode
    @episode.update(episode_params)
  end

  def destroy
    find_episode
    @episode.destroy
    redirect_to episodes_path
  end

  private

  def episode_params
    params.require(:episode).permit(:date, :number)
  end

  def find_episode
    @episode = Episode.find(params[:id])
  end

end
