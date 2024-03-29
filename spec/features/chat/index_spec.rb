require 'rails_helper'

RSpec.describe 'Chat Index' do
	it 'has a chats and a friends button' do
		visit "/chat"
		save_and_open_page

		expect(page).to have_content("Welcome")
		expect(page).to have_selector(:link_or_button, 'Chats')
		expect(page).to have_selector(:link_or_button, 'Friends')
		
	end
end