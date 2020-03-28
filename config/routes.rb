Rails.application.routes.draw do
  namespace :api do
    namespace :v1 , default: { format: 'json' } do
      resources :ingredients
    end
  end
  namespace :api do
    namespace :v1 , default: { format: 'json' } do
      resources :recipes
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
