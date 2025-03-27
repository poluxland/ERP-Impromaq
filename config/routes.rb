Rails.application.routes.draw do
  resources :codigo_statuses
  resources :codigos
  resources :reports
  resources :servicios
  resources :soplados
  resources :units
  resources :overtimes
  resources :mantencions
  resources :trucks
  resources :interventions
  resources :vtslimpiezas
  resources :permisos
  resources :personals
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'dup', to: 'gastos#dup'
  resources :medidas
  resources :barcos
  resources :checklists
  get 'recent', to: 'checklists#recent'
  resources :envasadoras
  resources :requerimientos
  resources :entregas
  resources :equipos
  get 'recenteq', to: 'equipos#recenteq'
  get 'observaciones', to: 'equipos#observaciones'
  get 'brr17check', to: 'equipos#brr17check'
  get 'brr20check', to: 'equipos#brr20check'
  get 'ol03check', to: 'equipos#ol03check'
  get 'hqpta31check', to: 'equipos#hqpta31check'
  get 'hqpta32check', to: 'equipos#hqpta32check'
  get 'hqpta33check', to: 'equipos#hqpta33check'
  get 'ex01check', to: 'equipos#ex01check'
  get 'ol01check', to: 'equipos#ol01check'
  get 'ol02check', to: 'equipos#ol02check'
  get 'ol06check', to: 'equipos#ol06check'
  get 'ol09check', to: 'equipos#ol09check'
  get 'ol11check', to: 'equipos#ol11check'
  get 'brr19check', to: 'equipos#brr19check'
  get 'ok03check', to: 'equipos#ok03check'
  get 'ok05check', to: 'equipos#ok05check'
  get 'ok04check', to: 'equipos#ok04check'
  get 'hq13check', to: 'equipos#hq13check'
  get 'hq12check', to: 'equipos#hq12check'
  get 'hq11check', to: 'equipos#hq12check'
  get 'hq11check', to: 'equipos#hq11check'
  get 'hq10check', to: 'equipos#hq10check'
  get 'hq03check', to: 'equipos#hq03check'
  get 'hq01check', to: 'equipos#hq01check'
  get 'hq21check', to: 'equipos#hq21check'
  get 'hq22check', to: 'equipos#hq22check'


  get 'lcacheck', to: 'equipos#lcacheck'
  get 'vtscheck', to: 'equipos#vtscheck'
  get 'ptmcheck', to: 'equipos#ptmcheck'
  get 'parcheck', to: 'equipos#parcheck'

  resources :gastos do
    collection { post :import }
  end

  get 'gastosfull', to: 'gastos#gastosfull'
  get 'gastoslca', to: 'gastos#gastoslca'
  get 'gastoslcapend', to: 'gastos#gastoslcapend'
  get 'gastoslcapagado', to: 'gastos#gastoslcapagado'
  get 'gastosvts', to: 'gastos#gastosvts'
  get 'gastosvtspend', to: 'gastos#gastosvtspend'
  get 'gastosvtspagado', to: 'gastos#gastosvtspagado'
  get 'gastosptm', to: 'gastos#gastosptm'
  get 'gastosptmpend', to: 'gastos#gastosptmpend'
  get 'gastosptmpagado', to: 'gastos#gastosptmpagado'
  get 'gastospuq', to: 'gastos#gastospuq'
  get 'gastospuqpend', to: 'gastos#gastospuqpend'
  get 'gastospuqpagado', to: 'gastos#gastospuqpagado'
  get 'gastoslcarend', to: 'gastos#gastoslcarend'
  get 'gastosvtsrend', to: 'gastos#gastosvtsrend'
  get 'gastosptmrend', to: 'gastos#gastosptmrend'
  get 'gastosvtsmes', to: 'gastos#gastosvtsmes'
  get 'gastosvtsmes1m', to: 'gastos#gastosvtsmes1m'
  get 'gastosvtsmes2m', to: 'gastos#gastosvtsmes2m'
  get 'gastosvtsmes3m', to: 'gastos#gastosvtsmes3m'
  get 'gastoslcames', to: 'gastos#gastoslcames'
  get 'gastoslcames1m', to: 'gastos#gastoslcames1m'
  get 'gastoslcames2m', to: 'gastos#gastoslcames2m'
  get 'gastoslcames3m', to: 'gastos#gastoslcames3m'
  get 'gastosptmmes', to: 'gastos#gastosptmmes'
  get 'gastosptmmes1m', to: 'gastos#gastosptmmes1m'
  get 'gastosptmmes2m', to: 'gastos#gastosptmmes2m'
  get 'gastosptmmes3m', to: 'gastos#gastosptmmes3m'
  get 'gastospuqmes', to: 'gastos#gastospuqmes'
  get 'gastospuqmes1m', to: 'gastos#gastospuqmes1m'
  get 'gastospuqmes2m', to: 'gastos#gastospuqmes2m'
  get 'gastospuqmes3m', to: 'gastos#gastospuqmes3m'
  get 'gastosunasigned', to: 'gastos#gastosunasigned'
  get 'gastosduplicados', to: 'gastos#gastosduplicados'

  resources :horas
  get 'mec', to: 'horas#mec'
  get 'serv', to: 'horas#serv'
  get 'ultimas', to: 'ultimas#serv'
  get 'indexserv', to: 'horas#indexserv'
  get 'indexmant', to: 'horas#indexmant'

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
  get 'lcaventames', to: 'trabajos#lcaventames'
  get 'vtsventames', to: 'trabajos#vtsventames'
  get 'ptmventames', to: 'trabajos#ptmventames'
  get 'parventames', to: 'trabajos#parventames'
  get 'lcaventames1m', to: 'trabajos#lcaventames1m'
  get 'vtsventames1m', to: 'trabajos#vtsventames1m'
  get 'ptmventames1m', to: 'trabajos#ptmventames1m'
  get 'parventames1m', to: 'trabajos#parventames1m'
  get 'lcaventames2m', to: 'trabajos#lcaventames2m'
  get 'vtsventames2m', to: 'trabajos#vtsventames2m'
  get 'ptmventames2m', to: 'trabajos#ptmventames2m'
  get 'parventames2m', to: 'trabajos#parventames2m'
  get 'lcaventames3m', to: 'trabajos#lcaventames3m'
  get 'vtsventames3m', to: 'trabajos#vtsventames3m'
  get 'ptmventames3m', to: 'trabajos#ptmventames3m'
  get 'parventames3m', to: 'trabajos#parventames3m'
  get 'indexfact', to: 'trabajos#indexfact'
  get 'lcafact', to: 'trabajos#lcafact'
  get 'vtsfact', to: 'trabajos#vtsfact'
  get 'ptmfact', to: 'trabajos#ptmfact'
  get 'parfact', to: 'trabajos#parfact'
  devise_for :users
  get 'estadoequipos', to: 'pages#estadoequipos'
  get 'reporte', to: 'pages#reporte'
  root to: 'pages#home'



  # get '*path' => redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
