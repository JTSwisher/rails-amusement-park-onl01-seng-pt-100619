Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
   get '/signin' => 'sessions#new'
   post '/signin' => 'sessions#create'
   delete '/signout' => 'sessions#destroy'

   resources :users
   resources :attractions
   resources :rides, only: [:new, :create]
end
