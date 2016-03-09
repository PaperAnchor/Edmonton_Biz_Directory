Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "sign_in" => "devise/sessions#new"
  end


  resources :businesses do
    collection do
      get 'search'
    end
  end

  resources :categories
  resources :contacts, only: [:new, :create]

  get ':id', to: 'categories#show', as: :id

  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
