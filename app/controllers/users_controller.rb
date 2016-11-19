class UsersController < ApplicationController
	
	before_filter :authorize, only: [:index]
	
	def index
		render "index"
	end

	def home
		render "home"
	end

	def new
		@user = User.new
	end

	def user_params
		params.require(:user).permit(:name,:lastname, :email,:password_digest ,:phone, :cellphone, :cpf, :cep, :number, :complement)
	end

	def create
		@user = User.new(user_params)
		
		if @user.save
			session[:user_id] = @user.id
			redirect_to(action: "index") 
		else
			render action: "new"
		end
	end

end
