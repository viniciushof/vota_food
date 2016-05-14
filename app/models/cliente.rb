class Cliente < ActiveRecord::Base
	validates_presence_of :nome, message:"deve ser preenchido"
	validates_length_of :nome, maximum: 50, message:"Número máximo 50 caracteres."
	validates_presence_of :data_nascimento, message: "Preenchimento obrigatório."
	validate :valida_data_nascimento

	private 
	def valida_data_nascimento
		errors.add('data_nascimento', 'A data de nascimento deve ser posterior a 31/12/1999') unless data_nascimento > Date.new(1999,12,31)
	end
end
