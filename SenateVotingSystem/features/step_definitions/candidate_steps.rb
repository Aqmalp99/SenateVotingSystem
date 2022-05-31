Given(/^The following candidates are in the database:$/) do |table|
  # table is a table.hashes.keys # => [:title, :rating, :director, :release_date, :description]
  table.hashes.each do |c|
    Candidate.create(c)
  end
end

Given(/^I am on the add candidate page$/) do
  visit add_candidates_path
end

When(/^I fill in the "([^"]*)" field with (.*)$/) do |field, value|
  fill_in field.to_s, with: value.to_s
end

When(/^I click "([^"]*)"$/) do |button_name|
  click_button button_name.to_s
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content(content.to_s)
end