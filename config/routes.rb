Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get '/functionnal_tests', to: 'functionnal_tests#index', as: 'test'


end
