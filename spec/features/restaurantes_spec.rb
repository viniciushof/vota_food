require 'rails_helper'

RSpec.feature "Restaurante management", type: :feature do
#RSpec.feature "Restaurante management", js: true do
	scenario "adds a new restaurante" do
		visit root_path
		expect{
			click_link 'Restaurantes'
			click_link 'Novo'
			fill_in 'Nome', with: 'Ponto da Picanha'
			fill_in 'Especialidade', with: 'Churrasco'
			click_button 'Criar Restaurante'
		}.to change(Restaurante, :count).by(1)
		expect(page).to have_current_path(restaurante_path(Restaurante.last))
		expect(page).to have_content("Restaurante criado com sucesso.")
		save_and_open_page
		end
	end