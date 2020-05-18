Rails.application.routes.draw do
  resources :entregas
  resources :equipos
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
  get 'lca', to: 'trabajos#lca'
  get 'vts', to: 'trabajos#vts'
  get 'ptm', to: 'trabajos#ptm'
  get 'par', to: 'trabajos#par'
  
  get 'indexejec', to: 'trabajos#indexejec'
  get 'lcaejec', to: 'trabajos#lcaejec'
  get 'vtsejec', to: 'trabajos#vtsejec'
  get 'ptmejec', to: 'trabajos#ptmejec'
  get 'parejec', to: 'trabajos#parejec'

  get 'indexop', to: 'trabajos#indexop'
  get 'lcaop', to: 'trabajos#lcaop'
  get 'vtsop', to: 'trabajos#vtsop'
  get 'ptmop', to: 'trabajos#ptmop'
  get 'parop', to: 'trabajos#parop'

  get 'indexfact', to: 'trabajos#indexfact'
  get 'lcafact', to: 'trabajos#lcafact'
  get 'vtsfact', to: 'trabajos#vtsfact'
  get 'ptmfact', to: 'trabajos#ptmfact'
  get 'parfact', to: 'trabajos#parfact'
  devise_for :users
  root to: 'pages#home'

  #get '*path' => redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
