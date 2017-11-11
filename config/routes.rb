Rails.application.routes.draw do


  resources :contacts, except: [:show] do
      get 'autocomplete', on: :collection
  end

  post '/groups', to: 'groups#create'
  root 'contacts#index'

end
