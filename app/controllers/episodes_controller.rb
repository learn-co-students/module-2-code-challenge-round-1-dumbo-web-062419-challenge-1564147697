class EpisodesController < ApplicationController
  before_action :find_episode, only: [:show, :destroy]

    def index
      @episodes = Episode.all
    end

    def show
    end

    def destroy
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
