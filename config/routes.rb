Rails.application.routes.draw do
#list all tasks
get 'tasks', to: 'tasks#index', as: :tasks
#create new task 1.get the form
get "tasks/new", to: "tasks#new", as: :taskNew
#create new task 2.post the form
post "tasks", to: "tasks#create"
#update task 1. get the form
get "tasks/:id/edit", to: "tasks#edit", as: :taskEdit
#udpate task 2. post the form
patch "tasks/:id", to: "tasks#update"
#delete a task
delete "tasks/:id", to: "tasks#destroy"
#show specific task
get "tasks/:id", to: "tasks#show", as: :task
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
