When(/^I am on the (.*) page/) do |url|
  visit url
end

When(/^I follow the "(.*)" link$/) do |text|
  click_link text
end

Then(/^I see the (.*) form$/) do |c|
  page.should have_selector('form.'+c)
end

Then(/^I see the "(.*)" links?$/) do |text|
  page.should have_selector(:link, text: text)
end

Then(/^I see the (.*) page/) do |c|
  page.should have_selector('div.'+c+'-page')
end

