Rails.application.routes.draw do
 
  get 'hello_world', to: 'hello_world#index'
  resources :clientes do
  	resources :criancas
  	resources :telefones
  	resources :emails
 	get :search, :action => 'search', :as => 'search'
  end
 
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
