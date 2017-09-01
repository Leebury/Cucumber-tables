class UserPage

	def initialize(browser)
		@driver = browser
	end

	def click_register
		@driver.link(text: 'Register now').click
	end



end 