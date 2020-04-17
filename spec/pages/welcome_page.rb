module Demoaut
	class WelcomePage < SitePrism::Page
		set_url '/mercuryreservation.php'

		element :passengerCount, 'select[name="passCount"]'
		element :fromPort, 'select[name="fromPort"]'
		element :fromMonth, 'select[name="fromMonth"]'
		element :fromDay, 'select[name="fromDay"]'

		element :toPort, 'select[name="toPort"]'
		element :toMonth, 'select[name="toMonth"]'
		element :toDay, 'select[name="toDay"]'

		element :coach, 'input[value="Coach"]'
		element :business, 'input[value="Business"]'
		element :first, 'input[value="First"]'

		element :airline, 'select[name="airline"]'

		element :continue, 'input[name="findFlights"]'

		def flight_details pCount,fPort,fMonth,fDay,tPort,tMonth,tDay,sClass,aline
			passengerCount.set pCount
			fromPort.set fPort
			fromMonth.set fMonth
			fromDay.set fDay
			toPort.set tPort
			toMonth.set tMonth
			toDay.set tDay
			first.set 'First'
			airline.set aline
			continue.click
		end
	end
end