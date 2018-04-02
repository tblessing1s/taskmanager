Rails.application.routes.draw do
  resources :employees
  resources :tasks do
    resources :comments
  end
end
