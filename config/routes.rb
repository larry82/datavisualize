Rails.application.routes.draw do
  root 'welcome#index'
  resources :welcome
  resources :projects do
    collection do 
      get 'project2'
    end
  end
end
