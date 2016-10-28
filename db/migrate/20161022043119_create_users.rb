class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, limit: 50
		  t.string :lastname, limit: 50
		  t.string :email, limit: 50
		  t.string :password, limit: 10
		  t.string :cellphone, limit: 11
		  t.string :phone, limit: 10
		  t.string :cpf, limit: 11
		  t.string :cep, limit: 8
		  t.string :number, limit: 10
		  t.string :complement, limit: 50
      t.timestamps null: false
    end
  end
end
