Rails.application.routes.draw do
  resources :gastos
  namespace :admin do
    resources :users
    resources :horas
    resources :trabajos

    root to: "users#index"
  end

  resources :horas
  get 'mec', to: 'horas#mec'
  get 'serv', to: 'horas#serv'
  resources :trabajos
  devise_for :users
  root to: 'pages#home'

  #get '*path' => redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
