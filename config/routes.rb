ContactsApp::Application.routes.draw do
  resources :users do
    resources :contacts, only: [:index, :create]
  end

  resources :contacts, only: [:show, :destroy, :update]
end
