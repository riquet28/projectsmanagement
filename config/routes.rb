Rails.application.routes.draw do

  patch :update_comment, to: 'tickets#update_comment'

  resources :tickets do
    member do
      patch :move #Drag js
    end
  end

  resources :scenarios do
    resources :results
  end

  resources :paragraphs do
    member do
      patch :move #Drag js
    end
  end

end
