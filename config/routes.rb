NinetyNineCats::Application.routes.draw do
  resources :cats, only: [ :index, :show, :new, :create, :edit, :update, :destroy]

  resources :cat_rental_requests, only: [ :new, :create]
    root to: 'cats#index'

   patch 'cat_rental_requests/:id/deny', :to => 'cat_rental_requests#deny', as: 'cat_rental_deny'
   patch 'cat_rental_requests/:id/approve', :to => 'cat_rental_requests#approve', as: 'cat_rental_approve'


end
