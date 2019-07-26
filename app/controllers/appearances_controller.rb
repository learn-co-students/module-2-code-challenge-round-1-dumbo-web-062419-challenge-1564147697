class AppearancesController < ApplicationController
  before_action :find_appearance, only: [:show, :edit, :update, :destroy]

  def index
    @appearances = Appearance.all
    @guests = Guest.all
    @episodes = Episode.all
  end

  def show
    find_appearance
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(appearance_params)
    redirect_to @appearance.guest
  end

  def edit
    find_appearance
  end

  def update
    @appearance.update(appearance_params)
    redirect_to appearances_path
  end

  def destroy
    find_appearance
    @appearance.destroy
    redirect_to appearances_path
  end

  private

  def find_appearance
    @appearance = Appearance.find(params[:id])
  end

  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end
end
