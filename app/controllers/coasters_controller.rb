class CoastersController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @coaster = Coaster.find(params[:id])
  end
end