class GuestsController < ApplicationController
before_action :find_guest, only: [:show, :destroy]

  def index
    @guests = Guest.all
  end

  def show
  end

  def destroy
    @guest.destroy
    redirect_to guests_path
  end


  private

  def find_guest
   @guest = Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end

end
