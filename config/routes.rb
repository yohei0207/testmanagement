Rails.application.routes.draw do

  get "users/all" => "users#all"
  get "/" => "users#login_form"
  get "signup" => "users#new"
  get 'master/index' => "master#index"
  get 'shift/:id/register' => "shift#register"
  get "shift/:id/check" => "shift#check"
  get 'home/how' => "home#how"
  get "home/contact" => "home#contact"
  post "login" => "users#login"
  post "logout" => "users#logout"
  post "users/register" => "users#register"
  get 'users/index' => "users#index"
  #get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  post "shift/:id/update" => "shift#update"
  post "users/:id/destroy" => "users#destroy"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  get "users/:id/superedit" => "users#superedit"
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
