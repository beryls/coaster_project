class ParksController < ApplicationController
  def index
    @parks = Park.where(name: params[:query])
  end

  def show
    @park = Park.find(params[:id])
    @coasters = Coaster.where(park_id: @park.id)
    @json = Park.all.to_gmaps4rails
  end
end