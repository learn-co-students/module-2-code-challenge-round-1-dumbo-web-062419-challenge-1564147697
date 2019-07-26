class GuestsController < ApplicationController
    before_action :find_guest, only: [:show, :edit, :update, :destroy]

    def index
      @guests = Guest.all
      @appearances = Appearance.all
    end

    def show
      find_guest
      @appearances = Appearance.all
    end

    def new
      @guest = Guest.new
    end

    def create
      @guest = Guest.create(guest_params)
      redirect_to guests_path
    end

    def edit
      find_guest
    end

    def update
      find_guest
      @guest.update(guest_params)
      redirect_to guest_path
    end

    def destroy
      find_guest
      @guest.destroy
      redirect_to guests_path
    end

    private

    def guest_params
      params.require(:guest).permit(:name, :occupation)
    end

    def find_guest
      @guest = Guest.find(params[:id])
    end
end
