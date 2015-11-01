Bloccit::Application.routes.draw do
  
  resources :question

  resources :posts

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end