require 'capybara/rspec'
require 'webdrivers'

feature 'Coupa test', type: :feature do

  Capybara.app_host = 'https://google.com'
  Capybara.run_server = false
  Capybara.default_driver = :selenium_chrome

  scenario 'Visit Google' do
    visit '/'
    expect(page.title).to have_content('Google')
    fill_in 'q', with: 'Showmax'
    find('body').send_keys :enter
    find(:xpath, ".//input[@name='btnK']").click
    expect(page).to have_content('Showmax')
  end
  scenario 'Visit Facebook' do
    visit 'https://facebook.com'
  end
end