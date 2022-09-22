Rails.application.routes.draw do
  get '/', to: "welcome#index"

  #maybe redirect later to different controller action
  get '/auth/google_oauth2/callback', to: 'users#create'

  get '/thrones/:id/reviews/new', to: 'reviews#new'

  get '/thrones/:id/reviews', to: 'reviews#show'

  post '/thrones', to: 'thrones#create'

  post '/thrones/:id/reviews', to: 'reviews#create'

  resources :thrones, only: [:new, :show, :index]

  delete 'logout', to: 'users#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
