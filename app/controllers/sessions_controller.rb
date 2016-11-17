class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    
    if user && user.password_digest == params[:password]
      session[:user_id] = user.id
      redirect_to controller: 'users', action: 'index', notice: "Logged in"
    else
      flash.now.alert = "Email ou senha incorreto!"
      render "new"
    end 
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end
end
