Given(/^I am on the voter home page$/) do
  visit "/voter"
  #pending
end

Then(/^I should see "([^"]*)" information box$/) do |info_box|
  expect(page).to have_content(info_box)
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