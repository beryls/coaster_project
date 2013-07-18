class CoastersController < ApplicationController
  def index
    @coasters = Coaster.where(name: params[:query])
    @user = current_user
    if @user.nil?
      redirect_to root_url
    end
  end

  def show
    @user = current_user
    if @user.nil?
      redirect_to root_url
    end
    @coaster = Coaster.find(params[:id])
    @park = Park.find(@coaster.park_id)
    @json = @park.to_gmaps4rails
  end

  # def search
  #   @coasters = Coaster.where(name: params[:query])
  # end

  def new
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