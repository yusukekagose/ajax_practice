Rails.application.routes.draw do


  resources :contacts, except: [:show]
  root 'contacts#index'

end
