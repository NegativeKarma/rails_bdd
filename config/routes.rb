Rails.application.routes.draw do
  get 'new_article/new'

  get 'landing/index'

  root controller: :landing, action: :index
end
