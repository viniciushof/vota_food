class Restaurante < ActiveRecord::Base
	has_many :qualificacoes
	has_and_belongs_to_many :pratos
	validates_uniqueness_of :nome
	validates_presence_of :nome, :especialidade
	validates_size_of :especialidade, maximum: 40
	validate :primeira_letra_deve_ser_maiuscula

	private
	def primeira_letra_deve_ser_maiuscula
		errors.add("nome", "primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
	end
end