class EpisodesController < ApplicationController

  before_action :find_episode, only: [:show, :edit, :update, :destroy]

  def index
    @episodes = Episode.all
  end

  def new

  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

private
  def episode_params
      params.require(:episode).permit(:date, :number)
  end

  def find_episode
      @episode = Episode.find(params[:id])
  end

end
