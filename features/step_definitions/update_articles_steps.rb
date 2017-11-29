Given("The following article exist") do |table|
  table.hashes.each do |article|
    Article.create(article)
  end
end

When("I visit {string} page") do |article_title|
  article = Article.find_by(title: article_title)
  visit "/articles/#{article.id}"
end

When("I click on {string} link") do |link|
  click_link link
end
