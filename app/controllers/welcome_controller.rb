class WelcomeController < ApplicationController
  def index
    user = current_user
    if user
      redirect_to "/users"
    end
  end
end