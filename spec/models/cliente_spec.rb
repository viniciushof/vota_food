require 'rails_helper'

RSpec.describe Cliente, type: :model do
  	it "is valid with a nome and data_nascimento" do
		cliente = Cliente.new(nome: "Felipe", data_nascimento: Date.new(2000, 12, 1))
		expect(cliente).to be_valid
		end
	it "is invalid without a nome" do
		cliente = Cliente.new(nome: nil,data_nascimento: Date.new(2000, 12, 1))
		expect(cliente).not_to be_valid
		expect(cliente.errors[:nome]).to include("deve ser preenchido")
	end
	it "is invalid without a data_nascimento"
	it "is invalid when data_nascimento is before 31/12/1999"
	it "is valid when data_nascimento is after 31/12/1999"
	describe "it can filter nome by letter" do
		before :each do
			@felipe = Cliente.create(nome: "Felipe", data_nascimento: Date.new(2000, 12, 31))
			@joao = Cliente.create(	nome: "João", data_nascimento: Date.new(2005, 12, 10))
			@fernando = Cliente.create(nome: "Fernando", data_nascimento: Date.new(2013, 2, 1))
		end
		context "matching letter" do
			# Testa se incluiu corretamente
			it "returns array of results that match" do 
				expect(Cliente.filtra_por_letra("F")).to eq [@felipe, @fernando]
			end
		end
		context "non matching letter" do
			# Testa se excluiu corretamente
			it "omit results that don’t match" do 
				expect(Cliente.filtra_por_letra("F")).not_to include @joao
			end
		end
	end
end
