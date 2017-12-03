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

Given("I click {string}") do |link|
  click_link link
end

When("I click {string} link") do |link|
  click_link link
end

When("I fill in {string} with {string}") do |field_name, content|
  fill_in field_name, with: content
end

When("I click {string} button") do |button|
  click_button button
end

Then("I should be on {string} page") do |article_title|
  article = Article.find_by(title: article_title)
  expect(page.current_path).to eq "/articles/#{article.id}"
end

When("I fill in {string} as {string}") do |reader, email|
  fill_in reader, with: email
end
