Rails.application.routes.draw do

  resources :functionnal_tests do
    member do
      patch :move
    end
  end

end
