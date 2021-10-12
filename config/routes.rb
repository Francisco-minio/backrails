Rails.application.routes.draw do
  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy
  resources :cursos
  resources :asignaturas
  resources :profesors
  resources :usuarios
  resources :establecimientos

  resources :artists
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
