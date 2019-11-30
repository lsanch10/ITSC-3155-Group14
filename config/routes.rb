Rails.application.routes.draw do
  get 'welcome/index'
  resources :clients  do
    resources :bills
  end
  
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# <%= link_to 'New Bill', new_client_bill_path(@client) %><br>