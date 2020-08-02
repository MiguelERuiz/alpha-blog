class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user&.authenticate(params[:session][:password]) # user && user.authenticate(...)
      session[:user_id] = user.id
      flash[:notice] = 'Logged succesfully'
      redirect_to user
    else
      flash.now[:error] = 'Incorrect username or password'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Logged out. See you soon'
    redirect_to root_path
  end
end
