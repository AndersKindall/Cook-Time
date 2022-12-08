class Api::RatingsController < ApplicationController
    
    def create 
        @rating = Rating.new(rating_params)
        @rating.user_id = current_user.id
        @rating.save
        render :show
    end

    def destroy
        @rating = Rating.find_by(id: params[:id])
        @rating.destroy
        render :show
    end

    def update 

        @rating = Rating.find_by(id: params[:id])
        if @rating.update(rating_params)
            render :show
        else
            render json: @rating.errors.full_messages, status: 401
        end
    end

    private

    def rating_params
        params.require(:rating).permit(:recipe_id, :rating_value, :user_id)
    end
end
