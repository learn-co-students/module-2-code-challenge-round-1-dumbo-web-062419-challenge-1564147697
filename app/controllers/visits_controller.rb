class VisitsController < ApplicationController
def index
  @visits = Visit.all

end

def show
  @visit = Visit.find(params[:id])
end

  def new
    @visit = Visit.new
    @episodes = Episode.all
    @guests = Guest.all
  end

  def create
    @visit = Visit.create(visit_params)

    if @visit.valid?
    redirect_to episode_path(@visit.episode)

  else
    flash[:errors] = @visit.errors.full_messages
    redirect_to new_visit_path
  end

  def edit
    @visit = Visit.find(params[:id])
    @episodes = Episode.all
    @guests = Guest.all
  end

  end

  private

  def visit_params
    params.require(:visit).permit(:episode_id, :guest_id, :rating)
  end
end
