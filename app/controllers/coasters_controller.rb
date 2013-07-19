class CoastersController < ApplicationController
  def index
    # all coasters matching search
    # may want to use wildcards and/or titleize to allow for inexact searches
    @coasters = Coaster.where(name: params[:query])
    # leave user here in case we allow coasters to be added to user list from search results
    @user = current_user
    # finds all parks of coasters returned by query
    park_ids = @coasters.pluck(:park_id).uniq
    @coasters_parks = Park.find(park_ids)
    # passes queried-for coasters' parks into API for Google Maps
    @json = @coasters_parks.to_gmaps4rails
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
    # will not allow person to add coasters unless logged in
    @user = current_user
    if @user.nil?
      redirect_to root_url
    end
    @coaster = Coaster.new
  end

  def create
    @coaster = Coaster.new(params[:coaster])
    # will only save and redirect if validation is met
    # otherwise, will remain in '/coasters/new'
    if @coaster.save
      redirect_to root_url, notice: "Added coaster to database!"
    else
      render "new"
    end
  end

  def edit
    # will not allow person to edit coasters unless logged in
    @user = current_user
    if @user.nil?
      redirect_to root_url
    end
    @coaster = Coaster.find(params[:id])
  end

  def update
    @coaster = Coaster.find(params[:id])
    @coaster.material = params[:coaster][:material]
    @coaster.height = params[:coaster][:height]
    @coaster.length = params[:coaster][:length]
    @coaster.speed = params[:coaster][:speed]
    @coaster.inversions = params[:coaster][:inversions]
    if @coaster.save
      redirect_to "/coasters/#{params[:id]}"
    else
      @id = params[:id]
      render action: "edit"
    end
  end

  def user_list
    user = current_user
    id = params[:id].to_i
    coaster_array = user.coasters.pluck(:id)
    if params[:ridden].nil? == false
      if coaster_array.include?(id) == false
        user.coasters << Coaster.find(id)
      end
    else
      id = params[:id].to_i
      if coaster_array.include?(id)
        user.coasters.delete(Coaster.find(id))
      end
    end
    redirect_to "/users/#{user.id}"
  end
end