Rails.application.routes.draw do
  get 'posts/edit'

  get 'posts/new'

  get 'posts/show'

  get 'posts/index'

  get 'posts/new'
  get 'posts/show'
  resources :posts
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
