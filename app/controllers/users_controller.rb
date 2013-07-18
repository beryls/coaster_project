class UsersController < ApplicationController
  def index
    @user = current_user
    if @user
      redirect_to "/users/#{@user.id}"
    end
  end

  def show
    @user = current_user
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
    @user.user_name = params[:user_name]
    @user.email = params[:email]
    # need to require password confirmation to update
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
    session[:user_id] = nil
    redirect_to root_url, notice: "Profile deleted"
  end
end