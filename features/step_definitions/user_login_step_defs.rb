  Given(/^I access the BBC home page$/) do
    home_page.visit
  end

  And(/^I access the sign in page$/) do
    home_page.click_sign_in
  end

  When(/^I select register$/) do
    user_page.click_register
  end

  And(/^I input my date of birth$/) do
    register_page.enter_date_of_birth('15','08','1992')
    register_page.submit_button
  endf

  And(/^I input necessary register details with the password details (.+)$/) do |password|
    register_page.email_input
    register_page.password_input(password)
    register_page.postcode_input
  end

  Then(/^I receive the correct error (.+)$/) do |error_message| 
    register_page.error_message(error_message)
  end
