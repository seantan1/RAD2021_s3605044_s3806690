class SavedProductsController < ApplicationController
  before_action :set_saved_product, only: %i[ show edit update destroy ]

  # GET /saved_products or /saved_products.json
  def index
    @saved_products = SavedProduct.all
  end

  # GET /saved_products/1 or /saved_products/1.json
  def show
  end

  # GET /saved_products/new
  def new
    @saved_product = SavedProduct.new
  end

  # GET /saved_products/1/edit
  def edit
  end

  # POST /saved_products or /saved_products.json
  def create
    @saved_product = SavedProduct.new(saved_product_params)

    respond_to do |format|
      if @saved_product.save
        format.html { redirect_to request.referrer, notice: "Saved product was successfully created." }
        format.json { render :show, status: :created, location: @saved_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @saved_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_products/1 or /saved_products/1.json
  def update
    respond_to do |format|
      if @saved_product.update(saved_product_params)
        format.html { redirect_to request.referrer, notice: "Saved product was successfully updated." }
        format.json { render :show, status: :ok, location: @saved_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @saved_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_products/1 or /saved_products/1.json
  def destroy
    @saved_product.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "Saved product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_product
      @saved_product = SavedProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saved_product_params
      params.require(:saved_product).permit(:product_id, :count)
    end
end
