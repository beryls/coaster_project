class CoastersController < ApplicationController
  def index
    @coasters = Coaster.where(name: params[:query])
  end

  def show
    @coaster = Coaster.find(params[:id])
    @park = Park.find(@coaster.park_id)
    @json = @park.to_gmaps4rails
  end

  # def search
  #   @coasters = Coaster.where(name: params[:query])
  # end

  def new
    @coaster = Coaster.new
  end

  def create
    @coaster = Coaster.new(params[:coaster])
    if @coaster.save
      redirect_to root_url, notice: "Added coaster!"
    else
      render "new"
    end
  end
end