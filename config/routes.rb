Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"


  # my comment
  # get 'articles', action: :index, controller: 'articles'
  # equivalent to below
  #    Path             Controller#Action
  # get "/articles", to: "articles#index"


  # get "/articles/:id", to: "articles#show"


  resources :articles do
    resources :comments
  end

end
