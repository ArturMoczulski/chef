When(/^I fill in the "Email" field with a unique email/) do
  user = build(:user)
  fill_in 'user_email', :with => user.email
end

When(/^I fill in the "Password" field with a random string/) do
  @password = (0...12).map { (65 + rand(25)).chr }.join
  fill_in 'user_password', :with => @password
end

When(/^I fill in the "Password Confirmation" field with the same string/) do
  fill_in 'user_password_confirmation', :with => @password
end
