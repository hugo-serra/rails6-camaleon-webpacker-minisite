Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :homepage, :services, :candidates
  resources :contact_us, only: [:index]
  post 'contact_us', to: 'contact_us#send_email'
  root 'homepage#index'
end
