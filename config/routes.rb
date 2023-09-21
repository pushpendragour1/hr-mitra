Rails.application.routes.draw do
  root 'home#index'
  get 'about' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
  get 'privacy_policy' => 'pages#privacy_policy'
  get 'terms_and_conditions' => 'pages#terms_and_conditions'
end
