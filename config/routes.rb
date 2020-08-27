Rails.application.routes.draw do

  root "home#how"
  get 'master/index' => "master#index"
  get 'shift/:id/register' => "shift#register"
  get "shift/:id/check" => "shift#check"
  get 'home/how' => "home#how"
  get "home/contact" => "home#contact"
  get "/" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get 'users/index' => "users#index"
  #get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  post "shift/:id/update" => "shift#update"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
