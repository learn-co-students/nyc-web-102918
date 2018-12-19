Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :parties do
        resources :kids
      end
    end
  end
end
