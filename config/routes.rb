Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'lists', to: 'lists#index', as: :index
  # get 'lists/new', to: 'list#create', as: 'new_list'
  # get 'list/:id', to: 'lists#list', as: :list

  resources :lists do
    resources :bookmarks, only: [ :new, :create ]
  end

  resources :bookmarks, only: [ :destroy, :edit, :update ]


end
