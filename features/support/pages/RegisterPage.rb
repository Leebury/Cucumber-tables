class RegisterPage
 
	def initialize(browser)
		@driver = browser
	end

	def enter_date_of_birth(day,month,year)
		@driver.text_field(id: 'day-input').set(day) 
    	@driver.text_field(id: 'month-input').set(month) 
    	@driver.text_field(id: 'year-input').set(year) 
    end

    def submit_button
		@driver.button(id: 'submit-button').click
    end

    def email_input
    	@driver.text_field(id: 'email-input').set('text@gmail.com')
    end 
	
    def password_input(password)
    	@driver.text_field(id: 'password-input').set(password)
    end

    def postcode_input
    	@driver.text_field(id: 'postcode-input').set 'Lu20tp'
    end

    def error_message(error_message)
    	@driver.element(id: 'form-error-password').text == error_message
    end


end