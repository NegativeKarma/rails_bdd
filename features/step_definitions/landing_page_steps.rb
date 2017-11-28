When(/^I am on the landing page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given("the following articles exists") do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end

Given("I visit the landing page") do
  visit root_path
end

When("I click {string} link") do |link_or_button|
  click_link_or_button link_or_button
end

When("I fill in {string} with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click {string} button") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
