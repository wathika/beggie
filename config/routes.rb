Rails.application.routes.draw do
  get 'message/create'

  get 'projects', to: 'project#index'

  post 'projects', to: 'project#new'

  get 'projects/:id', to: 'project#view', as: 'project'

  get 'projects/:id/chat', to: 'project#chat', as: 'project_chat'

  #chat
  post 'messages', to: 'message#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
