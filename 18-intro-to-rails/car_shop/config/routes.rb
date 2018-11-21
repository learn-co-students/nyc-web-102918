Rails.application.routes.draw do

  # http_verb "URI", to: "controller#action"

  get "/cars", to: "cars#index", as: "cars"
  get "/cars/new", to: "cars#new"
  get "/cars/:id", to: "cars#show", as: "car"
  post "/cars", to: "cars#create"
  # post "/cars"
end
