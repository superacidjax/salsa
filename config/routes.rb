Salsa::Application.routes.draw do

  resources :products


  get "pages/home"

  get "pages/about"

  match '/ui(/:action)', controller: 'ui'

  root :to => 'pages#home'

end
