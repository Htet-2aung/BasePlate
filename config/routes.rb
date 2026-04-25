Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :projects do
    resources :tasks
  end
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  
  # MAKE SURE IT SAYS PROJECTS HERE, NOT POSTS
  root "projects#index"
end