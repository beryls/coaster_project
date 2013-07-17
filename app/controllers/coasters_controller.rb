class CoastersController < ApplicationController
  def index
    @coasters = Coaster.where(name: params[:query])
  end

  def show
    @coaster = Coaster.find(params[:id])
  end

  def search
    @coasters = Coaster.where(name: params[:query])
  end
end