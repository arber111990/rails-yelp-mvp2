class RestaurantsController < ApplicationController
    def index
      @restaurant = Restaurant.all
    end

    def show
      @restaurant = Restaurant.find(params[:id])
    end

    def new
      @restaurant = Restaurant.new
    end

    def create
      @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

    def edit
    end

    def update
      @restaurant = Restaurant.find(params[:id])
      @restaurant.update(parmams[:restaurant])
    end

    def destroy
      @restauran = Restaurant.find(params[:id])
      @restaurant.destroy
    end

private
    def restaurant_params
        params.require(:restaurant).permit(:name, :addres, :phone_number, :category)
    end
end
