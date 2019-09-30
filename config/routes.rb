Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :playbooks, only: [:index]
  resources :hunter_moves, only: [:index], defaults: {format: :json}
end
