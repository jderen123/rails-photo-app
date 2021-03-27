Rails.application.routes.draw do
  resources :images
  devise_for :users, :controllers => { :registrations => "registrations" }
  root 'welcome#index'
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
