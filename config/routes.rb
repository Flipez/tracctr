Rails.application.routes.draw do
  root 'welcome#index'

  resource :users

  get '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/profile' => 'profile#show'
  
  get '/accounts' => 'accounts#index'
  get '/accounts/:id' => 'accounts#show'
  post '/accounts' => 'accounts#create'

  post '/bills/:id' => 'bills#update'

  post '/wallets' => 'wallets#create'
end
