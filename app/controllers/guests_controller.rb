class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    find_guest
  end

  def new 
    @guest = Guest.new 
  end

  def create
    @guest = Guest.create(guest_params)
    if @guest.valid?
      redirect_to guest_path(@guest.id)
    else
      flash[:errors] = @guest.errors.full_messages
      redirect_to new_guest_path
    end
  end

  def edit 
    find_guest
  end 

  def update 
    find_guest
    @guest.update(guest_params)
    if @guest.valid?
      redirect_to guest_path(@guest.id)
    else
      flash[:errors] = @guest.errors.full_messages
      redirect_to edit_guest_path(@guest.id)
    end
  end

  def destroy
    find_guest
    @guest.destroy
    redirect_to guest_path
  end
  
  private

  def find_guest 
    @guest = Guest.find(params[:id])
  end

  def guest_params 
    params.require(:guest).permit(:name, :occupation)
  end
end
