class PurchasedProductsController < ApplicationController
  before_action :set_purchased_product, only: %i[ show edit update destroy ]

  # GET /purchased_products or /purchased_products.json
  def index
    @purchased_products = PurchasedProduct.all
  end

  # GET /purchased_products/1 or /purchased_products/1.json
  def show
  end

  # GET /purchased_products/new
  def new
    @purchased_product = PurchasedProduct.new
  end

  # GET /purchased_products/1/edit
  def edit
  end

  # POST /purchased_products or /purchased_products.json
  def create
    @purchased_product = PurchasedProduct.new(purchased_product_params)

    respond_to do |format|
      if @purchased_product.save
        format.html { redirect_to request.referrer, notice: "Purchased product was successfully created." }
        format.json { render :show, status: :created, location: @purchased_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @purchased_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchased_products/1 or /purchased_products/1.json
  def update
    respond_to do |format|
      if @purchased_product.update(purchased_product_params)
        format.html { redirect_to request.referrer, notice: "Purchased product was successfully updated." }
        format.json { render :show, status: :ok, location: @purchased_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @purchased_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchased_products/1 or /purchased_products/1.json
  def destroy
    @purchased_product.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "Purchased product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchased_product
      @purchased_product = PurchasedProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchased_product_params
      params.require(:purchased_product).permit(:product_id, :count)
    end
end
