class GuestsController < ApplicationController

  def index
    
    if params[:name]
      @guests = Guest.where('name LIKE ?', "%#{params[:name]}%")
    else
      @guests = Guest.all
    end 

  end

  def show 
    @guest = Guest.find(params[:id])
  end

end
