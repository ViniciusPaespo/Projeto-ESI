class UsersController < ApplicationController
	
	before_filter :authorize, only: [:index]
	
	def index
		render "index"
	end

	def home
		if params[:search]
			@sql = "SELECT c.* FROM users_cards uc INNER JOIN cards c ON c.id = uc.card_id WHERE uc.user_id = #{session[:user_id]} AND 
					(c.title like '%#{params[:search]}%' OR c.description like '%#{params[:search]}%' ) ;" 
    		@cards = ActiveRecord::Base.connection.exec_query(@sql)
    		@cards.to_hash
    	else
    		@sql = "SELECT c.* FROM users_cards uc INNER JOIN cards c ON c.id = uc.card_id WHERE uc.user_id = #{session[:user_id]} ;" 
    		@cards = ActiveRecord::Base.connection.exec_query(@sql)
    		@cards.to_hash
    	end
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
