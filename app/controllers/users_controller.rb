class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    park_ids = @user.coasters.pluck(:park_id).uniq
    @user_parks = Park.find(park_ids)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.user_name = params[:user_name]
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      redirect_to '/users'
    else
      render action: "new"
    end
  end
end