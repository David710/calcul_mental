Rails.application.routes.draw do

  root "calculations#welcome"

  get '/calculations/show' => 'calculations#show'
  post '/calculations/show' => 'calculations#show_answer'

end
