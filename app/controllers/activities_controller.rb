class ActivitiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
       render json: Activity.all, status: :ok
    end
    
    def destroy
        a = Activity.find(params[:id])
        a.destroy
    end

    private
    def render_not_found_response
        render json: {error: "Activity not found"}, status: :not_found
    end
end
