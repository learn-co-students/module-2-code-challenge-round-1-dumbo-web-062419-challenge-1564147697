class ShowsController < ApplicationController

def new
@show = Show.new
@guests = Guest.all
@episodes = Episode.all
end

def create
@show = Show.new(show_params)
if @show.valid?
   @show.save
   redirect_to
else
flash[:errors] = @show.errors.full_messages
    redirect_to new_show_path
end
end


  #Private Employee
  def show_params
    params.require(:show).permit(:guest_id, :episode_id, :rating )
  end

end
