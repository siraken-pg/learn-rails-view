Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Static pages
  get "/pages/haml/" => "static_pages#haml_index"
  get "/pages/haml/example" => "static_pages#haml_example"
  get "/pages/slim/" => "static_pages#slim_index"
  get "/pages/slim/example" => "static_pages#slim_example"

  # Defines the root path route ("/")
  root "posts#index"

  get "/posts" => "posts#index", as: :posts
  get "/posts/new" => "posts#new", as: :new_post
  post "/posts" => "posts#create"
  get "/posts/:id" => "posts#show", as: :post
end
