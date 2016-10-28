class UsersController < ApplicationController
  def index
		render "index"
	end

	def new
		@user = User.new
	end

	def user_params
		params.require(:user).permit(:name,:lastname, :email, :phone, :cellphone, :cpf, :cep, :number, :complement)
	end

	def create
		@user = User.new(user_params)
		@user.password = params[:user][:password]
		if @user.save
			redirect_to(action: "index") 
		else
			render action: "new"
		end
	end

end
