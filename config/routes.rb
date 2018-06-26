Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "questions#index"
  resources :questions, only: :index
  post "/questions/search" => "questions#search", as: "questions_search"
end
