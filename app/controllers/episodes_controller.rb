class EpisodesController < ApplicationController

  before_action :set_episode, only: [:show, :edit, :update, :destroy]

  def index
    @episodes = Episode.all
  end

  def show

  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
    if @episode.valid?
      @episode.save
      redirect_to episode_path(@episode)
    else
      flash[:errors] = @episode.errors.full_messages
      redirect_to new_episode_path
    end
  end

  def edit

  end

  def update
    if @episode.update(episode_params)
      @episode.save
      redirect_to episode_path(@episode)
    else
      flash[:errors] = @episode.errors.full_messages
      redirect_to edit_episode_path(@episode)
    end
  end

  def destroy
    @episode.destroy
    redirect_to episodes_path
  end



  private
    def set_episode
      @episode = Episode.find(params[:id])
    end

    def episode_params
      params.require(:episode).permit(:date, :number)
    end
end
