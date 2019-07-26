class AppearancesController < ApplicationController
  before_action :set_appearance, only: [:show, :edit, :update, :destroy]

  def index
    @appearances = Appearance.all
  end

  def show

  end

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
      @appearance.save
      redirect_to episode_path(@appearance.episode)
    else
      flash[:errors] = @appearance.errors.full_messages
      redirect_to new_appearance_path
    end
  end

  def edit

  end

  def update
    if @appearance.update(appearance_params)
      @appearance.save
      redirect_to appearance_path(@appearance)
    else
      flash[:errors] = @appearance.errors.full_messages
      redirect_to edit_appearance_path(@appearance)
    end
  end

  def destroy
    @appearance.destroy
    redirect_to appearances_path
  end



  private
    def set_appearance
      @appearance = Appearance.find(params[:id])
    end

    def appearance_params
      params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end
