Bloccit::Application.routes.draw do

  devise_for :users
<<<<<<< HEAD
  resources :users
    
=======
  resources :users, only: [:update]
  
>>>>>>> checkpoint-40-topics-and-posts
  resources :topics do
    resources :posts, except: [:index] do
      resources :comments, only: [:create, :destroy]
    end
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end