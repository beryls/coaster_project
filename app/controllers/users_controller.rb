class UsersController < ApplicationController
  def index
    # if a session is in progress, redirects to the user show page
    # otherwise, displays index page (almost blank at present)
    @user = current_user
    if @user
      redirect_to "/users/#{@user.id}"
    else
      redirect_to root_url
    end
  end

  def show
    # takes logged in user
    @user = current_user
    # finds all parks at which that user has ridden a coaster
    park_ids = @user.coasters.pluck(:park_id).uniq
    @user_parks = Park.find(park_ids)
    # passes user's parks into API for Google Maps
    @json = @user_parks.to_gmaps4rails
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    # is there any way to log in a newly signed up user automatically?
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
    # removes user from database
    User.find(params[:id]).destroy
    # effectively logs out, so session is not calling a non-existent user id
    session[:user_id] = nil
    redirect_to root_url, notice: "Profile deleted"
  end
end