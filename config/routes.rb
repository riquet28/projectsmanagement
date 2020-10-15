Rails.application.routes.draw do

  resources :tickets do
    member do
      patch :move
    end
  end

  resources :scenarios do
    resources :results
  end

end
