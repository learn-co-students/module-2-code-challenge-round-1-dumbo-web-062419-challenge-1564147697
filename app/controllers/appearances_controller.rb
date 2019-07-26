class AppearancesController < ApplicationController

    def index
        @appearance = Appearance.all
    end

    def show
        @appearance = Appearance.find(params[:id])
    end

    def create
        @guests = Guest.all
        @episodes = Episode.all
        # @episode = Episode.find(params[:id])

        @appearance = Appearance.create(appearance_params)
        redirect_to episode_path(appearance_params[:episode_id])

        # @appearance = Appearance.new  334
        # if @appearance.valid?
        #     @appearance.save
        #     redirect_to episode_path(appearance_params[:episode_id])
        # else
        #     flash[:errors] = @appearance.errors.full_messages
        #     redirect_to appearance_path(@appearance)
        # end

    end

    def new
        @guests = Guest.all
        @episodes = Episode.all
        @appearance = Appearance.new
    end

    def update
        if @appearance.update(appearance_params)
            redirect_to appearance_path(@appearance)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to appearance_path(@appearance)
        end
    end

    private

   def appearance_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
   end

end
