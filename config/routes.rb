Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "calculations#show"

  resources :calculations
  post '/' => 'calculations#show_answer'

end
