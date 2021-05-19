class CustomerRatingsController < ApplicationController
  before_action :set_customer_rating, only: %i[ show edit update destroy ]

  # GET /customer_ratings or /customer_ratings.json
  def index
    @customer_ratings = CustomerRating.all
  end

  # GET /customer_ratings/1 or /customer_ratings/1.json
  def show
  end

  # GET /customer_ratings/new
  def new
    @customer_rating = CustomerRating.new
  end

  # GET /customer_ratings/1/edit
  def edit
  end

  # POST /customer_ratings or /customer_ratings.json
  def create
    @customer_rating = CustomerRating.new(customer_rating_params)

    respond_to do |format|
      if @customer_rating.save
        format.html { redirect_to @customer_rating, notice: "Customer rating was successfully created." }
        format.json { render :show, status: :created, location: @customer_rating }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_ratings/1 or /customer_ratings/1.json
  def update
    respond_to do |format|
      if @customer_rating.update(customer_rating_params)
        format.html { redirect_to @customer_rating, notice: "Customer rating was successfully updated." }
        format.json { render :show, status: :ok, location: @customer_rating }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_ratings/1 or /customer_ratings/1.json
  def destroy
    @customer_rating.destroy
    respond_to do |format|
      format.html { redirect_to customer_ratings_url, notice: "Customer rating was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_rating
      @customer_rating = CustomerRating.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_rating_params
      params.require(:customer_rating).permit(:user_id, :rating)
    end
end
