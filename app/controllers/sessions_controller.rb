class SessionsController < ApplicationController
  def new
    if session[:user_id]
      redirect_to '/admin'
    end
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/admin', notice: 'Logged in!'
    else
      flash.now[:alert] = 'Email or password is invalid'
      render :new
    end
  end
end
