class EpisodesController < ApplicationController

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
    if @episode.valid?
      redirect_to new_appearance_path
    else
      flash[:errors] = @episode.errors.full_messages
      redirect_to new_episode_path
    end
  end

  def edit 
    find_episode
  end 

  def update 
    find_episode
    @episode.update(episode_params)
    if @episode.valid?
      redirect_to episode_path(@episode.id)
    else
      flash[:errors] = @episode.errors.full_messages
      redirect_to edit_episode_path(@episode.id)
    end
  end

  def destroy
    find_episode
    @episode.destroy
    redirect_to episodes_path
  end

  private

  def find_episode 
    @episode = Episode.find(params[:id])
  end

  def episode_params 
    params.require(:episode).permit(:date, :number)
  end
end
