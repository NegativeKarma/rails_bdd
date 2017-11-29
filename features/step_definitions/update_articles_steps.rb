Given("The following article exist") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

When("I visit {string} page") do |title|
  article = Article.find_by(title: title)
  visit "articles/#{article.id}"
end

When("I click on {string} link") do |link|
  click_link link
end
