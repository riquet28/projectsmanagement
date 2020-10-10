Rails.application.routes.draw do

  resources :tickets do
    member do
      patch :move
    end
  end

end
