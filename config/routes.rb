Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#show", as: :task
  post "tasks", to: "tasks#create", as: :new_task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"
  # Defines the root path route ("/")
  # root "articles#index"
end
