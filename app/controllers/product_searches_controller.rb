class ProductSearchesController < ApplicationController
  # skip_before_filter :require_login
  before_action :set_product_search, only: %i[ show edit update destroy ]

  # GET /product_searches or /product_searches.json
  def index
    @product_searches = ProductSearch.all
  end

  # GET /product_searches/1 or /product_searches/1.json
  def show
  end

  # GET /product_searches/new
  def new
    @product_search = ProductSearch.new
  end

  # GET /product_searches/1/edit
  def edit
  end

  # POST /product_searches or /product_searches.json
  def create
    @product_search = ProductSearch.new(product_search_params)

    respond_to do |format|
      if @product_search.save
        format.html { redirect_to @product_search, notice: "Product search was successfully created." }
        format.json { render :show, status: :created, location: @product_search }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_searches/1 or /product_searches/1.json
  def update
    respond_to do |format|
      if @product_search.update(product_search_params)
        format.html { redirect_to @product_search, notice: "Product search was successfully updated." }
        format.json { render :show, status: :ok, location: @product_search }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_searches/1 or /product_searches/1.json
  def destroy
    @product_search.destroy
    respond_to do |format|
      format.html { redirect_to product_searches_url, notice: "Product search was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_search
      @product_search = ProductSearch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_search_params
      params.require(:product_search).permit(:search)
    end
end
