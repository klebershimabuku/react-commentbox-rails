Rails.application.routes.draw do
  root 'comments#index'
  resources :comments, defaults: { format: :json }
end
