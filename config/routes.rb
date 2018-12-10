Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  devise_for :club_users, path: 'club_user'
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
