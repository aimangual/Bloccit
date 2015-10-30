Bloccit::Application.routes.draw do
  
  resources :advertisments

  resources :posts

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end