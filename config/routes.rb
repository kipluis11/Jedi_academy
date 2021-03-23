Rails.application.routes.draw do
  devise_for :users
  #this will be the index
  root 'pages#masters'
  get 'pages/about'
  get 'pages/masters'
  get 'pages/padawans'
  get 'pages/power_training'
  get 'pages/fighting_styles'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
