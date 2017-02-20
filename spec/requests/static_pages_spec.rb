require 'rails_helper'

RSpec.feature 'Static Pages', :type => :feature do
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  context 'Home Page' do
    scenario 'should contain "Sample App"' do
      visit '/static_pages/home'
      expect(page).to have_text('Sample App')
    end

    scenario 'should have the title "Home"' do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  context 'Help Page' do
    scenario 'should contain "Help"' do
      visit '/static_pages/help'
      expect(page).to have_text('Help')
    end

    scenario 'should have the title "Help"' do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  context 'About Page' do
    scenario 'should contain "About Us"' do
      visit '/static_pages/about'
      expect(page).to have_text('About Us')
    end

    scenario 'should have the title "About Us"' do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  context 'Contacts Page' do
    scenario 'should contain "Our Contacts"' do
      visit '/static_pages/contacts'
      expect(page).to have_text('Our Contacts')
    end

    scenario 'should have the title "Contacts"' do
      visit '/static_pages/contacts'
      expect(page).to have_title("#{base_title} | Contacts")
    end
  end
end

