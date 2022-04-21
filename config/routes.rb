Rails.application.routes.draw do
  resources :surveys
  root 'surveys#new'
  get '/complete', to: 'surveys#complete'
end
