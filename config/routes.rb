Rails.application.routes.draw do

  root "home#index"
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
    resources :sub_paragraphs
    member do
      patch :move #Drag js
    end
  end

end
