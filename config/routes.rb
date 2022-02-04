Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root is a get '/'
  root "static#home"
  # get '/', to:"static#home"
  resources :cars
  # resources :subs
  #(C)
  # get "/subs/new", to: "subs#new"
  # post "/subs", to: "subs#create"
  # #(R)
  # get "/subs", to: "subs#index"
  # # because :id is a wildcard it needs to come after any direct paths like /subs/new
  # get "/subs/:id", to: "subs#show"
  # # (U)
  # get "/subs/:id/edit", to: "subs#edit"
  # put "/subs/:id", to: "subs#update"
  # patch "/subs/:id", to: "subs#update"
  # # (D)
  # delete "/subs/:id", to: "subs#destroy"


# creates subs routes and nested topics routes
  resources :subs do 
    resources :topics
  end


  resources :topics do 
    resources :comments
  end

  get "react/demo", to: "subs#react_demo"
  # get CRUD for topics
  # get all topics
  # get '/subs/:sub_id/topic', to: 'topics#index'
end
