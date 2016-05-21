require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
	fixtures :restaurantes
	def test_restaurante_nome_deve_ser_unico
		restaurante = Restaurante.new(:nome => restaurantes(:kbab).nome,:endereco => restaurantes(:kbab).endereco,:especialidade => restaurantes(:kbab).especialidade)
		assert restaurante.invalid?
		assert_equal restaurante.errors[:nome].count, 1
	end
end