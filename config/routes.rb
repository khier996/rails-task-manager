Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Show all tasks
  get "/tasks", to: "tasks#index"



  #Create a new task
  get "/tasks/new", to: "tasks#new"
  post "/tasks", to: "tasks#create"


  #Update
  get "/tasks/:id/edit", to: "tasks#edit", as: :task_edit

  #Show one task
  get "/tasks/:id", to: "tasks#show", as: :task
  patch "/tasks/:id", to: "tasks#update"

  #Destroy
  delete "/tasks/:id", to: "tasks#destroy", as: :task_destroy


end
