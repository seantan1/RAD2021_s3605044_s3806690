class ProductsController < ApplicationController
  def index
    @all_products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def edit
    @product = Product.find(params[:id])
  end
  
  def create
    respond_to do |format|
      @product = Product.create(product_params)
      if @product.save 
       format.html{ redirect_to products_path, notice: "Product created!" }
       format.json { head :no_content }
      else 
        format.html{ redirect_to products_path, notice: "Product was not created!" }
        format.json { head :no_content }
      end
    end
  end
  
  def update
    respond_to do |format|
      @product = Product.find(params[:id])
      @product = @product.update(product_params)
      if @product
        format.html{ redirect_to products_path, notice: "Product was successfully updated!" }
        format.json { head :no_content }
      else
        format.html{ redirect_to products_path, notice: "Product was not updated!" }
        format.json { head :no_content }
      end
    end
  end
  
  def destroy
    Product.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to products_path, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  
 private
  #allowed list of params for user model 
  def product_params
    params.require(:product).permit(:name, :image, :price, :category, :popularity, :size, :color, :stockcount, :arrival)
  end
end
