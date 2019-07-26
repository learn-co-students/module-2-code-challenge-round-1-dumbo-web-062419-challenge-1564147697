class AppearancesController < ApplicationController

  before_action :find_appearance, only: [:show]


  def index
    @appearances = Appearance.all
  end

  def show
  end

  def new
    @appearance = Appearance.new
    @episodes = Episode.all
    @guests = Guest.all
  end

  def create
    @appearance = Appearance.create(appearance_params)
    redirect_to appearances_path
  end

  private

  def find_appearance
    @appearance = Appearance.find(params[:id])
  end

  def appearance_params
    params.require(:appearance).permit(:episode_id, :guest_id)
  end
end
