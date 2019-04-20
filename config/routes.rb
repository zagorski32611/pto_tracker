Rails.application.routes.draw do
  root to: 'home#index'
  resources :pto
 
  devise_for :employees, controllers: {
    sessions: 'employees/sessions'
  }
  resources :employees
end
