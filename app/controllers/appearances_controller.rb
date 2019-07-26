class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
      end
    
      def show
        find_appearance
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
    
      def edit 
        find_appearance
      end 
    
      def update 
        find_appearance
        @appearance.update(appearance_params)
        if @appearance.valid?
          redirect_to episode_path(episode_id)
        else
          flash[:errors] = @appearance.errors.full_messages
          redirect_to edit_appearance_path(@appearance.id)
        end
      end
    
      def destroy
        find_appearance
        @appearance.destroy
        redirect_to appearances_path
      end
      
      private
    
      def find_appearance 
        @appearance = Appearance.find(params[:id])
      end
    
      def appearance_params 
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
      end
end
