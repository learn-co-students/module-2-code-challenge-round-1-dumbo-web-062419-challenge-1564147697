class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  # Since I included a range in my new appearance form for rating I do not need to include the flash[:errors] logic in my create method. Since the rating was given a range to select from it automatically pops up an error letting them know their rating is not in the range.

  def create
    @appearance = Appearance.create(appearance_params)
    if @appearance.valid?
      redirect_to episode_path(@appearance.episode)
    else
      flash[:errors] = @appearance.errors.full_messages
      redirect_to new_appearance_path
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end

end
