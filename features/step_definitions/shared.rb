Given(/^a "(.*)" user exists with password "(.*)"$/) do |email, password|
  user = create(:user, email: email, password: password)
end

When(/^I click the "(.*)" button$/) do |button|
  click_button button
end

When(/^I am on the (.*) page/) do |url|
  visit url
end

When(/^I follow the "(.*)" link$/) do |text|
  click_link text
end

Then(/^I( do not)? see the (.*) form$/) do |negate, c|
  selector = 'form.'+c
  negate ? page.should_not(have_selector(selector)) : page.should(have_selector(selector))
end

Then(/^I see the "(.*)" links?$/) do |text|
  page.should have_selector(:link, text: text)
end

Then(/^I see the homepage/) do
  current_path.should == root_path
end

Then(/^I see the "(.*)" notice$/) do |msg|
  page.should have_selector('div.flash div.notice', text: msg)
end

Then(/^I see the (.*) page/) do |c|
  page.should have_selector('div.'+c+'-page')
end
