module Demoauto
  class SelectFlightPage < SitePrism::Page
    set_url '/mercuryreservation2.php'

    def select_fight
      find(:xpath,'(.//input[@name="outFlight"])[2]').click
      find(:xpath,'(.//input[@name="outFlight"])[3]').click
      find(:xpath,'(.//input[@name="outFlight"])[4]').click

      find(:xpath,'(.//input[@name="inFlight"])[2]').click
      find(:xpath,'(.//input[@name="inFlight"])[3]').click
      find(:xpath,'(.//input[@name="inFlight"])[4]').click
      click_on('reserveFlights')
    end

  end
end