When(/^I fill in the "Email" field with unique email/) do
  user = build(:user)
  fill_in 'Email', :with => user.email
end

