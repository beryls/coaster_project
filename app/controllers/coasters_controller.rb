class CoastersController < ApplicationController
  def index
    # all coasters matching search - may want to use wildcards and/or titleize to allow for inexact searches
    @coasters = Coaster.where(name: params[:query])
    # leave user here in case we allow coasters to be added to user list from search results
    @user = current_user
    # add map to coaster search? probably
  end

  def show
    # calls user to allow for adding coasters to user list
    @user = current_user
    # calls coaster with id and that coaster's park
    @coaster = Coaster.find(params[:id])
    @park = Park.find(@coaster.park_id)
    # passes coaster's parks into API for Google Maps
    @json = @park.to_gmaps4rails
  end

  def new
    # will not allow person to add coasters unless logged in - probably smart
    @user = current_user
    if @user.nil?
      redirect_to root_url
    end
    @coaster = Coaster.new
  end

  def create
    @coaster = Coaster.new(params[:coaster])
    if @coaster.save
      redirect_to root_url, notice: "Added coaster to database!"
    else
      render "new"
    end
  end
end