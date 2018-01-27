Rails.application.routes.draw do

  # 最初に飛ばされるところ
  root to: 'toppages#index'
  
  # ログイン用のルーティング
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # ユーザ登録用のルーティング
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :tasks
end
