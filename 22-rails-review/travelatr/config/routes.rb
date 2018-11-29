Rails.application.routes.draw do
  resources :posts
  resources :bloggers

  patch '/posts/:id/likes', to: 'posts#likes', as: 'likes'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
