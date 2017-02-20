require 'rails_helper'

RSpec.feature 'Home Page', :type => :feature do
  scenario 'should contain "Sample App"' do
    visit '/static_pages/home'
    expect(page).to have_text('Sample App')
  end

  scenario 'should have the title "Home"' do
    visit '/static_pages/home'
    expect(page).to have_title('Home')
  end
end

RSpec.feature 'Help Page', :type => :feature do
  scenario 'should contain "Help"' do
    visit '/static_pages/help'
    expect(page).to have_text('Help')
  end

  scenario 'should have the title "Help"' do
    visit '/static_pages/help'
    expect(page).to have_title('Help')
  end
end

RSpec.feature 'About Page', :type => :feature do
  scenario 'should contain "About"' do
    visit '/static_pages/about'
    expect(page).to have_text('About Us')
  end

  scenario '/static_pages/about' do
    visit '/static_pages/about'
    expect(page).to have_title('About Us')
  end
end