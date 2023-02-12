Rails.application.routes.draw do
  root "chats#index"
  resources :chats, only: [:index, :show, :new, :create] do 
    resources :messages, only: [:create]
  end
end
