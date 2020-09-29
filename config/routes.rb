Rails.application.routes.draw do

  get "users/all" => "users#all"
  get "/" => "users#login_form"
  get "signup" => "users#new"
  get 'master/index' => "master#index"


  get 'shift/:id/register' => "shift#register"
  get "shift/:id/check" => "shift#check"

  get "shift/:id/winter2020s/register" => "shift#winter2020s_register"
  get "shift/:id/winter2020s/check" => "shift#winter2020s_check"

  get "shift/:id/second2020s" => "shift#second2020s"
  get "shift/:id/winter2020s" => "shift#winter2020s"




  get 'home/how' => "home#how"
  get "home/contact" => "home#contact"
  get "home/:id/change" => "home#change"
  get "home/:id/shift" => "home#shift"


  #get "users/:id/edit" => "users#edit"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  get "users/:id/edit_name" => "users#edit_name"
  get "users/:id/edit_password" => "users#edit_password"
  get "users/:id/superedit" => "users#superedit"

  post "login" => "users#login"
  post "logout" => "users#logout"
  post "users/register" => "users#register"
  post "users/:id/update_name" => "users#update_name"
  post "users/:id/update_password" => "users#update_password"
  post "shift/:id/update" => "shift#update"
  post "users/:id/destroy" => "users#destroy"
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
