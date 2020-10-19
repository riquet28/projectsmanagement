Rails.application.routes.draw do

  patch :update_comment, to: 'tickets#update_comment'

  resources :tickets do
    member do
      patch :move
    end
  end

  resources :scenarios do
    resources :results
  end

end
