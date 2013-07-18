class UsersController < ApplicationController
  def index
    @user = @current_user
  end

  def show
    @user = @current_user
    park_ids = @user.coasters.pluck(:park_id).uniq
    @user_parks = Park.find(park_ids)
    @json = @user_parks.to_gmaps4rails
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, notice: "Signed up!"
    else
      render "new"
    end
    # @user = User.new
    # @user.name = params[:name]
    # @user.user_name = params[:user_name]
    # @user.email = params[:email]
    # @user.password = params[:password]
    # if @user.save
    #   redirect_to "/users/#{params[:id]}"
    # else
    #   render action: "new"
    # end
  end

  def edit
    @user = User.find(params[:id])
    @id = params[:id]
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.user_name = params[:user_name]
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      redirect_to "/users/#{params[:id]}"
    else
      @id = params[:id]
      render action: "edit"
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to "/users"
  end
end