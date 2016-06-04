class Prato < ActiveRecord::Base
	has_and_belongs_to_many :restaurantes
	has_one :receita
	validates_presence_of :nome, message:"Preenchimento do campo é obrigatório."
	validates_uniqueness_of :nome, message:"Nome já cadastrado."
	has_many :comentarios, as: :comentavel
end
