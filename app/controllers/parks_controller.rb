class ParksController < ApplicationController
  def index
    @parks = Park.where(name: params[:query])
  end

  def show
    @park = Park.find(params[:id])
    @coasters = Coaster.where(park_id: @park.id)
    @json = @park.to_gmaps4rails
  end

  def new
    @park = Park.new
  end

  def create
    @park = Park.new(params[:park])
    if @park.save
      redirect_to root_url, notice: "Added park!"
    else
      render "new"
    end
  end
end