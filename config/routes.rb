Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      post "/match", to: "users#match"
      get "/match", to: "users#match"

      post "/toggle", to: "users#toggle"
      get "/toggle", to: "users#toggle"

      post "/logout", to: "users#logout"
      get "/logout", to: "users#logout"
    end
  end
end
