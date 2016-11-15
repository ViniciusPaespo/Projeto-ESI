
require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    
    describe "GET #new" do
        it "returns http success" do
          get :new
          expect(response).to have_http_status(:success)
        end
    end
    
    context "with valid attributes" do
    
    describe "POST #create" do
      
      it "creates a new user" do
        params = ActionController::Parameters.new({:user=>{:name=>"Vinicius", :lastname=>"Paes", :email=>"vinicius.po@email.com", :phone=>"1139988933", :cellphone=>"11941137987", :cpf=>"66666666666", :cep=>"02927000", :number=>"52", :complement=>"123",:password=>"123456"}})
        post :create, params
        expect(response).to redirect_to(users_path)
      end
      
    end
      
  end
    

end
