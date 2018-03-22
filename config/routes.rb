Rails.application.routes.draw do
  get 'sessions/new'

  get 'welcome/index'

  resources :articles
  resources :projects
  resources :communities

  root 'welcome#index'

  resources :articles do
    resources :comments
  end

  resources :communities do
    resources :community_neighbors
    resources :community_coordinators
  end

  resources :communities do
    resource :work_table
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
