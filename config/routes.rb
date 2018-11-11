Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :clubs, except: [:show]
  get '/:id', to: 'clubs#show', as: 'club_show'

  root to:'pages#home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
