Rails.application.routes.draw do
  
  resources :cat02s
  resources :cat01s
  resources :articles do
    resources :comments, only: [:create, :destroy, :update, :show]
  end


  devise_for :views
  devise_for :users
  
=begin
    get "/articles" index
    post "/articles" create
    delete "/articles" delete
    get "/articles/:id" show
    get "/articles/new" new
    get "/articles/:id/edit" edit
    path "/articles/:id" update
    put "/articles/:id" update
=end
  

  get "especial", to: "welcome#index"

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
