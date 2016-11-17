class WelcomeController < ApplicationController
  def index
  end
  
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    
    if user && user.password_digest == params[:password]
      session[:user_id] = user.id
      redirect_to users_path, notice: "Logged in"
    else
      flash.now.alert = "Email ou senha incorreto!"
      render "new"
    end 
  end
end
