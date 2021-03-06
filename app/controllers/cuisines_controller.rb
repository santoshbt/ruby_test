class CuisinesController < ApplicationController
  before_action :set_cuisine, only: [:show, :edit, :update, :destroy]
  before_action :find_restaurant, only: [:new, :show, :create, :destroy]

  # GET /cuisines
  # GET /cuisines.json
  # def index
  #   @cuisines = Cuisine.from_active_restaurant
  # end

  # GET /cuisines/1
  # GET /cuisines/1.json
  def show
  end

  # GET /cuisines/new
  def new    
    @cuisine = @restaurant.cuisines.build
  end

  # GET /cuisines/1/edit
  def edit
  end

  # POST /cuisines
  # POST /cuisines.json
  def create
    @cuisine = @restaurant.cuisines.build(cuisine_params)    

    respond_to do |format|
      if @cuisine.save
        format.html { redirect_to restaurant_path(@restaurant.id), notice: 'Cuisine was successfully created.' }
        format.json { render :show, status: :created, location: @cuisine }
      else
        format.html { render :new }
        format.json { render json: @cuisine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuisines/1
  # PATCH/PUT /cuisines/1.json
  def update
    respond_to do |format|
      if @cuisine.update(cuisine_params)
        format.html { redirect_to @cuisine, notice: 'Cuisine was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuisine }
      else
        format.html { render :edit }
        format.json { render json: @cuisine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuisines/1
  # DELETE /cuisines/1.json
  def destroy
    if @cuisine.destroy
      redirect_to restaurant_path(@restaurant.id), notice: 'Cuisine has been hard deleted'
    else
      redirect_to restaurant_path(@restaurant.id), notice: 'Cuisine has not been destroyed.'
    end 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuisine
      @cuisine = Cuisine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuisine_params
      params.require(:cuisine).permit(:name, :rating, :references)
    end

    def find_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
end