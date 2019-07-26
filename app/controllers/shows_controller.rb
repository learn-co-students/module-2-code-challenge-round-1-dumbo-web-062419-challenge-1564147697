class ShowsController < ApplicationController

  before_action :find_show, only: [:show]

    def index
      @shows = Show.all
    end

    def show
      @guests = Guest.all
    end

    def new
      @guests = Guest.all
      @episodes = Episode.all
      @show = Show.new
    end

    def create
      @show = Show.create(show_params)
      if @show.valid?
      redirect_to episode_path(@show.episode_id)
    else
      flash[:errors] = @show.errors.full_messages
      redirect_to new_show_path
    end
    end


    private

    def find_show
     @show = Show.find(params[:id])
    end

    def show_params
      params.require(:show).permit(:guest_id, :episode_id, :rating)
    end

end
