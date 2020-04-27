require 'capybara/rspec'
require 'webdrivers'

feature 'Coupa test', type: :feature do

  Capybara.app_host = 'http://www.newtours.demoaut.com/'
  Capybara.run_server = false
  Capybara.default_driver = :selenium_chrome

  scenario 'Login into Mercury Website' do
    visit '/'
    expect(page.title).to have_content('Mercury')
    fill_in 'userName', with: 'mercury'
    fill_in 'password', with: 'mercury'
    click_on('login')

    select '2', from: 'passCount'
    select 'London', from: 'fromPort'
    select 'May', from: 'fromMonth'
    select '8', from: 'fromDay'
    select 'Paris', from: 'toPort'
    select 'May', from: 'toMonth'
    select '12', from: 'toDay'
    click_on('findFlights')


    find(:xpath,'(.//input[@name="outFlight"])[2]').click
    find(:xpath,'(.//input[@name="outFlight"])[3]').click
    find(:xpath,'(.//input[@name="outFlight"])[4]').click

    find(:xpath,'(.//input[@name="inFlight"])[2]').click
    find(:xpath,'(.//input[@name="inFlight"])[3]').click
    find(:xpath,'(.//input[@name="inFlight"])[4]').click
    click_on('reserveFlights')


    fill_in 'passFirst0', with: 'abc'
    fill_in 'passLast0', with: 'xyz'
    select 'Hindu', from: 'pass.0.meal'
    fill_in 'creditnumber', with: '1234567'
    select '07', from: 'cc_exp_dt_mn'
    select '2005', from: 'cc_exp_dt_yr'
    fill_in 'cc_frst_name', with: 'abc'
    fill_in 'cc_mid_name', with: 'jkl'
    fill_in 'cc_last_name', with: 'xyz'
    find(:xpath,'(.//input[@name="ticketLess"])[1]').check
    fill_in 'billAddress2', with:'goa'
    select 'UNITED STATES', from: 'billCountry'
    find(:xpath,'(.//input[@name="ticketLess"])[2]').check
    fill_in 'delAddress2', with:'mumbai'
    select 'UNITED STATES', from: 'delCountry'
    click_on('buyFlights')

    find(:xpath, ".//img[@src='/images/forms/Logout.gif']").click
  end
end