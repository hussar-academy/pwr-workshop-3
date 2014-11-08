class Api::DigsController < ApplicationController
  def index
    render json: Dig.all
  end

  def create
    render json: Dig.create!(dig_params)
  end

  def update
    dig = Dig.find(params[:id])
    dig.update!(dig_params)

    render json: dig
  end

  def destroy
    dig = Dig.find(params[:id])
    dig.destroy!

    head 200
  end

  private
    def dig_params
      params.require(:dig).permit(:title, :body, :owner_id)
    end
end

