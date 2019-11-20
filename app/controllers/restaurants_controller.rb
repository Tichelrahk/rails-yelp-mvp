class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(resto_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def resto_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
