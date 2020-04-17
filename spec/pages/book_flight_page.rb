module Demoauto
  class BookFlightPage < SitePrism::Page
    set_url '/mercurypurchase.php'
    def book_flight
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
    end
  end
end