Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }
root 'home#index'

  resources :employees  
  resources :documents
  get 'about' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
  get 'privacy_policy' => 'pages#privacy_policy'
  get 'terms_and_conditions' => 'pages#terms_and_conditions'
end

