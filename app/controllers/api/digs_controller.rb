class Api::DigsController < ApplicationController
  def index
    digs = Dig.all
    respond_to do |format|
      format.json { render json: digs }
    end
  end
end
