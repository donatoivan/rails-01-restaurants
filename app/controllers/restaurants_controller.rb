class RestaurantsController < ApplicationController
  authorize_resource
  def index
  end

  def all
    # @restaurants = Restaurant.all.order('created_at DESC')
    @restaurants = Restaurant.paginate(page: params[:page], per_page: 6)
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      flash[:notice] = "Restaurant successfully listed"
      redirect_to restaurant_path(@restaurant)
      #same as redirect_to @restaurant
    else
      render 'new'
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant1 = Restaurant.find(params[:id])

    @restaurants = Restaurant.all.order('created_at DESC')

    @previous_restaurant = @restaurant1.next
    @next_restaurant = @restaurant1.previous
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(restaurant_params)
      flash[:notice] = "Restaurant successfully updated"
      redirect_to @restaurant
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    flash[:notice] = "Restaurant successfully deleted"
   
    redirect_to all_restaurants_path
  end

  private

  def restaurant_params
    params.permit(:title, :address, :description, :food_type)
  end
end
