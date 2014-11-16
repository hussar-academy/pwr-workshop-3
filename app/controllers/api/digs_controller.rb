class Api::DigsController < ApplicationController
  def index
    digs = Dig.all
    respond_to do |format|
      format.json { render json: digs }
    end
  end

  def update
    dig = Dig.find(params[:id])
    dig.update(dig_params)

    respond_to do |format|
      format.json { render json: dig }
    end
  end

  def create
    dig = current_user.digs.new(dig_params)
    dig.save!

    respond_to do |format|
      format.json { render json: dig }
    end
  end

  def destroy
    dig = Dig.find(params[:id])
    dig.destroy

    respond_to do |format|
      format.json { render json: { resp: 'success' } }
    end

  end

  private
    def dig_params
      params.require(:dig).permit(:title, :body, :owner_id)
    end
end
