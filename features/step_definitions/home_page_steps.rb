When(/^I am on the homepage$/) do
  visit root_path
end

When(/^I fill in the login form with email "(.*)" and password "(.*)"$/) do |email, password|
  fill_in 'email', :with => email
  fill_in 'password', :with => password
  click_button "Sign in"
end

Then(/^I see the welcome message$/) do
  page.should have_content 'Welcome in Chef! Thank you for signing in!'
end
