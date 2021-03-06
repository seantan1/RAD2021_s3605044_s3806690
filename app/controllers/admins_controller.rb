class AdminsController < ApplicationController
  before_action :set_admin, only: %i[ show edit update destroy ]
  
  helper_method :get_username

  # GET /admins or /admins.json
  def index
    @admins = Admin.all
    @saved_products = SavedProduct.all
    @purchased_products = PurchasedProduct.all
    @customer_ratings = CustomerRating.all
    @newsletter_emails = NewsletterEmail.all
    # @products_controller = ProductsController.all
  end

  # GET /admins/1 or /admins/1.json
  def show
  end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins or /admins.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      # Create new admin
      if @admin.save
        format.html { redirect_to @admin, notice: "Admin was successfully created." }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/1 or /admins/1.json
  def update
    # Update current admin
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: "Admin was successfully updated." }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1 or /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: "Admin was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  # helper funciton to get user name
  def get_username(user_id)
    if User.find_by_id(user_id)
      return User.find(user_id).name 
    end
    return nil
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_params
      params.require(:admin).permit(:user_id, :user_name)
    end
end
