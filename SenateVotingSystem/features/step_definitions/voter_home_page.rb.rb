Given(/^I am on the voter homepage for user "([^"]*)"$/) do |userID|
  visit "/voter?userID=#{userID}&commit=Login"
  #pending
end

Then(/^I should see "([^"]*)" information box$/) do |text|
  expect(page).to have_content(text)
  #pending
end

Then(/^I should see a "([^"]*)" button$/) do |vote_now_button|
  click_button vote_now_button
  #pending
end

Then(/^I should be taken to voting ballot page$/) do
  visit "/voter/ballot-page"
  #pending
end

