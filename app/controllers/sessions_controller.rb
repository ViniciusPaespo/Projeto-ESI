class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by email: params[:email]
    
    if @user && @user.password_digest == params[:password]
      session[:user_id] = @user.id
      redirect_to controller: 'users', action: 'home'
    else
       redirect_to root_url, notice: "Email ou senha incorreto!"
    end 
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end
end
