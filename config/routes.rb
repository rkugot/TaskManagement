Rails.application.routes.draw do
  root "tasks#index"
  resources :tasks do
    collection { post :sort}
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
