Rails.application.routes.draw do
  get 'projects', to: 'project#index'

  post 'projects', to: 'project#new'

  get 'projects/:id', to: 'project#view', as: 'project'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
