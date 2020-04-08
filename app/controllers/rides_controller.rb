class RidesController < ApplicationController
    def new

    end
  
    def create
      @ride = Ride.create(attraction_id: params[:attraction][:attraction_id]) 
      @ride.user_id = current_user.id
      @ride.save
    
      @user = current_user
      @message =  @ride.take_ride
      redirect_to user_path(@user, message: @message) 
    end
end
