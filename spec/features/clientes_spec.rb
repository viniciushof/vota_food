require 'rails_helper'

RSpec.feature 'Cliente management', type: :feature do
	scenario 'adds a new cliente' do
		visit root_path
		expect{
			click_link 'Clientes'
			click_link 'Novo'
			fill_in 'Nome', with: 'Jurandir'
			fill_in 'Data Nascimento', with: '2000/01/01'
			click_button 'create cliente'
		}.to change(Cliente, :count).by(1)
		expect(page).to have_current_path(cliente_path(Cliente.last))
		expect(page).to have_content('Cliente criado com sucesso.')
		end
	end