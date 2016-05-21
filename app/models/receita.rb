class Receita < ActiveRecord::Base
	belongs_to :prato
	validates_presence_of :conteudo, message:"Campo de preenchimento obrigatório"
	validates_presence_of :prato_id
	validates_associated :prato
end