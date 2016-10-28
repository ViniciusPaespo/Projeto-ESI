class User < ActiveRecord::Base
  validates_presence_of :name, message: "deve ser preenchido"

	validates_presence_of :email, message: "deve ser preenchido"
	validates_uniqueness_of :email, message: "já cadastrado"

	validates_presence_of :password, message: "deve ser preenchido"
	validates_length_of :password, maximum: 10, message: "Sua senha deve ser menor de 10 digítos"
	validates_length_of :password, minimum: 6 , message: "Sua senha deve conter pelo menos 6 digítos"


	validates_uniqueness_of :phone, message: "Número de telefone já cadastrado"
	validates_numericality_of :phone, message: "Número inválido de telefone"
	validates_length_of :phone, maximum: 10, message: "Número de telefone deve conter no máximo 10 números"
	validates_length_of :phone, minimum: 8 , message: "Número de telefone deve conter no minimo 8 números"

	validates_uniqueness_of :cellphone, message: "Número de celular já cadastrado"
	validates_numericality_of :cellphone, message: "Número inválido de celular"
	validates_length_of :cellphone, maximum: 11, message: "Número de celular deve conter no máximo 11 números"
	validates_length_of :cellphone, minimum: 9 , message: "Número de celular deve conter no minimo 9 números"

	validates_presence_of :cpf, message: "deve ser preenchido"
	validates_uniqueness_of :cpf, message: "já está cadastrado"

	validates_numericality_of :cep, message: "CEP inválido"
end
