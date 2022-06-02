Given(/^The following candidates are in the database:$/) do |table|
  # table is a table.hashes.keys # => [:title, :rating, :director, :release_date, :description]
  table.hashes.each do |c|
    Candidate.create(c)
  end
end

Given(/^I am on the "([^"]*)" "([^"]*)" page$/) do |controller, page|
  visit "/#{controller}/#{page}"
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

When(/^I find and select "([^"]*)"$/) do |element|
  find('i', text: "#{element}").click
end

Then(/^I should be on the "([^"]*)" "([^"]*)" page$/) do |controller, page|
  expect(URI.parse(current_url).path).to eq("/#{controller}/#{page}")
end