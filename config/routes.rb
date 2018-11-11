Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :clubs, except: [:show] do 
  	member do 
  		get :toggle_active_status
  	end
  end
  get '/:id', to: 'clubs#show', as: 'club_show'

  root to:'pages#home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
