Given(/^I am on the login page$/) do
  visit root_path
  #pending
end

When(/^I click "([^"]*)" button$/) do |user_button|
  click_button user_button
  #pending
end

Then(/^I should be taken to voter homepage$/) do
  visit "/voter"
  #pending
end

Then(/^I should be taken to election commissioner homepage$/) do
  visit "/admin/voting-results"
  #pending
end