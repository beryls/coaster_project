class ParksController < ApplicationController
  def index
    @parks = Park.where(name: params[:query])
    @json = @parks.to_gmaps4rails
  end

  def show
    @park = Park.find(params[:id])
    @coasters = Coaster.where(park_id: @park.id)
    @json = @park.to_gmaps4rails
  end

  def new
    @user = current_user
    if @user.nil?
      redirect_to root_url
    end
    @park = Park.new
  end

  def create
    @park = Park.new(params[:park])
    # will only save and redirect if validation is met
    # otherwise, will remain in '/parks/new'
    if @park.save
      redirect_to root_url, notice: "Added park!"
    else
      render "new"
    end
  end
end