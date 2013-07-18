class ParksController < ApplicationController
  def index
    # finds all parks returned by query
    # may want to use wildcards and/or titleize to allow for inexact searches
    @parks = Park.where(name: params[:query])
    # passes queried-for parks into API for Google Maps
    @json = @parks.to_gmaps4rails
  end

  def show
    # calls park with id and that park's coasters
    @park = Park.find(params[:id])
    @coasters = Coaster.where(park_id: @park.id)
    # passes park into API for Google Maps
    @json = @park.to_gmaps4rails
  end

  def new
    # will not allow person to add parks unless logged in
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