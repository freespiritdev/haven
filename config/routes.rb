Rails.application.routes.draw do

  resources :reviewtunes

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :movies do
    collection do
      get 'search'
    end
    resources :reviews, except: [:index]
  end

  resources :shows do
    collection do
      get 'search'
    end
    resources :reviewtvs, except: [:index]
  end

  resources :tunes do
    resources :reviewtunes, except: [:index]
  end
    
     get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
