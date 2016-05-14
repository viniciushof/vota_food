class Qualificacao < ActiveRecord::Base
	belongs_to :restaurante
	belongs_to :cliente
	validates_presence_of :nota, message: "Campo obrigatório."
	validates_presence_of :valor_gasto, message: "Campo obrigatório"
	validates_numericality_of :nota, greather_than_or_equals_to: 0, less_than_or_equals_to: 10, message:"Deve ser um valor entre 0 e 10"
	validates_numericality_of :valor_gasto, greather_than: 0, message:"Deve ser maior que zero"
	validates_presence_of :cliente, :restaurante
	validates_associated :cliente, :restaurante
end
