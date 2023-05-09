Rails.application.routes.draw do
  get 'memos/show'
  resources :memos, only: [:show, :create, :destroy]
  root to: 'memos#show'
end
