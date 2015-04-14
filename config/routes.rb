NinetyNineCats::Application.routes.draw do
  resources :cats, only: [ :index, :show, :new, :create, :edit, :update, :destroy]

    root to: 'cats#index'

end
