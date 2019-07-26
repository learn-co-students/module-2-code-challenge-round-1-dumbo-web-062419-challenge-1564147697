class AppearancesController < ApplicationController
    before_action :find_appearance, only: [:show, :edit, :update, :destroy]

    def index
        @appearances = Appearance.all
    end

    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode_id)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    def show

    end

    def edit

    end

    def update

    end

    def destroy

    end

private
    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end

    def find_appearance
        @appearance = Appearance.find(params[:id])
    end
end
