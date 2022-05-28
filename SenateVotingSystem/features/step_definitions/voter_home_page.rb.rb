Given(/^I am on the voter home page$/) do
  visit "/voter"
  #pending
end

Then(/^I should see "([^"]*)" text$/) do |welcome_text|
  expect(page).to have_content(welcome_text)
  #pending
end

Then(/^I should see "([^"]*)" information box$/) do |info_box|
  page.find_by_id(info_box).tag_name
  #pending
end

Then(/^I should see a "([^"]*)" button$/) do |vote_now_button|
  click_button vote_now_button
  #pending
end

Then(/^I should be taken to voting ballot page$/) do
  visit "/voter/ballot_page"
  #pending
end