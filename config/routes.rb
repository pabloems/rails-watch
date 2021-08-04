Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #ESTABLECER LISTAS COMO INDEX
  root to: "lists#index"

  resources :list ["index", "view", "new", "create"] do
    overview: movie["overview"],
    
  end
end
