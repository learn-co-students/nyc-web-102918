Rails.application.routes.draw do
  # localhost:3000/api/v1/login
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create] # sign up
      post '/login', to: 'auth#create' # sign in
      get '/profile', to: 'users#profile' # profile!
    end
  end
end
