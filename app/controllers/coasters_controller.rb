class CoastersController < ApplicationController
  def index
  end

  def show
    @coaster = Coaster.find(params[:id])
  end
end