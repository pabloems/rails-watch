Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #ESTABLECER LISTAS COMO INDEX
  root to: "lists#index"

  resources :list, only: ["index", "view", "new", "create"] do
    resources :bookmarks, only: ["new", "create"],
  end
  resources :bookmarks, only: ["destroy"]
end
