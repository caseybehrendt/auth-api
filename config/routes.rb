Rails.application.routes.draw do
  resources :employees, :departments
  post "/sessions" => "sessions#create"
end
