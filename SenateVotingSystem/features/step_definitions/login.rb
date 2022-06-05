Given(/^I am on the login page$/) do
  visit root_path
  #pending
end

And(/^The following voters are in the database:$/) do |users_table|
  users_table.hashes.each do |user|
    User.create(user)
  end
  #pending
end

When(/^I click "([^"]*)" button$/) do |user_button|
  click_button user_button
  #pending
end

Then(/^I should be taken to voter login page$/) do
  visit "/login/voter_login"
  #pending
end

When(/^I am on the voter login page$/) do
  visit "/login/voter_login"
  #pending
end

And(/^In the "([^"]*)" field, I type in "([^"]*)"$/) do |uID_field, userID|
  fill_in uID_field, with: userID
  #pending
end

And(/^I am taken to voter homepage for user "([^"]*)"$/) do |userID|
  visit "/voter?userID=#{userID}&commit=Login"
  #pending
end

Then(/^I should see "([^"]*)" button$/) do |vote_now_button|
  click_button vote_now_button
  #pending
end

Then(/^I should see "([^"]*)" text$/) do |text|
  expect(page).to have_content(text)
  #pending
end

Then(/^I should be taken to electoral commissioner homepage$/) do
  visit "/admin/voting-results"
  #pending
end