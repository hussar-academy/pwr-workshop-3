class DigsController < ApplicationController
  before_action :set_dig, only: [:show, :edit, :update, :destroy]

  # GET /digs
  def index
    @digs = Dig.all
  end

  # GET /digs/1
  def show
  end

  # GET /digs/new
  def new
    @dig = Dig.new
  end

  # GET /digs/1/edit
  def edit
  end

  # POST /digs
  def create
    @dig = current_user.digs.new(dig_params)

    if @dig.save
      redirect_to @dig, notice: 'Dig was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /digs/1
  def update
    if @dig.update(dig_params)
      redirect_to @dig, notice: 'Dig was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /digs/1
  def destroy
    @dig.destroy
    redirect_to digs_url, notice: 'Dig was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dig
      @dig = current_user.digs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dig_params
      params.require(:dig).permit(:title, :body, :owner_id)
    end
end
