class Api::DigsController < ApplicationController
  def index
    render json: Dig.all
  end
end

