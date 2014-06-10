Rails.application.routes.draw do
  root 'static_pages#index'

  post   '/add',     to: 'static_pages#add'
  delete '/destroy/:id', to: 'static_pages#destroy'
  delete '/clear',      to: 'static_pages#clear'
end
