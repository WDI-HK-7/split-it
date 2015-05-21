Rails.application.routes.draw do
  #this just means dont use default controllers, use the new ones that i have written to override
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  #homepage
  root 'static_pages#index'

  #CRUD for expenses & transactions
  resources :expenses, :only => [:create, :index, :destroy, :update] do
    resources :transactions, :only => [:create, :index, :destroy, :update] 
  end


end
