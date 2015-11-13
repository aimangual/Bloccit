Bloccit::Application.routes.draw do

  devise_for :users
  resources :users
    
  resources :users, only: [:update]
  
  resources :topics do
    resources :posts, except: [:index] do
      resources :comments, only: [:create, :destroy]
    end
  end

  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'
  
  root to: 'welcome#index'
end