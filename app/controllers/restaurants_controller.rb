class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :soft_delete]

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.active
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    @cuisines = @restaurant.cuisines unless @restaurant.blank?
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    if @restaurant.destroy
      redirect_to restaurants_url, notice: 'Restaurant has been hard deleted.'
    else
      redirect_to restaurants_url, notice: 'Restaurant has not been hard deleted.'
    end     
  end

  def soft_delete
    if !@restaurant.blank? && @restaurant.update_attribute(:delete_flag, true) 
      redirect_to restaurants_url, notice: 'Restaurant has been soft deleted.' 
    else
      redirect_to restaurants_url, notice: 'Restaurant has not been soft deleted.' 
    end    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :description)
    end
end
