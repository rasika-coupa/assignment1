module Demoaut
	class Home < SitePrism::Page
		set_url "/"
		#set_url "/home"
		#set_url "/users{/username}"

		element :username,   'input[name="userName"]'
		element :password,   'input[name="password"]'
		element :login,	     'input[name="login"]'

		def login_to_application loginname, loginpassword
			username.set loginname
			password.set loginpassword
			login.click
			#expect()
		end
	end
end