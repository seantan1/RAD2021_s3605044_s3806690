class RatingShownsController < ApplicationController
  before_action :set_rating_shown, only: %i[ show edit update destroy ]

  # GET /rating_showns or /rating_showns.json
  def index
    @rating_showns = RatingShown.all
  end

  # GET /rating_showns/1 or /rating_showns/1.json
  def show
  end

  # GET /rating_showns/new
  def new
    @rating_shown = RatingShown.new
  end

  # GET /rating_showns/1/edit
  def edit
  end

  # POST /rating_showns or /rating_showns.json
  def create
    @rating_shown = RatingShown.new(rating_shown_params)

    respond_to do |format|
      if @rating_shown.save
        format.html { redirect_to @rating_shown, notice: "Rating shown was successfully created." }
        format.json { render :show, status: :created, location: @rating_shown }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rating_shown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rating_showns/1 or /rating_showns/1.json
  def update
    respond_to do |format|
      if @rating_shown.update(rating_shown_params)
        format.html { redirect_to @rating_shown, notice: "Rating shown was successfully updated." }
        format.json { render :show, status: :ok, location: @rating_shown }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rating_shown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rating_showns/1 or /rating_showns/1.json
  def destroy
    @rating_shown.destroy
    respond_to do |format|
      format.html { redirect_to rating_showns_url, notice: "Rating shown was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating_shown
      @rating_shown = RatingShown.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rating_shown_params
      params.require(:rating_shown).permit(:user_id)
    end
end
