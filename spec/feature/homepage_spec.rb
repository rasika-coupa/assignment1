
require 'site_prism'
require 'pages/home.rb'
require 'pages/welcome_page.rb'
require 'pages/select_flight_page'
require 'pages/book_flight_page.rb'

feature 'Coupa test', type: :feature do
	include Demoaut
	scenario 'Visit Demoaut' do
		@homepage = Demoaut::Home.new
		@homepage.load
		@homepage.login_to_application "mercury", "mercury"
		 @welcomepage = Demoaut::WelcomePage.new
		 @welcomepage.load
    @welcomepage.flight_details "2","London","May","4","Paris","May","12","First","Blue Skies Airlines"
    @selectflightpage = Demoauto::SelectFlightPage.new
    @selectflightpage.load
    @selectflightpage.select_fight
    @bookflightpage=Demoauto::BookFlightPage.new
    @bookflightpage.load
    @bookflightpage.book_flight

		find(:xpath, ".//img[@src='/images/forms/Logout.gif']").click
  end
end