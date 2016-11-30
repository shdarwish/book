class PrefersController < ApplicationController
  before_action :set_prefer, only: [:show, :edit, :update, :destroy]
  before_action :admin_only, only: [:index]

  # GET /prefers
  def index
    @prefers = Prefer.all
  end

  # GET /prefers/1
  def show
  end

  # GET /prefers/new
  def new
    @prefer = Prefer.new
  end

  # GET /prefers/1/edit
  def edit
  end

  # POST /prefers
  def create
    @prefer = Prefer.new(prefer_params)

    if @prefer.save
      redirect_to @prefer, notice: 'Prefer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /prefers/1
  def update
    if @prefer.update(prefer_params)
      redirect_to @prefer, notice: 'Prefer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /prefers/1
  def destroy
    @prefer.destroy
    redirect_to prefers_url, notice: 'Prefer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prefer
      @prefer = Prefer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prefer_params
      params.require(:prefer).permit(:user_id, :comment, :like, :follow)
    end
end
