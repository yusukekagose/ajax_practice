Rails.application.routes.draw do

  get 'home/index'

  get 'dashboard/index'

  devise_for :users
  resources :contacts, except: [:show] do
      get 'autocomplete', on: :collection
  end

  post '/groups', to: 'groups#create'

  get '/dashboard', to: 'dashboard#index'
  root 'contacts#index'

end
