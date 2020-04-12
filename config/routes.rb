Rails.application.routes.draw do

  get 'registrations/create'
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
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
