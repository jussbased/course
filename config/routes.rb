Rails.application.routes.draw do
  root to: 'notes#index'

get '/sign-in' => "devise/sessions#new", :as => :login
devise_for :users
get '/users' => 'users#users'
get 'users/edit_multiple' => 'users#edit_multiple'
resources :notes
get 'notes/new' => "notes#new" 
resources :notes do
  resources :comments
end

end