Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "items#index"
  get   'users/:id'   =>  'users#show'
  get   'items/new'   =>  'items#new'
  get 'items/:id'=> 'items#detail'
  get 'items/1/check'=> 'items#check'

  resource :items do
end
  

  resources :mypages do
    collection do
      get 'card'
      get 'identification'
      get 'logout'
      get 'profile'
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
end
