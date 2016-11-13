
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
        post :create, params: {:user => {:name => "Vinicius",:lastname =>"Paes", :email => "vinicius@email.com",:phone => "11944441111", :cellphone => "11911112222",:cpf => "44444444444",:cep => "02222222",:number => "52", :complement => "apto 123"}}
        expect(response).to render_template("welcome/index")
      end
      
    end
      
  end
    
    

end
