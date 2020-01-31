Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callbacks =>  "users/omniauth_callbacks"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "items#index"
  get   'users/:id'   =>  'users#show'
  get   'items/new'   =>  'items#new' 
  get 'items/:id/check', to: 'items#check', as: :logout 
  delete 'items/:id', to: 'items#destroy', as: :destroy

  resources :items do
    collection do
      get  'purchase/:id'=>  'items#purchase', as: 'purchase'
      post 'pay/:id'=>   'items#pay', as: 'pay'#httpメソッドはpostなので注意
      get  'done/:id'=>      'items#done'
      get 'get_category_children'
      get 'get_category_grandchildren'
      get 'get_brand'
    end
end
  
  resources :users, only: [:edit, :update]

  resources :mypages do
    collection do
      get 'card'
      get 'identification'
      get 'logout'
    end
  end

  resources :signup do
    collection do
      get 'step1'
      get 'step2'
      get 'step3'
      get 'step4'
      get 'done'
    end
  end

  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end

  resources :searches,only:[:index] do
    collection do
      get 'detail_search'
    end
  end
  
end