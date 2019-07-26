class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  def index
    @guests = Guest.all
  end

  def show

  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.valid?
      @guest.save
      redirect_to guest_path(@guest)
    else
      flash[:errors] = @guest.errors.full_messages
      redirect_to new_guest_path
    end
  end

  def edit

  end

  def update
    if @guest.update(guest_params)
      @guest.save
      redirect_to guest_path(@guest)
    else
      flash[:errors] = @guest.errors.full_messages
      redirect_to edit_guest_path(@guest)
    end
  end

  def destroy
    @guest.destroy
    redirect_to guests_path
  end



  private
    def set_guest
      @guest = Guest.find(params[:id])
    end

    def guest_params
      params.require(:guest).permit(:name, :occupation)
    end
end
